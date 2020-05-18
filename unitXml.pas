unit unitXml;

interface

uses
  Vcl.ComCtrls, Xml.XMLIntf, Xml.XMLDoc, Generics.Collections, zplUtils, Classes;

type
  TXMLToView = class
  private
    class function getAttr(node: IXMLNode; const name: string): string;
  protected
//    class procedure DOM2Tree(node: IXMLNode; tv: TTreeView; tn: TTreeNode);
  public
//    class procedure xmlToListView(lv: TListView; const filename: string);
//    class procedure xmlToTreeView(lv: TTreeView; const filename: string);
  public
    class procedure xmlSaveLabelSettings(lbl: TZPLLabelSettings; const filename: string);
    class function xmlZPLLabelsToObjectList(const filename: string): TObjectList<TZPLLabelSettings>;
    class function xmlZPLCommandsToObjectList(const filename: string): TObjectList<TZPLCommand>;
    class procedure xmlSaveLabel(lbl: TZPLLabel; const filename: string);
    class function xmlExtractZPL(const filename: string): TZPLLabelValues;
  end;

implementation

uses
  SysUtils, Xml.XMLDom, Variants, u_pro_strings, Forms;

{ TXMLToListView }

class function TXMLToView.getAttr(node: IXMLNode; const name: string): string;
var
  o: IXMLNode;
begin
  Result := '';
  o := node.AttributeNodes.FindNode(name);
  if (o <> nil) then
  begin
    try
      if not VarIsNull(o.NodeValue) then
        Result := o.NodeValue;
    except
      on E:Exception do
        Result := Format('ERROR on Node(%s).[%s]',[node.NodeName, name]);
    end;
  end;
end;

//procedure TXMLToView.xmlToListView(lv: TListView; const filename: string);
//var
//  cmd: TZPLCommand;
//  params: TZPLCommandParameter;
//  root, node, p, q, z, w: IXMLNode;
//  doc: IXMLDocument;
//  i,j,m: Integer;
//  item: TListItem;
//begin
//  doc := TXMLDocument.Create(filename);
//  lv.Items.BeginUpdate;
//  try
//    lv.Items.Clear;
//    root := doc.DocumentElement;
//    if root.NodeType = ntElement then
//    begin
//      if root.HasChildNodes then
//      begin
//        for i := 0 to root.ChildNodes.Count-1 do
//        begin
//          node := root.ChildNodes[i];
//          if node.NodeType = ntElement then
//          begin
//            if node.NodeName.ToLower = 'zplcommand' then
//            begin
//              cmd := TZPLCommand.Create;
//              cmd.name := node.ChildNodes.Nodes['Name'].NodeValue;
//              cmd.category := node.ChildNodes.Nodes['Category'].NodeValue;
//              cmd.shortDesc := node.ChildNodes.Nodes['ShortDesc'].NodeValue;
//              cmd.longDesc := node.ChildNodes.Nodes['LongDesc'].NodeValue;
//              cmd.usage := node.ChildNodes.Nodes['Usage'].NodeValue;
//              cmd.assistant := node.ChildNodes.Nodes['Assistant'].NodeValue;
//              cmd.command := node.ChildNodes.Nodes['Command'].NodeValue;
//              item := lv.Items.Add;
//              with item do
//              begin
//                Caption := cmd.name;
//                SubItems.Add(cmd.category);
//                SubItems.Add(cmd.usage);
//                SubItems.Add(cmd.shortDesc);
//                Data := Pointer(cmd);
//              end;
//
//              p := node.ChildNodes.FindNode('ZPLCommandParameter');
//              if p <> nil then
//              begin
//                for j := 0 to p.ChildNodes.Count - 1 do
//                begin
//                  q := p.ChildNodes[j];
//                  params := TZPLCommandParameter.Create;
//                  cmd.params.Add(params);
//                  params.name := getAttr(q,'Name');  //q.AttributeNodes.FindNode('Name').NodeValue;
//                  params.code := getAttr(q,'Code');  //q.AttributeNodes.FindNode('Code').NodeValue;
//                  params.description := getAttr(q,'Description'); // q.AttributeNodes.FindNode('Description').NodeValue;
//                  params.default := getAttr(q,'Default');
//                  if (q.NodeName.ToLower = 'textbox') or (q.NodeName.ToLower = 'numericbox') then
//                  begin
//                    params.acceptedValue := getAttr(q, 'AcceptedValue');
//                    params.size := getAttr(q, 'Size');
//                    params.min := getAttr(q, 'Min');
//                    params.max := getAttr(q, 'Max');
//                  end
//                  else if q.NodeName.ToLower = 'combobox' then
//                  begin
//                    z := q.ChildNodes.FindNode('ComboBoxValues');
//                    if z <> nil then
//                    begin
//                      for m := 0 to z.ChildNodes.Count-1 do
//                      begin
//                        w := z.ChildNodes[m];
//                        params.addValue(getAttr(w,'Value'),w.NodeValue);
//                      end;
//                    end;
//                  end;
//                  item.SubItems.Add(params.ToString);
//                end;
//              end;
//            end;
//          end;
//        end;
//      end;
//    end;
//  finally
//    lv.Items.EndUpdate;
//  end;
//end;

