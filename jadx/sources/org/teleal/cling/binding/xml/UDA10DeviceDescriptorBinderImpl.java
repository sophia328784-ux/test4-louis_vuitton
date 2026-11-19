package org.teleal.cling.binding.xml;

import com.linkplay.medialib.FinalDataUtil;
import defpackage.a;
import defpackage.fc;
import defpackage.pq0;
import java.io.StringReader;
import java.net.URI;
import java.net.URL;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.teleal.cling.binding.staging.MutableDevice;
import org.teleal.cling.binding.staging.MutableIcon;
import org.teleal.cling.binding.staging.MutableService;
import org.teleal.cling.binding.staging.MutableUDAVersion;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.XMLUtil;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceDetails;
import org.teleal.cling.model.meta.Icon;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.meta.ManufacturerDetails;
import org.teleal.cling.model.meta.ModelDetails;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.UDAVersion;
import org.teleal.cling.model.profile.ControlPointInfo;
import org.teleal.cling.model.types.DLNACaps;
import org.teleal.cling.model.types.DLNADoc;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.InvalidValueException;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.UDN;
import org.teleal.common.util.Exceptions;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class UDA10DeviceDescriptorBinderImpl implements DeviceDescriptorBinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f78346a = Logger.getLogger(DeviceDescriptorBinder.class.getName());

    public static Document c(Device device, ControlPointInfo controlPointInfo, Namespace namespace) throws DescriptorBindingException {
        try {
            f78346a.fine("Generating DOM from device model: " + device);
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            f(namespace, device, documentNewDocument, controlPointInfo);
            return documentNewDocument;
        } catch (Exception e2) {
            throw new DescriptorBindingException(fc.g(e2, new StringBuilder("Could not generate device descriptor: ")), e2);
        }
    }

    public static Device d(Device device, Document document) throws ValidationException, DescriptorBindingException {
        try {
            f78346a.fine("Populating device from DOM: " + device);
            MutableDevice mutableDevice = new MutableDevice();
            h(mutableDevice, document.getDocumentElement());
            MutableUDAVersion mutableUDAVersion = mutableDevice.f78322b;
            return mutableDevice.a(device, new UDAVersion(mutableUDAVersion.f78344a, mutableUDAVersion.f78345b), mutableDevice.f78323c);
        } catch (ValidationException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new DescriptorBindingException(a.j(e3, new StringBuilder("Could not parse device DOM: ")), e3);
        }
    }

    public static void e(Namespace namespace, Device device, Document document, Element element, ControlPointInfo controlPointInfo) {
        Element elementA = XMLUtil.a(document, element, Descriptor$Device.ELEMENT.device);
        Descriptor$Device.ELEMENT element2 = Descriptor$Device.ELEMENT.deviceType;
        DeviceType deviceType = device.f78446c;
        Icon[] iconArr = device.f78447e;
        XMLUtil.c(document, elementA, element2, deviceType);
        XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.UDN, device.f78444a.f78458a);
        DeviceDetails deviceDetailsG = device.g(controlPointInfo);
        Descriptor$Device.ELEMENT element3 = Descriptor$Device.ELEMENT.friendlyName;
        String str = deviceDetailsG.f78452b;
        ModelDetails modelDetails = deviceDetailsG.d;
        XMLUtil.c(document, elementA, element3, str);
        ManufacturerDetails manufacturerDetails = deviceDetailsG.f78453c;
        if (manufacturerDetails != null) {
            XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.manufacturer, manufacturerDetails.f78469a);
            XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.manufacturerURL, manufacturerDetails.f78470b);
        }
        if (modelDetails != null) {
            XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.modelDescription, modelDetails.f78472b);
            XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.modelName, modelDetails.f78471a);
            XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.modelNumber, modelDetails.f78473c);
            XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.modelURL, modelDetails.d);
        }
        XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.serialNumber, deviceDetailsG.f78454e);
        XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.presentationURL, deviceDetailsG.g);
        XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.UPC, deviceDetailsG.f78455f);
        DLNADoc[] dLNADocArr = deviceDetailsG.f78456h;
        if (dLNADocArr != null) {
            for (DLNADoc dLNADoc : dLNADocArr) {
                String str2 = "dlna:" + Descriptor$Device.ELEMENT.X_DLNADOC;
                if (dLNADoc != null) {
                    XMLUtil.b(document, elementA, str2, dLNADoc, "urn:schemas-dlna-org:device-1-0");
                }
            }
        }
        String str3 = "dlna:" + Descriptor$Device.ELEMENT.X_DLNACAP;
        DLNACaps dLNACaps = deviceDetailsG.f78457i;
        if (dLNACaps != null) {
            XMLUtil.b(document, elementA, str3, dLNACaps, "urn:schemas-dlna-org:device-1-0");
        }
        if (iconArr != null && iconArr.length > 0) {
            Element elementA2 = XMLUtil.a(document, elementA, Descriptor$Device.ELEMENT.iconList);
            for (Icon icon : iconArr) {
                Element elementA3 = XMLUtil.a(document, elementA2, Descriptor$Device.ELEMENT.icon);
                XMLUtil.c(document, elementA3, Descriptor$Device.ELEMENT.mimetype, icon.f78461a);
                XMLUtil.c(document, elementA3, Descriptor$Device.ELEMENT.width, Integer.valueOf(icon.f78462b));
                XMLUtil.c(document, elementA3, Descriptor$Device.ELEMENT.height, Integer.valueOf(icon.f78463c));
                XMLUtil.c(document, elementA3, Descriptor$Device.ELEMENT.depth, Integer.valueOf(icon.d));
                XMLUtil.c(document, elementA3, Descriptor$Device.ELEMENT.url, icon.f78464e);
            }
        }
        if (device.l()) {
            Element elementA4 = XMLUtil.a(document, elementA, Descriptor$Device.ELEMENT.serviceList);
            for (Service service : device.j()) {
                Element elementA5 = XMLUtil.a(document, elementA4, Descriptor$Device.ELEMENT.service);
                XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.serviceType, service.f78479a);
                XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.serviceId, service.f78480b);
                if (service instanceof RemoteService) {
                    RemoteService remoteService = (RemoteService) service;
                    XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.controlURL, remoteService.g);
                    XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.eventSubURL, remoteService.f78478h);
                    XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.SCPDURL, remoteService.f78477f);
                } else if (service instanceof LocalService) {
                    LocalService localService = (LocalService) service;
                    XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.controlURL, URI.create(namespace.d(localService).toString() + "/action"));
                    XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.eventSubURL, namespace.b(localService));
                    XMLUtil.c(document, elementA5, Descriptor$Device.ELEMENT.SCPDURL, URI.create(namespace.d(localService).toString() + "/desc.xml"));
                }
            }
        }
        if (device.k()) {
            Element elementA6 = XMLUtil.a(document, elementA, Descriptor$Device.ELEMENT.deviceList);
            for (Device device2 : device.i()) {
                e(namespace, device2, document, elementA6, controlPointInfo);
            }
        }
    }

    public static void f(Namespace namespace, Device device, Document document, ControlPointInfo controlPointInfo) {
        Element elementCreateElementNS = document.createElementNS("urn:schemas-upnp-org:device-1-0", Descriptor$Device.ELEMENT.root.toString());
        document.appendChild(elementCreateElementNS);
        Element elementA = XMLUtil.a(document, elementCreateElementNS, Descriptor$Device.ELEMENT.specVersion);
        XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.major, Integer.valueOf(device.f78445b.f78495a));
        XMLUtil.c(document, elementA, Descriptor$Device.ELEMENT.minor, Integer.valueOf(device.f78445b.f78496b));
        e(namespace, device, document, elementCreateElementNS, controlPointInfo);
    }

    public static void g(MutableDevice mutableDevice, Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1) {
                if (Descriptor$Device.ELEMENT.deviceType.a(nodeItem)) {
                    mutableDevice.d = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.friendlyName.a(nodeItem)) {
                    mutableDevice.f78324e = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.manufacturer.a(nodeItem)) {
                    mutableDevice.f78325f = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.manufacturerURL.a(nodeItem)) {
                    mutableDevice.g = i(XMLUtil.e(nodeItem));
                } else if (Descriptor$Device.ELEMENT.modelDescription.a(nodeItem)) {
                    mutableDevice.f78327i = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.modelName.a(nodeItem)) {
                    mutableDevice.f78326h = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.modelNumber.a(nodeItem)) {
                    mutableDevice.f78328j = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.modelURL.a(nodeItem)) {
                    mutableDevice.f78329k = i(XMLUtil.e(nodeItem));
                } else if (Descriptor$Device.ELEMENT.presentationURL.a(nodeItem)) {
                    mutableDevice.n = i(XMLUtil.e(nodeItem));
                } else if (Descriptor$Device.ELEMENT.UPC.a(nodeItem)) {
                    mutableDevice.m = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.serialNumber.a(nodeItem)) {
                    mutableDevice.l = XMLUtil.e(nodeItem);
                } else if (Descriptor$Device.ELEMENT.UDN.a(nodeItem)) {
                    mutableDevice.f78321a = UDN.a(XMLUtil.e(nodeItem));
                } else if (Descriptor$Device.ELEMENT.iconList.a(nodeItem)) {
                    NodeList childNodes2 = nodeItem.getChildNodes();
                    for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                        Node nodeItem2 = childNodes2.item(i3);
                        if (nodeItem2.getNodeType() == 1 && Descriptor$Device.ELEMENT.icon.a(nodeItem2)) {
                            MutableIcon mutableIcon = new MutableIcon();
                            NodeList childNodes3 = nodeItem2.getChildNodes();
                            for (int i4 = 0; i4 < childNodes3.getLength(); i4++) {
                                Node nodeItem3 = childNodes3.item(i4);
                                if (nodeItem3.getNodeType() == 1) {
                                    if (Descriptor$Device.ELEMENT.width.a(nodeItem3)) {
                                        mutableIcon.f78331b = Integer.valueOf(XMLUtil.e(nodeItem3)).intValue();
                                    } else if (Descriptor$Device.ELEMENT.height.a(nodeItem3)) {
                                        mutableIcon.f78332c = Integer.valueOf(XMLUtil.e(nodeItem3)).intValue();
                                    } else if (Descriptor$Device.ELEMENT.depth.a(nodeItem3)) {
                                        mutableIcon.d = Integer.valueOf(XMLUtil.e(nodeItem3)).intValue();
                                    } else if (Descriptor$Device.ELEMENT.url.a(nodeItem3)) {
                                        mutableIcon.f78333e = i(XMLUtil.e(nodeItem3));
                                    } else if (Descriptor$Device.ELEMENT.mimetype.a(nodeItem3)) {
                                        mutableIcon.f78330a = XMLUtil.e(nodeItem3);
                                    }
                                }
                            }
                            mutableDevice.q.add(mutableIcon);
                        }
                    }
                } else if (Descriptor$Device.ELEMENT.serviceList.a(nodeItem)) {
                    NodeList childNodes4 = nodeItem.getChildNodes();
                    for (int i5 = 0; i5 < childNodes4.getLength(); i5++) {
                        Node nodeItem4 = childNodes4.item(i5);
                        if (nodeItem4.getNodeType() == 1 && Descriptor$Device.ELEMENT.service.a(nodeItem4)) {
                            MutableService mutableService = new MutableService();
                            NodeList childNodes5 = nodeItem4.getChildNodes();
                            for (int i6 = 0; i6 < childNodes5.getLength(); i6++) {
                                Node nodeItem5 = childNodes5.item(i6);
                                if (nodeItem5.getNodeType() == 1) {
                                    if (Descriptor$Device.ELEMENT.serviceType.a(nodeItem5)) {
                                        mutableService.f78334a = ServiceType.b(XMLUtil.e(nodeItem5));
                                    } else if (Descriptor$Device.ELEMENT.serviceId.a(nodeItem5)) {
                                        mutableService.f78335b = ServiceId.a(XMLUtil.e(nodeItem5));
                                    } else if (Descriptor$Device.ELEMENT.SCPDURL.a(nodeItem5)) {
                                        mutableService.f78336c = i(XMLUtil.e(nodeItem5));
                                    } else if (Descriptor$Device.ELEMENT.controlURL.a(nodeItem5)) {
                                        mutableService.d = i(XMLUtil.e(nodeItem5));
                                    } else if (Descriptor$Device.ELEMENT.eventSubURL.a(nodeItem5)) {
                                        mutableService.f78337e = i(XMLUtil.e(nodeItem5));
                                    }
                                }
                            }
                            mutableDevice.r.add(mutableService);
                        }
                    }
                } else if (Descriptor$Device.ELEMENT.deviceList.a(nodeItem)) {
                    NodeList childNodes6 = nodeItem.getChildNodes();
                    for (int i7 = 0; i7 < childNodes6.getLength(); i7++) {
                        Node nodeItem6 = childNodes6.item(i7);
                        if (nodeItem6.getNodeType() == 1 && Descriptor$Device.ELEMENT.device.a(nodeItem6)) {
                            MutableDevice mutableDevice2 = new MutableDevice();
                            mutableDevice.s.add(mutableDevice2);
                            g(mutableDevice2, nodeItem6);
                        }
                    }
                } else if (Descriptor$Device.ELEMENT.X_DLNADOC.a(nodeItem) && "dlna".equals(nodeItem.getPrefix())) {
                    String strE = XMLUtil.e(nodeItem);
                    try {
                        mutableDevice.o.add(DLNADoc.a(strE));
                    } catch (InvalidValueException unused) {
                        f78346a.info("Invalid X_DLNADOC value, ignoring value: " + strE);
                    }
                } else if (Descriptor$Device.ELEMENT.X_DLNACAP.a(nodeItem) && "dlna".equals(nodeItem.getPrefix())) {
                    mutableDevice.p = DLNACaps.a(XMLUtil.e(nodeItem));
                }
            }
        }
    }

    public static void h(MutableDevice mutableDevice, Element element) throws DescriptorBindingException {
        String namespaceURI = element.getNamespaceURI();
        Logger logger = f78346a;
        if (namespaceURI == null || !element.getNamespaceURI().equals("urn:schemas-upnp-org:device-1-0")) {
            logger.warning("Wrong XML namespace declared on root element: " + element.getNamespaceURI());
        }
        if (!element.getNodeName().equals(Descriptor$Device.ELEMENT.root.name())) {
            throw new DescriptorBindingException("Root element name is not <root>: " + element.getNodeName());
        }
        NodeList childNodes = element.getChildNodes();
        Node node = null;
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1) {
                if (Descriptor$Device.ELEMENT.specVersion.a(nodeItem)) {
                    NodeList childNodes2 = nodeItem.getChildNodes();
                    for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                        Node nodeItem2 = childNodes2.item(i3);
                        if (nodeItem2.getNodeType() == 1) {
                            if (Descriptor$Device.ELEMENT.major.a(nodeItem2)) {
                                mutableDevice.f78322b.f78344a = Integer.valueOf(XMLUtil.e(nodeItem2)).intValue();
                            } else if (Descriptor$Device.ELEMENT.minor.a(nodeItem2)) {
                                mutableDevice.f78322b.f78345b = Integer.valueOf(XMLUtil.e(nodeItem2)).intValue();
                            }
                        }
                    }
                } else if (Descriptor$Device.ELEMENT.URLBase.a(nodeItem)) {
                    try {
                        mutableDevice.f78323c = new URL(XMLUtil.e(nodeItem));
                    } catch (Exception e2) {
                        throw new DescriptorBindingException(fc.g(e2, new StringBuilder("Invalid URLBase: ")));
                    }
                } else if (!Descriptor$Device.ELEMENT.device.a(nodeItem)) {
                    logger.finer("Ignoring unknown element: " + nodeItem.getNodeName());
                } else {
                    if (node != null) {
                        throw new DescriptorBindingException("Found multiple <device> elements in <root>");
                    }
                    node = nodeItem;
                }
            }
        }
        if (node == null) {
            throw new DescriptorBindingException("No <device> element in <root>");
        }
        g(mutableDevice, node);
    }

    public static URI i(String str) {
        if (str.startsWith("www.")) {
            str = FinalDataUtil.HTTP_HEAD.concat(str);
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException e2) {
            String str2 = "Illegal URI, trying with ./ prefix: " + Exceptions.a(e2);
            Logger logger = f78346a;
            logger.fine(str2);
            try {
                return URI.create("./".concat(str));
            } catch (IllegalArgumentException e3) {
                StringBuilder sbR = pq0.r("Illegal URI '", str, "', ignoring value: ");
                sbR.append(Exceptions.a(e3));
                logger.warning(sbR.toString());
                return null;
            }
        }
    }

    @Override // org.teleal.cling.binding.xml.DeviceDescriptorBinder
    public final String a(Device device, ControlPointInfo controlPointInfo, Namespace namespace) throws DescriptorBindingException {
        try {
            f78346a.fine("Generating XML descriptor from device model: " + device);
            return XMLUtil.d(c(device, controlPointInfo, namespace));
        } catch (Exception e2) {
            throw new DescriptorBindingException(fc.g(e2, new StringBuilder("Could not build DOM: ")), e2);
        }
    }

    @Override // org.teleal.cling.binding.xml.DeviceDescriptorBinder
    public Device b(Device device, String str) throws ValidationException, DescriptorBindingException {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            f78346a.fine("Populating device from XML descriptor: " + device);
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            return d(device, documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str.trim()))));
        } catch (ValidationException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new DescriptorBindingException(a.j(e3, new StringBuilder("Could not parse device descriptor: ")), e3);
        }
    }
}
