unit unitXml;

interface

uses
  Vcl.ComCtrls, Xml.XMLIntf, Xml.XMLDoc, Generics.Collections, zplUtils, Classes;

type
  TXMLToView = class
  private
    function getAttr(node: IXMLNode; const name: string): string;
  protected
//    procedure DOM2Tree(node: IXMLNode; tv: TTreeView; tn: TTreeNode);
  public
//    procedure xmlToListView(lv: TListView; const filename: string);
//    procedure xmlToTreeView(lv: TTreeView; const filename: string);
    function xmlZPLCommandsToObjectList(const filename: string): TObjectList<TZPLCommand>;
    function xmlZPLLabelsToObjectList(const filename: string): TObjectList<TZPLLabelSettings>;
    procedure xmlSaveLabelSettings(lbl: TZPLLabelSettings; const filename: string);
    procedure xmlSaveLabel(lbl: TZPLLabel; const filename: string);
  public
    class function xmlExtractZPL(const filename: string): TZPLLabelValues;
  end;

implementation

uses
  SysUtils, Xml.XMLDom, Variants, u_pro_strings;

{ TXMLToListView }

function TXMLToView.getAttr(node: IXMLNode; const name: string): string;
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

procedure TXMLToView.xmlSaveLabelSettings(lbl: TZPLLabelSettings; const filename: string);
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

function TXMLToView.xmlZPLCommandsToObjectList(
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

function TXMLToView.xmlZPLLabelsToObjectList(
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

procedure TXMLToView.xmlSaveLabel(lbl: TZPLLabel; const filename: string);
var
  doc: IXMLDocument;
  root, lines, node: IXMLNode;
  i: Integer;
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
  lines := root.AddChild('Lines');
  for i := 0 to lbl.Lines.Count-1 do
  begin
    node := lines.AddChild('ZPLLine');
    node.Attributes['Index'] := IntToStr(i);
    node.AddChild('Value').NodeValue := lbl.Lines[i];
  end;
  doc.SaveToFile(filename);
end;

class function TXMLToView.xmlExtractZPL(const filename: string): TZPLLabelValues;
var
  doc: IXMLDocument;
  root, lines, node, line: IXMLNode;
  i,j: Integer;
  s: string;
  v: variant;
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
            v := line.ChildNodes.Nodes['Value'].NodeValue;
            if not VarIsNull(v) then
            begin
              s := v;
              s := FindAndReplaceAll(s, '&lt;','<');
              s := FindAndReplaceAll(s, '&gt;','>');
              Result.Lines.Add(s);
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
        end;
      end;
    end;
  end;
end;

end.