class procedure TXMLToView.xmlSaveLabelSettings(lbl: TZPLLabelSettings; const filename: string);
var
  doc: IXMLDocument;
  root, node: IXMLNode;
begin
  doc := TXMLDocument.Create(filename);
  root := doc.DocumentElement;
  node := doc.CreateNode('LabelFormat');
  node.AddChild('Name').Text := lbl.name;
  node.AddChild('Width').Text := lbl.width.ToString;
  node.AddChild('Height').Text := lbl.height.ToString;
  node.AddChild('Orientation').Text := Ord(lbl.orientation).ToString;
  root.ChildNodes.Add(node);
  doc.SaveToFile(filename);
end;

class function TXMLToView.xmlZPLCommandsToObjectList(
  const filename: string): TObjectList<TZPLCommand>;
var
  cmd: TZPLCommand;
  params: TZPLCommandParameter;
  root, node, p, q, z, w: IXMLNode;
  doc: IXMLDocument;
  i,j,m: Integer;
begin
  Result := TObjectList<TZPLCommand>.Create(False);
  doc := TXMLDocument.Create(filename);
  root := doc.DocumentElement;
  if root.NodeType = ntElement then
  begin
    if root.HasChildNodes then
    begin
      for i := 0 to root.ChildNodes.Count-1 do
      begin
        node := root.ChildNodes[i];
        if node.NodeType = ntElement then
        begin
          if node.NodeName.ToLower = 'zplcommand' then
          begin
            cmd := TZPLCommand.Create;
            Result.Add(cmd);
            cmd.name := node.ChildNodes.Nodes['Name'].NodeValue;
            cmd.category := node.ChildNodes.Nodes['Category'].NodeValue;
            cmd.shortDesc := node.ChildNodes.Nodes['ShortDesc'].NodeValue;
            cmd.longDesc := node.ChildNodes.Nodes['LongDesc'].NodeValue;
            cmd.usage := node.ChildNodes.Nodes['Usage'].NodeValue;
            cmd.assistant := node.ChildNodes.Nodes['Assistant'].NodeValue;
            cmd.command := node.ChildNodes.Nodes['Command'].NodeValue;
            p := node.ChildNodes.FindNode('ZPLCommandParameter');
            if p <> nil then
            begin
              for j := 0 to p.ChildNodes.Count - 1 do
              begin
                q := p.ChildNodes[j];
                params := TZPLCommandParameter.Create;
                cmd.params.Add(params);
                params.name := getAttr(q,'Name');  //q.AttributeNodes.FindNode('Name').NodeValue;
                params.code := getAttr(q,'Code');  //q.AttributeNodes.FindNode('Code').NodeValue;
                params.description := getAttr(q,'Description'); // q.AttributeNodes.FindNode('Description').NodeValue;
                params.default := getAttr(q,'Default');
                if (q.NodeName.ToLower = 'textbox') or (q.NodeName.ToLower = 'numericbox') then
                begin
                  params.acceptedValue := getAttr(q, 'AcceptedValue');
                  params.size := getAttr(q, 'Size');
                  params.min := getAttr(q, 'Min');
                  params.max := getAttr(q, 'Max');
                end
                else if q.NodeName.ToLower = 'combobox' then
                begin
                  z := q.ChildNodes.FindNode('ComboBoxValues');
                  if z <> nil then
                  begin
                    for m := 0 to z.ChildNodes.Count-1 do
                    begin
                      w := z.ChildNodes[m];
                      params.addValue(getAttr(w,'Value'),w.NodeValue);
                    end;
                  end;
                end;
              end;
            end;
            cmd.clean;
          end;
        end;
      end;
    end;
  end;
end;

class function TXMLToView.xmlZPLLabelsToObjectList(
  const filename: string): TObjectList<TZPLLabelSettings>;
var
  doc: IXMLDocument;
  root, node: IXMLNode;
  i: integer;
  l: TZPLLabelSettings;
