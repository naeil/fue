part of fue;



class TreeBuilder extends dom.TreeBuilder{
  TreeBuilder({this.fue}) : super(true);

  FueState fue;

  @override
  void reset() {
    openElements.clear();
    activeFormattingElements.clear();

    //XXX - rename these to headElement, formElement
    headPointer = null;
    formPointer = null;

    insertFromTable = false;

    document = new Document();
  }

  @override
  Element createElement(StartTagToken token) {
    var name = token.name;
    var namespace = token.namespace;
    if (namespace == null) namespace = defaultNamespace;
    var element = Element(name, token.data)
      ..sourceSpan = token.span
      ..update = ()=>fue.update();
    return element;
  }

  @override
  Element insertElementNormal(StartTagToken token) {
    var name = token.name;
    var namespace = token.namespace;
    if (namespace == null) namespace = defaultNamespace;
    var element = Element(name, token.data)
      ..sourceSpan = token.span
      ..update = ()=>fue.update();

    openElements.last.nodes.add(element);
    openElements.add(element);
    return element;
  }


}
