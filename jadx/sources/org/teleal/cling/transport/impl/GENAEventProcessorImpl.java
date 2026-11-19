package org.teleal.cling.transport.impl;

import defpackage.fc;
import defpackage.wp;
import java.io.StringReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.teleal.cling.model.XMLUtil;
import org.teleal.cling.model.message.UpnpMessage;
import org.teleal.cling.model.message.gena.IncomingEventRequestMessage;
import org.teleal.cling.model.meta.StateVariable;
import org.teleal.cling.model.state.StateVariableValue;
import org.teleal.cling.transport.spi.GENAEventProcessor;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class GENAEventProcessorImpl implements GENAEventProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f78620a = Logger.getLogger(GENAEventProcessor.class.getName());

    public static String a(Node node) {
        return node.getPrefix() != null ? node.getNodeName().substring(node.getPrefix().length() + 1) : node.getNodeName();
    }

    public static void c(Element element, IncomingEventRequestMessage incomingEventRequestMessage) {
        NodeList childNodes = element.getChildNodes();
        StateVariable[] stateVariableArrC = incomingEventRequestMessage.g.c();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && a(nodeItem).equals("property")) {
                NodeList childNodes2 = nodeItem.getChildNodes();
                for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                    Node nodeItem2 = childNodes2.item(i3);
                    if (nodeItem2.getNodeType() == 1) {
                        String strA = a(nodeItem2);
                        for (StateVariable stateVariable : stateVariableArrC) {
                            if (stateVariable.f78483a.equals(strA)) {
                                f78620a.fine("Reading state variable value: " + strA);
                                incomingEventRequestMessage.f78422f.add(new StateVariableValue(stateVariable, XMLUtil.e(nodeItem2)));
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void b(IncomingEventRequestMessage incomingEventRequestMessage) {
        Logger logger = f78620a;
        logger.fine("Reading body of: " + incomingEventRequestMessage);
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("===================================== GENA BODY BEGIN ============================================");
            logger.finer(incomingEventRequestMessage.d.toString());
            logger.finer("-===================================== GENA BODY END ============================================");
        }
        if (incomingEventRequestMessage.d == null || !incomingEventRequestMessage.f78413e.equals(UpnpMessage.BodyType.STRING)) {
            wp.c(incomingEventRequestMessage, "Can't transform null or non-string body of: ");
            return;
        }
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Element documentElement = documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new InputSource(new StringReader(incomingEventRequestMessage.d().trim()))).getDocumentElement();
            if (documentElement == null || !a(documentElement).equals("propertyset")) {
                throw new RuntimeException("Root element was not 'propertyset'");
            }
            c(documentElement, incomingEventRequestMessage);
        } catch (Exception e2) {
            throw new UnsupportedDataException(fc.g(e2, new StringBuilder("Can't transform message payload: ")), e2);
        }
    }
}
