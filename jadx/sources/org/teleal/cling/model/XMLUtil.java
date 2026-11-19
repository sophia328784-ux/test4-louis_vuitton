package org.teleal.cling.model;

import defpackage.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes5.dex */
public class XMLUtil {
    public static Element a(Document document, Element element, Enum r2) {
        Element elementCreateElement = document.createElement(r2.toString());
        element.appendChild(elementCreateElement);
        return elementCreateElement;
    }

    public static Element b(Document document, Element element, String str, Object obj, String str2) {
        Element elementCreateElementNS = str2 != null ? document.createElementNS(str2, str) : document.createElement(str);
        if (obj != null) {
            elementCreateElementNS.appendChild(document.createTextNode(obj.toString()));
        }
        element.appendChild(elementCreateElementNS);
        return elementCreateElementNS;
    }

    public static void c(Document document, Element element, Enum r3, Object obj) {
        String string = r3.toString();
        if (obj == null) {
            return;
        }
        b(document, element, string, obj, null);
    }

    public static String d(Document document) {
        return "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>".concat(f(document.getDocumentElement(), new HashSet(), document.getDocumentElement().getNamespaceURI()));
    }

    public static String e(Node node) {
        StringBuffer stringBuffer = new StringBuffer();
        NodeList childNodes = node.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 3) {
                stringBuffer.append(nodeItem.getNodeValue());
            }
        }
        return stringBuffer.toString();
    }

    public static String f(Node node, HashSet hashSet, String str) {
        StringBuilder sb = new StringBuilder();
        if (node == null) {
            return "";
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            sb.append("<");
            sb.append(element.getNodeName());
            HashMap map = new HashMap();
            if (element.getPrefix() != null && !hashSet.contains(element.getPrefix())) {
                map.put(element.getPrefix(), element.getNamespaceURI());
            }
            if (element.hasAttributes()) {
                NamedNodeMap attributes = element.getAttributes();
                for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                    Node nodeItem = attributes.item(i2);
                    if (!nodeItem.getNodeName().startsWith("xmlns")) {
                        if (nodeItem.getPrefix() != null && !hashSet.contains(nodeItem.getPrefix())) {
                            map.put(nodeItem.getPrefix(), element.getNamespaceURI());
                        }
                        sb.append(" ");
                        sb.append(nodeItem.getNodeName());
                        sb.append("=\"");
                        sb.append(nodeItem.getNodeValue());
                        sb.append("\"");
                    }
                }
            }
            if (str != null && !map.containsValue(str) && !str.equals(element.getParentNode().getNamespaceURI())) {
                a.B(sb, " xmlns=\"", str, "\"");
            }
            for (Map.Entry entry : map.entrySet()) {
                sb.append(" xmlns:");
                sb.append((String) entry.getKey());
                sb.append("=\"");
                sb.append((String) entry.getValue());
                sb.append("\"");
                hashSet.add((String) entry.getKey());
            }
            NodeList childNodes = element.getChildNodes();
            int i3 = 0;
            while (true) {
                if (i3 >= childNodes.getLength()) {
                    sb.append("/>");
                    break;
                }
                if (childNodes.item(i3).getNodeType() != 2) {
                    sb.append(">");
                    for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
                        sb.append(f(childNodes.item(i4), hashSet, childNodes.item(i4).getNamespaceURI()));
                    }
                    sb.append("</");
                    sb.append(element.getNodeName());
                    sb.append(">");
                    break;
                }
                i3++;
            }
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                hashSet.remove((String) it.next());
            }
        } else if (node.getNodeValue() != null) {
            sb.append(node.getNodeValue().replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("'", "&apos;").replaceAll("\"", "&quot;"));
        }
        return sb.toString();
    }
}