begin
  Result := TObjectList<TZPLLabelSettings>.Create(False);
  doc := TXMLDocument.Create(filename);
  root := doc.DocumentElement;
  if root.NodeType = ntElement then
  begin
    if root.HasChildNodes then
    begin
      for i := 0 to root.ChildNodes.Count-1 do
      begin
        node := root.ChildNodes[i];
        if (node.NodeType = ntElement) and (node.NodeName.ToLower = 'labelformat') then
        begin
          l := TZPLLabelSettings.Create;
          Result.Add(l);
          l.name := node.ChildNodes.Nodes['Name'].NodeValue;
          l.width := node.ChildNodes.Nodes['Width'].NodeValue;
          l.height := node.ChildNodes.Nodes['Height'].NodeValue;
          l.orientation := TPrintOrientation(node.ChildNodes.Nodes['Orientation'].NodeValue);
        end;
      end;
    end;
  end;
end;

//procedure TXMLToView.DOM2Tree(node: IXMLNode; tv: TTreeView; tn: TTreeNode);
//var
//  nodeText: string;
//  ntn: TTreeNode;
//  i: integer;
//  att: IXMLNode;
//begin
//  {: skip text nodes and other special cases }
//  if node.NodeType <> ntElement then
//    Exit;
//
//  {: add the node itself }
//
//  nodeText := node.NodeName;
//  if node.IsTextElement then
//    nodeText := Format('%s = %s', [nodeText, node.NodeValue]);
//  ntn := tv.Items.AddChild(tn, nodeText);
//
//  {: add attributes }
//  for i := 0 to node.AttributeNodes.Count - 1 do
//  begin
//    att := node.AttributeNodes.Nodes[i];
//    tv.Items.AddChild(ntn,Format('[%s] = "%s"',[att.NodeName,att.Text]));
//  end;
//
//  {: add each child node }
//  if node.HasChildNodes then
//    for i := 0 to node.ChildNodes.Count-1 do
//      DOM2Tree(node.ChildNodes.Nodes[i], tv, ntn);
//end;

//procedure TXMLToView.xmlToTreeView(lv: TTreeView; const filename: string);
//var
//  doc: IXMLDocument;
//begin
//  doc := TXMLDocument.Create(filename);
//  lv.Items.BeginUpdate;
//  try
//    lv.Items.Clear;
//
//    DOM2Tree(doc.DocumentElement,lv,nil);
//    lv.FullExpand;
//  finally
//    lv.Items.EndUpdate;
//  end;
//end;

class procedure TXMLToView.xmlSaveLabel(lbl: TZPLLabel; const filename: string);
var
  doc: IXMLDocument;
  root, lines, node: IXMLNode;
  i,j,k: Integer;
  lcLine, fname: string;
  writer: TStreamWriter;
  bin,
  graphics: string;
begin
  doc := TXMLDocument.Create(nil);
  doc.Active := True;
  doc.Options := [doNodeAutoIndent];
  root := doc.AddChild('ZPLLines');
  root.Attributes['Version'] := lbl.Version;
  node := root.AddChild('LabelFormat');
  node.AddChild('Name').Text := lbl.LabelName;
  node.AddChild('Width').Text := lbl.width.ToString;
  node.AddChild('Height').Text := lbl.height.ToString;
  node.AddChild('Orientation').Text := Ord(lbl.PrintOrientation).ToString;
  node.AddChild('PrintDensity').Text := ZPLPrintDensity[lbl.Density].ToString;
  lines := root.AddChild('Lines');
  for i := 0 to lbl.Lines.Count-1 do
  begin
    lcLine := lbl.Lines[i].Trim;
    if lcLine <> '' then
    begin
      node := lines.AddChild('ZPLLine');
      node.Attributes['Index'] := IntToStr(i);
      j := Pos('~DG', lcLine.ToUpper);
      if j > 0 then
      begin
        { delete ~DGR: }
        Delete(lcLine,1,5);
        j := Pos('.GRF', lcLine.ToUpper);
        if j > 0 then
        begin
          { extract graphic identifier }
          fname := Copy(lcLine,1,j+3);
          node.AddChild('Value').NodeValue := fname;
          node.Attributes['Type'] := 'GraphicFile';
          Delete(lcLine,1,j+3);
          { write the graphic to file }
          bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
          graphics := IncludeTrailingPathDelimiter(Format('%s\%s',[bin,'graphics']));
          fname := Format('%s\%s',[graphics,fname]);
          if not FileExists(fname) then
          begin
            writer := TStreamWriter.Create(fname, False, TEncoding.UTF8);
            try
              writer.Write(lcLine);
            finally
              writer.Free;
            end;
          end;
        end;
      end
      else
      begin
        node.AddChild('Value').NodeValue := lcLine;
        j := Pos('^FO',lcLine.ToUpper);
        if j > 0 then
        begin
          node.Attributes['Type'] := 'FieldOrigin';
          Delete(lcLine,1, j+2);
          j := Pos(',',lcLine);
          if j > 0 then
          begin
            k := StrToIntDef(Copy(lcLine,1,Pred(j)),0);
            node.Attributes['X'] := k.ToString;
            Delete(lcLine,1,j);
            for j := 1 to length(lcLine) do
            begin
              if not(CharInSet(lcLine[j],['0'..'9'])) then
              begin
                k := StrToIntDef(Copy(lcLine,1,Pred(j)),0);
                Break;
              end;
            end;
            node.Attributes['Y'] := k.ToString;
          end;
        end;
      end;
    end
    else
    begin
      node := lines.AddChild('ZPLBlankLine');
      node.Attributes['Index'] := IntToStr(i);
    end;
  end;
  doc.SaveToFile(filename);
