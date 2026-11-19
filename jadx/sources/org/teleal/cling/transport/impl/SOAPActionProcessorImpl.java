package org.teleal.cling.transport.impl;

import defpackage.cj;
import defpackage.o60;
import defpackage.v7;
import defpackage.wp;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import k.a;
import org.teleal.cling.model.XMLUtil;
import org.teleal.cling.model.action.ActionArgumentValue;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpMessage;
import org.teleal.cling.model.message.control.ActionRequestMessage;
import org.teleal.cling.model.message.control.IncomingActionRequestMessage;
import org.teleal.cling.model.message.control.IncomingActionResponseMessage;
import org.teleal.cling.model.message.control.OutgoingActionRequestMessage;
import org.teleal.cling.model.message.control.OutgoingActionResponseMessage;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.ActionArgument;
import org.teleal.cling.model.types.ErrorCode;
import org.teleal.cling.model.types.InvalidValueException;
import org.teleal.cling.transport.spi.SOAPActionProcessor;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class SOAPActionProcessorImpl implements SOAPActionProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f78629a = Logger.getLogger(SOAPActionProcessor.class.getName());

    public static String a(Node node) {
        return node.getPrefix() != null ? node.getNodeName().substring(node.getPrefix().length() + 1) : node.getNodeName();
    }

    public static ActionArgumentValue[] b(NodeList nodeList, ActionArgument[] actionArgumentArr) throws ActionException {
        ArrayList arrayList = new ArrayList();
        for (ActionArgument actionArgument : actionArgumentArr) {
            arrayList.add(actionArgument.f78438a);
            arrayList.addAll(Arrays.asList(actionArgument.f78439b));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < nodeList.getLength(); i2++) {
            Node nodeItem = nodeList.item(i2);
            if (nodeItem.getNodeType() == 1 && arrayList.contains(a(nodeItem))) {
                arrayList2.add(nodeItem);
            }
        }
        ActionArgumentValue[] actionArgumentValueArr = new ActionArgumentValue[arrayList2.size()];
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            Node node = (Node) arrayList2.get(i3);
            String strA = a(node);
            for (ActionArgument actionArgument2 : actionArgumentArr) {
                if (actionArgument2.f78438a.equals(strA)) {
                    try {
                        actionArgumentValueArr[i3] = new ActionArgumentValue(actionArgument2, XMLUtil.e(node));
                    } catch (InvalidValueException e2) {
                        throw new ActionException(ErrorCode.ARGUMENT_VALUE_INVALID, "Wrong type or invalid value for '" + actionArgument2.f78438a + "': " + e2.getMessage(), e2);
                    }
                }
            }
        }
        return actionArgumentValueArr;
    }

    public static Element e(Document document) {
        Element documentElement = document.getDocumentElement();
        if (documentElement == null || !a(documentElement).equals("Envelope")) {
            v7.h("Response root element was not 'Envelope'");
            return null;
        }
        NodeList childNodes = documentElement.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && a(nodeItem).equals("Body")) {
                return (Element) nodeItem;
            }
        }
        v7.h("Response envelope did not contain 'Body' child element");
        return null;
    }

    public static ActionException f(Element element) {
        NodeList childNodes = element.getChildNodes();
        boolean z = false;
        String strE = null;
        String strE2 = null;
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && a(nodeItem).equals("Fault")) {
                NodeList childNodes2 = nodeItem.getChildNodes();
                for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                    Node nodeItem2 = childNodes2.item(i3);
                    if (nodeItem2.getNodeType() == 1 && a(nodeItem2).equals("detail")) {
                        NodeList childNodes3 = nodeItem2.getChildNodes();
                        for (int i4 = 0; i4 < childNodes3.getLength(); i4++) {
                            Node nodeItem3 = childNodes3.item(i4);
                            if (nodeItem3.getNodeType() == 1 && a(nodeItem3).equals("UPnPError")) {
                                NodeList childNodes4 = nodeItem3.getChildNodes();
                                for (int i5 = 0; i5 < childNodes4.getLength(); i5++) {
                                    Node nodeItem4 = childNodes4.item(i5);
                                    if (nodeItem4.getNodeType() == 1) {
                                        if (a(nodeItem4).equals("errorCode")) {
                                            strE = XMLUtil.e(nodeItem4);
                                        }
                                        if (a(nodeItem4).equals("errorDescription")) {
                                            strE2 = XMLUtil.e(nodeItem4);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                z = true;
            }
        }
        if (strE == null) {
            if (!z) {
                return null;
            }
            v7.h("Received fault element but no error code");
            return null;
        }
        try {
            int iIntValue = Integer.valueOf(strE).intValue();
            ErrorCode errorCodeA = ErrorCode.a(iIntValue);
            Logger logger = f78629a;
            if (errorCodeA != null) {
                logger.fine("Reading fault element: " + errorCodeA.b() + " - " + strE2);
                return new ActionException(errorCodeA, strE2, false);
            }
            logger.fine("Reading fault element: " + iIntValue + " - " + strE2);
            return new ActionException(iIntValue, strE2);
        } catch (NumberFormatException unused) {
            v7.h("Error code was not a number");
            return null;
        }
    }

    public static void g(Element element, IncomingActionRequestMessage incomingActionRequestMessage, ActionInvocation actionInvocation) throws ActionException {
        Element element2;
        Action action = actionInvocation.f78397a;
        NodeList childNodes = element.getChildNodes();
        StringBuilder sb = new StringBuilder("Looking for action request element matching namespace:");
        String str = incomingActionRequestMessage.g;
        sb.append(str);
        String string = sb.toString();
        Logger logger = f78629a;
        logger.fine(string);
        int i2 = 0;
        while (true) {
            if (i2 >= childNodes.getLength()) {
                logger.info("Could not read action request element matching namespace: " + str);
                element2 = null;
                break;
            }
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && a(nodeItem).equals(action.a()) && nodeItem.getNamespaceURI().equals(str)) {
                logger.fine("Reading action request element: " + a(nodeItem));
                element2 = (Element) nodeItem;
                break;
            }
            i2++;
        }
        for (ActionArgumentValue actionArgumentValue : b(element2.getChildNodes(), action.f78436c)) {
            actionInvocation.f78398b.put(actionArgumentValue.f78395c.f78438a, actionArgumentValue);
        }
    }

    public static void h(Element element, ActionInvocation actionInvocation) throws ActionException {
        Element element2;
        NodeList childNodes = element.getChildNodes();
        int i2 = 0;
        while (true) {
            int length = childNodes.getLength();
            Logger logger = f78629a;
            if (i2 >= length) {
                logger.fine("Could not read action response element");
                element2 = null;
                break;
            }
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1) {
                if (a(nodeItem).equals(actionInvocation.f78397a.a() + "Response")) {
                    logger.fine("Reading action response element: " + a(nodeItem));
                    element2 = (Element) nodeItem;
                    break;
                }
            }
            i2++;
        }
        for (ActionArgumentValue actionArgumentValue : b(element2.getChildNodes(), actionInvocation.f78397a.d)) {
            actionInvocation.f78399c.put(actionArgumentValue.f78395c.f78438a, actionArgumentValue);
        }
    }

    public static String i(Document document) {
        String strD = XMLUtil.d(document);
        while (true) {
            if (!strD.endsWith("\n") && !strD.endsWith("\r")) {
                return strD;
            }
            strD = o60.g(1, 0, strD);
        }
    }

    public static Element l(Document document) {
        Element elementCreateElementNS = document.createElementNS("http://schemas.xmlsoap.org/soap/envelope/", "s:Envelope");
        Attr attrCreateAttributeNS = document.createAttributeNS("http://schemas.xmlsoap.org/soap/envelope/", "s:encodingStyle");
        attrCreateAttributeNS.setValue("http://schemas.xmlsoap.org/soap/encoding/");
        elementCreateElementNS.setAttributeNode(attrCreateAttributeNS);
        document.appendChild(elementCreateElementNS);
        Element elementCreateElementNS2 = document.createElementNS("http://schemas.xmlsoap.org/soap/envelope/", "s:Body");
        elementCreateElementNS.appendChild(elementCreateElementNS2);
        return elementCreateElementNS2;
    }

    public static void m(Document document, Element element, OutgoingActionResponseMessage outgoingActionResponseMessage, ActionInvocation actionInvocation) {
        Element elementCreateElementNS = document.createElementNS("http://schemas.xmlsoap.org/soap/envelope/", "s:Fault");
        element.appendChild(elementCreateElementNS);
        XMLUtil.b(document, elementCreateElementNS, "faultcode", "s:Client", null);
        XMLUtil.b(document, elementCreateElementNS, "faultstring", "UPnPError", null);
        Element elementCreateElement = document.createElement("detail");
        elementCreateElementNS.appendChild(elementCreateElement);
        Element elementCreateElementNS2 = document.createElementNS("urn:schemas-upnp-org:control-1-0", "UPnPError");
        elementCreateElement.appendChild(elementCreateElementNS2);
        ActionException actionException = actionInvocation.d;
        int i2 = actionException.f78396b;
        String message = actionException.getMessage();
        f78629a.fine("Writing fault element: " + i2 + " - " + message);
        XMLUtil.b(document, elementCreateElementNS2, "errorCode", Integer.toString(i2), null);
        XMLUtil.b(document, elementCreateElementNS2, "errorDescription", message, null);
        UpnpMessage.BodyType bodyType = UpnpMessage.BodyType.STRING;
        String strI = i(document);
        outgoingActionResponseMessage.f78413e = bodyType;
        outgoingActionResponseMessage.d = strI;
    }

    public static void n(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) {
        String str = "Writing action request element: " + actionInvocation.f78397a.a();
        Logger logger = f78629a;
        logger.fine(str);
        String strB = actionRequestMessage.b();
        StringBuilder sb = new StringBuilder("u:");
        Action action = actionInvocation.f78397a;
        sb.append(action.a());
        Element elementCreateElementNS = document.createElementNS(strB, sb.toString());
        element.appendChild(elementCreateElementNS);
        LinkedHashMap linkedHashMap = actionInvocation.f78398b;
        ActionArgument[] actionArgumentArr = action.f78436c;
        for (ActionArgument actionArgument : actionArgumentArr) {
            StringBuilder sb2 = new StringBuilder("Writing action input argument: ");
            String str2 = actionArgument.f78438a;
            sb2.append(str2);
            logger.fine(sb2.toString());
            XMLUtil.b(document, elementCreateElementNS, str2, ((ActionArgumentValue) linkedHashMap.get(str2)) != null ? ((ActionArgumentValue) linkedHashMap.get(str2)).toString() : "", null);
        }
        actionRequestMessage.a(UpnpMessage.BodyType.STRING, i(document));
    }

    public static void o(Document document, Element element, OutgoingActionResponseMessage outgoingActionResponseMessage, ActionInvocation actionInvocation) {
        StringBuilder sb = new StringBuilder("Writing action response element: ");
        Action action = actionInvocation.f78397a;
        sb.append(action.a());
        String string = sb.toString();
        Logger logger = f78629a;
        logger.fine(string);
        Element elementCreateElementNS = document.createElementNS(outgoingActionResponseMessage.f78421f, "u:" + action.a() + "Response");
        element.appendChild(elementCreateElementNS);
        LinkedHashMap linkedHashMap = actionInvocation.f78399c;
        for (ActionArgument actionArgument : action.d) {
            StringBuilder sb2 = new StringBuilder("Writing action output argument: ");
            String str = actionArgument.f78438a;
            sb2.append(str);
            logger.fine(sb2.toString());
            XMLUtil.b(document, elementCreateElementNS, str, ((ActionArgumentValue) linkedHashMap.get(str)) != null ? ((ActionArgumentValue) linkedHashMap.get(str)).toString() : "", null);
        }
        UpnpMessage.BodyType bodyType = UpnpMessage.BodyType.STRING;
        String strI = i(document);
        outgoingActionResponseMessage.f78413e = bodyType;
        outgoingActionResponseMessage.d = strI;
    }

    public final void c(IncomingActionRequestMessage incomingActionRequestMessage, ActionInvocation actionInvocation) {
        Objects.toString(incomingActionRequestMessage);
        Objects.toString(actionInvocation);
        HashMap map = a.f71507a;
        Logger logger = f78629a;
        logger.fine("Reading body of " + incomingActionRequestMessage + " for: " + actionInvocation);
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("===================================== SOAP BODY BEGIN ============================================");
            logger.finer(incomingActionRequestMessage.d.toString());
            logger.finer("-===================================== SOAP BODY END ============================================");
        }
        if (incomingActionRequestMessage.d == null || !incomingActionRequestMessage.f78413e.equals(UpnpMessage.BodyType.STRING) || incomingActionRequestMessage.d().length() == 0) {
            wp.c(incomingActionRequestMessage, "Can't transform empty or non-string body of: ");
            return;
        }
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            g(e(documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new InputSource(new StringReader(incomingActionRequestMessage.d().trim())))), incomingActionRequestMessage, actionInvocation);
        } catch (Exception e2) {
            throw new UnsupportedDataException(cj.j("Can't transform message payload: ", e2), e2);
        }
    }

    public final void d(IncomingActionResponseMessage incomingActionResponseMessage, ActionInvocation actionInvocation) {
        Logger logger = f78629a;
        logger.fine("Reading body of " + incomingActionResponseMessage + " for: " + actionInvocation);
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("===================================== SOAP BODY BEGIN ============================================");
            logger.finer(incomingActionResponseMessage.d());
            logger.finer("-===================================== SOAP BODY END ============================================");
        }
        if (incomingActionResponseMessage.d == null || !incomingActionResponseMessage.f78413e.equals(UpnpMessage.BodyType.STRING) || incomingActionResponseMessage.d().length() == 0) {
            wp.c(incomingActionResponseMessage, "Can't transform empty or non-string body of: ");
            return;
        }
        if (incomingActionResponseMessage.d().contains("NO REPONSE WITH SOAP-ACTION")) {
            return;
        }
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Element elementE = e(documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new InputSource(new StringReader(incomingActionResponseMessage.d().trim()))));
            ActionException actionExceptionF = f(elementE);
            if (actionExceptionF == null) {
                h(elementE, actionInvocation);
            } else {
                actionInvocation.d = actionExceptionF;
            }
        } catch (Exception e2) {
            e2.getMessage();
            HashMap map = a.f71507a;
            throw new UnsupportedDataException(cj.j("Can't transform message payload: ", e2), e2);
        }
    }

    public final void j(OutgoingActionRequestMessage outgoingActionRequestMessage, ActionInvocation actionInvocation) {
        Logger logger = f78629a;
        logger.fine("Writing body of " + outgoingActionRequestMessage + " for: " + actionInvocation);
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            n(documentNewDocument, l(documentNewDocument), outgoingActionRequestMessage, actionInvocation);
            if (logger.isLoggable(Level.FINER)) {
                logger.finer("===================================== SOAP BODY BEGIN ============================================");
                logger.finer(outgoingActionRequestMessage.d.toString());
                logger.finer("-===================================== SOAP BODY END ============================================");
            }
        } catch (Exception e2) {
            throw new UnsupportedDataException(cj.j("Can't transform message payload: ", e2), e2);
        }
    }

    public final void k(OutgoingActionResponseMessage outgoingActionResponseMessage, ActionInvocation actionInvocation) {
        Logger logger = f78629a;
        logger.fine("Writing body of " + outgoingActionResponseMessage + " for: " + actionInvocation);
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            Element elementL = l(documentNewDocument);
            if (actionInvocation.d != null) {
                m(documentNewDocument, elementL, outgoingActionResponseMessage, actionInvocation);
            } else {
                o(documentNewDocument, elementL, outgoingActionResponseMessage, actionInvocation);
            }
            if (logger.isLoggable(Level.FINER)) {
                logger.finer("===================================== SOAP BODY BEGIN ============================================");
                logger.finer(outgoingActionResponseMessage.d.toString());
                logger.finer("-===================================== SOAP BODY END ============================================");
            }
        } catch (Exception e2) {
            throw new UnsupportedDataException(cj.j("Can't transform message payload: ", e2), e2);
        }
    }
}
