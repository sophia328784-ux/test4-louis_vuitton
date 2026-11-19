package org.teleal.cling.binding.xml;

import defpackage.a;
import defpackage.fc;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.teleal.cling.binding.staging.MutableAction;
import org.teleal.cling.binding.staging.MutableActionArgument;
import org.teleal.cling.binding.staging.MutableAllowedValueRange;
import org.teleal.cling.binding.staging.MutableService;
import org.teleal.cling.binding.staging.MutableStateVariable;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.XMLUtil;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.ActionArgument;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.StateVariable;
import org.teleal.cling.model.meta.StateVariableAllowedValueRange;
import org.teleal.cling.model.meta.StateVariableEventDetails;
import org.teleal.cling.model.meta.StateVariableTypeDetails;
import org.teleal.cling.model.types.CustomDatatype;
import org.teleal.cling.model.types.Datatype;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class UDA10ServiceDescriptorBinderImpl implements ServiceDescriptorBinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f78356a = Logger.getLogger(ServiceDescriptorBinder.class.getName());

    public static Document c(Service service) throws DescriptorBindingException {
        try {
            f78356a.fine("Generting XML descriptor from service model: " + service);
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            e(service, documentNewDocument);
            return documentNewDocument;
        } catch (Exception e2) {
            throw new DescriptorBindingException(fc.g(e2, new StringBuilder("Could not generate service descriptor: ")), e2);
        }
    }

    public static Service d(Service service, Document document) throws ValidationException, DescriptorBindingException {
        try {
            f78356a.fine("Populating service from DOM: " + service);
            MutableService mutableService = new MutableService();
            mutableService.f78335b = service.f78480b;
            mutableService.f78334a = service.f78479a;
            if (service instanceof RemoteService) {
                RemoteService remoteService = (RemoteService) service;
                mutableService.d = remoteService.g;
                mutableService.f78337e = remoteService.f78478h;
                mutableService.f78336c = remoteService.f78477f;
            }
            f(mutableService, document.getDocumentElement());
            return mutableService.a(service.f78482e);
        } catch (ValidationException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new DescriptorBindingException(a.j(e3, new StringBuilder("Could not parse service DOM: ")), e3);
        }
    }

    public static void e(Service service, Document document) {
        Element elementCreateElementNS = document.createElementNS("urn:schemas-upnp-org:service-1-0", Descriptor$Service.ELEMENT.scpd.toString());
        document.appendChild(elementCreateElementNS);
        Element elementA = XMLUtil.a(document, elementCreateElementNS, Descriptor$Service.ELEMENT.specVersion);
        XMLUtil.c(document, elementA, Descriptor$Service.ELEMENT.major, Integer.valueOf(service.f78482e.f78445b.f78495a));
        XMLUtil.c(document, elementA, Descriptor$Service.ELEMENT.minor, Integer.valueOf(service.f78482e.f78445b.f78496b));
        if (service.b() != null && service.b().length > 0) {
            Element elementA2 = XMLUtil.a(document, elementCreateElementNS, Descriptor$Service.ELEMENT.actionList);
            for (Action action : service.b()) {
                if (!action.a().equals("QueryStateVariable")) {
                    Element elementA3 = XMLUtil.a(document, elementA2, Descriptor$Service.ELEMENT.action);
                    XMLUtil.c(document, elementA3, Descriptor$Service.ELEMENT.name, action.a());
                    ActionArgument[] actionArgumentArr = action.f78435b;
                    if (actionArgumentArr != null && actionArgumentArr.length > 0) {
                        Element elementA4 = XMLUtil.a(document, elementA3, Descriptor$Service.ELEMENT.argumentList);
                        for (ActionArgument actionArgument : actionArgumentArr) {
                            Element elementA5 = XMLUtil.a(document, elementA4, Descriptor$Service.ELEMENT.argument);
                            XMLUtil.c(document, elementA5, Descriptor$Service.ELEMENT.name, actionArgument.f78438a);
                            XMLUtil.c(document, elementA5, Descriptor$Service.ELEMENT.direction, actionArgument.d.toString().toLowerCase());
                            XMLUtil.c(document, elementA5, Descriptor$Service.ELEMENT.relatedStateVariable, actionArgument.f78440c);
                            if (actionArgument.f78441e) {
                                XMLUtil.a(document, elementA5, Descriptor$Service.ELEMENT.retval);
                            }
                        }
                    }
                }
            }
        }
        Element elementA6 = XMLUtil.a(document, elementCreateElementNS, Descriptor$Service.ELEMENT.serviceStateTable);
        for (StateVariable stateVariable : service.c()) {
            Element elementA7 = XMLUtil.a(document, elementA6, Descriptor$Service.ELEMENT.stateVariable);
            XMLUtil.c(document, elementA7, Descriptor$Service.ELEMENT.name, stateVariable.f78483a);
            StateVariableTypeDetails stateVariableTypeDetails = stateVariable.f78484b;
            Datatype datatype = stateVariableTypeDetails.f78492a;
            StateVariableAllowedValueRange stateVariableAllowedValueRange = stateVariableTypeDetails.d;
            if (datatype instanceof CustomDatatype) {
                XMLUtil.c(document, elementA7, Descriptor$Service.ELEMENT.dataType, ((CustomDatatype) datatype).f78501b);
            } else {
                XMLUtil.c(document, elementA7, Descriptor$Service.ELEMENT.dataType, datatype.d().c());
            }
            XMLUtil.c(document, elementA7, Descriptor$Service.ELEMENT.defaultValue, stateVariableTypeDetails.f78493b);
            if (stateVariable.f78485c.f78489a) {
                elementA7.setAttribute(Descriptor$Service.ATTRIBUTE.sendEvents.toString(), "yes");
            } else {
                elementA7.setAttribute(Descriptor$Service.ATTRIBUTE.sendEvents.toString(), "no");
            }
            if (stateVariableTypeDetails.a() != null) {
                Element elementA8 = XMLUtil.a(document, elementA7, Descriptor$Service.ELEMENT.allowedValueList);
                for (String str : stateVariableTypeDetails.a()) {
                    XMLUtil.c(document, elementA8, Descriptor$Service.ELEMENT.allowedValue, str);
                }
            }
            if (stateVariableAllowedValueRange != null) {
                Element elementA9 = XMLUtil.a(document, elementA7, Descriptor$Service.ELEMENT.allowedValueRange);
                XMLUtil.c(document, elementA9, Descriptor$Service.ELEMENT.minimum, Long.valueOf(stateVariableAllowedValueRange.f78486a));
                XMLUtil.c(document, elementA9, Descriptor$Service.ELEMENT.maximum, Long.valueOf(stateVariableAllowedValueRange.f78487b));
                long j2 = stateVariableAllowedValueRange.f78488c;
                if (j2 > 1) {
                    XMLUtil.c(document, elementA9, Descriptor$Service.ELEMENT.step, Long.valueOf(j2));
                }
            }
        }
    }

    public static void f(MutableService mutableService, Element element) throws DescriptorBindingException {
        if (!Descriptor$Service.ELEMENT.scpd.a(element)) {
            throw new DescriptorBindingException("Root element name is not <scpd>: " + element.getNodeName());
        }
        NodeList childNodes = element.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && !Descriptor$Service.ELEMENT.specVersion.a(nodeItem)) {
                if (Descriptor$Service.ELEMENT.actionList.a(nodeItem)) {
                    NodeList childNodes2 = nodeItem.getChildNodes();
                    for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                        Node nodeItem2 = childNodes2.item(i3);
                        if (nodeItem2.getNodeType() == 1 && Descriptor$Service.ELEMENT.action.a(nodeItem2)) {
                            MutableAction mutableAction = new MutableAction();
                            NodeList childNodes3 = nodeItem2.getChildNodes();
                            for (int i4 = 0; i4 < childNodes3.getLength(); i4++) {
                                Node nodeItem3 = childNodes3.item(i4);
                                if (nodeItem3.getNodeType() == 1) {
                                    if (Descriptor$Service.ELEMENT.name.a(nodeItem3)) {
                                        mutableAction.f78313a = XMLUtil.e(nodeItem3);
                                    } else if (Descriptor$Service.ELEMENT.argumentList.a(nodeItem3)) {
                                        NodeList childNodes4 = nodeItem3.getChildNodes();
                                        for (int i5 = 0; i5 < childNodes4.getLength(); i5++) {
                                            Node nodeItem4 = childNodes4.item(i5);
                                            if (nodeItem4.getNodeType() == 1) {
                                                MutableActionArgument mutableActionArgument = new MutableActionArgument();
                                                NodeList childNodes5 = nodeItem4.getChildNodes();
                                                for (int i6 = 0; i6 < childNodes5.getLength(); i6++) {
                                                    Node nodeItem5 = childNodes5.item(i6);
                                                    if (nodeItem5.getNodeType() == 1) {
                                                        if (Descriptor$Service.ELEMENT.name.a(nodeItem5)) {
                                                            mutableActionArgument.f78315a = XMLUtil.e(nodeItem5);
                                                        } else if (Descriptor$Service.ELEMENT.direction.a(nodeItem5)) {
                                                            mutableActionArgument.f78317c = ActionArgument.Direction.valueOf(XMLUtil.e(nodeItem5).toUpperCase(Locale.ENGLISH));
                                                        } else if (Descriptor$Service.ELEMENT.relatedStateVariable.a(nodeItem5)) {
                                                            mutableActionArgument.f78316b = XMLUtil.e(nodeItem5);
                                                        } else if (Descriptor$Service.ELEMENT.retval.a(nodeItem5)) {
                                                            mutableActionArgument.d = true;
                                                        }
                                                    }
                                                }
                                                mutableAction.f78314b.add(mutableActionArgument);
                                            }
                                        }
                                    }
                                }
                            }
                            mutableService.f78338f.add(mutableAction);
                        }
                    }
                } else if (Descriptor$Service.ELEMENT.serviceStateTable.a(nodeItem)) {
                    NodeList childNodes6 = nodeItem.getChildNodes();
                    for (int i7 = 0; i7 < childNodes6.getLength(); i7++) {
                        Node nodeItem6 = childNodes6.item(i7);
                        if (nodeItem6.getNodeType() == 1 && Descriptor$Service.ELEMENT.stateVariable.a(nodeItem6)) {
                            MutableStateVariable mutableStateVariable = new MutableStateVariable();
                            Element element2 = (Element) nodeItem6;
                            mutableStateVariable.f78343f = new StateVariableEventDetails(element2.getAttribute("sendEvents") != null && element2.getAttribute(Descriptor$Service.ATTRIBUTE.sendEvents.toString()).toUpperCase().equals("YES"));
                            NodeList childNodes7 = element2.getChildNodes();
                            for (int i8 = 0; i8 < childNodes7.getLength(); i8++) {
                                Node nodeItem7 = childNodes7.item(i8);
                                if (nodeItem7.getNodeType() == 1) {
                                    if (Descriptor$Service.ELEMENT.name.a(nodeItem7)) {
                                        mutableStateVariable.f78339a = XMLUtil.e(nodeItem7);
                                    } else if (Descriptor$Service.ELEMENT.dataType.a(nodeItem7)) {
                                        String strE = XMLUtil.e(nodeItem7);
                                        Datatype.Builtin builtinA = Datatype.Builtin.a(strE);
                                        mutableStateVariable.f78340b = builtinA != null ? builtinA.b() : new CustomDatatype(strE);
                                    } else if (Descriptor$Service.ELEMENT.defaultValue.a(nodeItem7)) {
                                        mutableStateVariable.f78341c = XMLUtil.e(nodeItem7);
                                    } else if (Descriptor$Service.ELEMENT.allowedValueList.a(nodeItem7)) {
                                        ArrayList arrayList = new ArrayList();
                                        NodeList childNodes8 = nodeItem7.getChildNodes();
                                        for (int i9 = 0; i9 < childNodes8.getLength(); i9++) {
                                            Node nodeItem8 = childNodes8.item(i9);
                                            if (nodeItem8.getNodeType() == 1 && Descriptor$Service.ELEMENT.allowedValue.a(nodeItem8)) {
                                                arrayList.add(XMLUtil.e(nodeItem8));
                                            }
                                        }
                                        mutableStateVariable.d = arrayList;
                                    } else if (Descriptor$Service.ELEMENT.allowedValueRange.a(nodeItem7)) {
                                        MutableAllowedValueRange mutableAllowedValueRange = new MutableAllowedValueRange();
                                        NodeList childNodes9 = nodeItem7.getChildNodes();
                                        for (int i10 = 0; i10 < childNodes9.getLength(); i10++) {
                                            Node nodeItem9 = childNodes9.item(i10);
                                            if (nodeItem9.getNodeType() == 1) {
                                                if (Descriptor$Service.ELEMENT.minimum.a(nodeItem9)) {
                                                    try {
                                                        mutableAllowedValueRange.f78318a = Long.valueOf(XMLUtil.e(nodeItem9));
                                                    } catch (Exception unused) {
                                                    }
                                                } else if (Descriptor$Service.ELEMENT.maximum.a(nodeItem9)) {
                                                    mutableAllowedValueRange.f78319b = Long.valueOf(XMLUtil.e(nodeItem9));
                                                } else if (Descriptor$Service.ELEMENT.step.a(nodeItem9)) {
                                                    mutableAllowedValueRange.f78320c = Long.valueOf(XMLUtil.e(nodeItem9));
                                                }
                                            }
                                        }
                                        mutableStateVariable.f78342e = mutableAllowedValueRange;
                                    }
                                }
                            }
                            mutableService.g.add(mutableStateVariable);
                        }
                    }
                } else {
                    f78356a.finer("Ignoring unknown element: " + nodeItem.getNodeName());
                }
            }
        }
    }

    @Override // org.teleal.cling.binding.xml.ServiceDescriptorBinder
    public Service a(RemoteService remoteService, String str) throws ValidationException, DescriptorBindingException {
        if (str.length() == 0) {
            return null;
        }
        try {
            f78356a.fine("Populating service from XML descriptor: " + remoteService);
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            return d(remoteService, documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str.trim()))));
        } catch (ValidationException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new DescriptorBindingException(a.j(e3, new StringBuilder("Could not parse service descriptor: ")), e3);
        }
    }

    @Override // org.teleal.cling.binding.xml.ServiceDescriptorBinder
    public final String b(Service service) throws DescriptorBindingException {
        try {
            f78356a.fine("Generating XML descriptor from service model: " + service);
            return XMLUtil.d(c(service));
        } catch (Exception e2) {
            throw new DescriptorBindingException(fc.g(e2, new StringBuilder("Could not build DOM: ")), e2);
        }
    }
}