end;

class function TXMLToView.xmlExtractZPL(const filename: string): TZPLLabelValues;
var
  doc: IXMLDocument;
  root, node, line: IXMLNode;
  i,j: Integer;
  s, fname: string;
  stream: TStreamReader;
  v: variant;
  bin,
  graphics: string;
begin
  Result := TZPLLabelValues.Create;
  doc := TXMLDocument.Create(filename);
  root := doc.DocumentElement;
  if root.NodeType = ntElement then
  begin
    if root.HasChildNodes then
    begin
      for i := 0 to root.ChildNodes.Count-1 do
      begin
        node := root.ChildNodes[i];
        if (node.NodeType = ntElement) and (node.NodeName.ToLower = 'lines') then
        begin
          for j := 0 to node.ChildNodes.Count-1 do
          begin
            line := node.ChildNodes[j];
            if line.NodeName.ToLower = 'zplline' then
            begin
              v := line.Attributes['Type'];
              if VarIsNull(v) then
              begin
                v := line.ChildNodes.Nodes['Value'].NodeValue;
                if not VarIsNull(v) then
                begin
                  s := v;
                  s := FindAndReplaceAll(s, '&lt;','<');
                  s := FindAndReplaceAll(s, '&gt;','>');
                  Result.Lines.Add(s);
                end;
              end
              else
              begin
                v := line.Attributes['Type'];
                if not VarIsNull(v) then
                begin
                  if v = 'GraphicFile' then
                  begin
                    s := '';
                    v := line.ChildNodes.Nodes['Value'].NodeValue;
                    if not VarIsNull(v) then
                    begin
                      bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
                      graphics := IncludeTrailingPathDelimiter(Format('%s\%s',[bin,'graphics']));
                      fname := Format('%s\%s',[graphics,v]);
                      if FileExists(fname) then
                      begin
                        stream := TStreamReader.Create(fname,TEncoding.UTF8,True);
                        try
                          s := stream.ReadLine;
                        finally
                          stream.Free;
                        end;
                        Result.Lines.Add(Format('%s%s%s',['~DGR:',v,s]));
                      end;
                    end;
                  end
                  else
                  begin
                    v := line.ChildNodes.Nodes['Value'].NodeValue;
                    if not VarIsNull(v) then
                    begin
                      s := v;
                      s := FindAndReplaceAll(s, '&lt;','<');
                      s := FindAndReplaceAll(s, '&gt;','>');
                      Result.Lines.Add(s);
                    end;
                  end;
                end;
              end;
            end
            else
            if line.NodeName.ToLower = 'zplblankline' then
            begin
              Result.Lines.Add('');
            end;
          end;
        end
        else if (node.NodeType = ntElement) and (node.NodeName.ToLower = 'labelformat') then
        begin
          line := node;
          v := line.ChildNodes.Nodes['Name'].NodeValue;
          if not VarIsNull(v) then
          begin
            s := v;
            Result.ALabel.name := s;
          end;
          v := line.ChildNodes.Nodes['Width'].NodeValue;
          if not VarIsNull(v) then
          begin
            s := v;
            Result.ALabel.width := StrToIntDef(s,0);
          end;
          v := line.ChildNodes.Nodes['Height'].NodeValue;
          if not VarIsNull(v) then
          begin
            s := v;
            Result.ALabel.height := StrToIntDef(s,0);
          end;
          v := line.ChildNodes.Nodes['Orientation'].NodeValue;
          if not VarIsNull(v) then
          begin
            s := v;
            Result.ALabel.orientation := TPrintOrientation(StrToIntDef(s,0));
          end;
          v := line.ChildNodes['PrintDensity'].NodeValue;
          if not VarIsNull(v) then
          begin
            Result.ALabel.density := v;
          end;
        end;
      end;
    end;
  end;
end;

end.
