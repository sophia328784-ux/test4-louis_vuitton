package org.teleal.cling.binding.xml;

import defpackage.a;
import java.io.StringReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.teleal.cling.binding.staging.MutableDevice;
import org.teleal.cling.binding.staging.MutableIcon;
import org.teleal.cling.binding.staging.MutableService;
import org.teleal.cling.binding.staging.MutableUDAVersion;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.UDAVersion;
import org.teleal.cling.model.types.DLNACaps;
import org.teleal.cling.model.types.DLNADoc;
import org.teleal.cling.model.types.InvalidValueException;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.UDN;
import org.teleal.common.xml.ParserException;
import org.teleal.common.xml.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes5.dex */
public class UDA10DeviceDescriptorBinderSAXImpl extends UDA10DeviceDescriptorBinderImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78347b = Logger.getLogger(DeviceDescriptorBinder.class.getName());

    /* JADX INFO: renamed from: org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f78348a;

        static {
            int[] iArr = new int[Descriptor$Device.ELEMENT.values().length];
            f78348a = iArr;
            try {
                iArr[Descriptor$Device.ELEMENT.URLBase.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.major.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.minor.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.deviceType.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.friendlyName.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.ssidName.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.uuid.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.manufacturer.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.manufacturerURL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.modelDescription.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.modelName.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.modelNumber.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.modelURL.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.presentationURL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.UPC.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.serialNumber.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.UDN.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.X_DLNADOC.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.X_DLNACAP.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.width.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.height.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.depth.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.url.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.mimetype.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.serviceType.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.serviceId.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.SCPDURL.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.controlURL.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f78348a[Descriptor$Device.ELEMENT.eventSubURL.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    public static class DeviceHandler extends DeviceDescriptorHandler<MutableDevice> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78349f = Descriptor$Device.ELEMENT.device;

        public DeviceHandler(MutableDevice mutableDevice, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableDevice, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void b(Descriptor$Device.ELEMENT element) {
            int i2 = AnonymousClass1.f78348a[element.ordinal()];
            Object obj = this.f78653b;
            switch (i2) {
                case 4:
                    ((MutableDevice) obj).d = this.d.toString();
                    break;
                case 5:
                    ((MutableDevice) obj).f78324e = this.d.toString();
                    break;
                case 6:
                    ((MutableDevice) obj).t = this.d.toString();
                    break;
                case 7:
                    ((MutableDevice) obj).u = this.d.toString();
                    break;
                case 8:
                    ((MutableDevice) obj).f78325f = this.d.toString();
                    break;
                case 9:
                    ((MutableDevice) obj).g = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
                case 10:
                    ((MutableDevice) obj).f78327i = this.d.toString();
                    break;
                case 11:
                    ((MutableDevice) obj).f78326h = this.d.toString();
                    break;
                case 12:
                    ((MutableDevice) obj).f78328j = this.d.toString();
                    break;
                case 13:
                    ((MutableDevice) obj).f78329k = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
                case 14:
                    ((MutableDevice) obj).n = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
                case 15:
                    ((MutableDevice) obj).m = this.d.toString();
                    break;
                case 16:
                    ((MutableDevice) obj).l = this.d.toString();
                    break;
                case 17:
                    ((MutableDevice) obj).f78321a = UDN.a(this.d.toString());
                    break;
                case 18:
                    String string = this.d.toString();
                    try {
                        ((MutableDevice) obj).o.add(DLNADoc.a(string));
                    } catch (InvalidValueException unused) {
                        UDA10DeviceDescriptorBinderSAXImpl.f78347b.info("Invalid X_DLNADOC value, ignoring value: ".concat(string));
                        return;
                    }
                    break;
                case 19:
                    ((MutableDevice) obj).p = DLNACaps.a(this.d.toString());
                    break;
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78349f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void d(Descriptor$Device.ELEMENT element) {
            boolean zEquals = element.equals(IconListHandler.f78352f);
            Object obj = this.f78653b;
            if (zEquals) {
                ArrayList arrayList = new ArrayList();
                ((MutableDevice) obj).q = arrayList;
                new IconListHandler(arrayList, this);
            }
            if (element.equals(ServiceListHandler.f78354f)) {
                ArrayList arrayList2 = new ArrayList();
                ((MutableDevice) obj).r = arrayList2;
                new ServiceListHandler(arrayList2, this);
            }
            if (element.equals(DeviceListHandler.f78350f)) {
                ArrayList arrayList3 = new ArrayList();
                ((MutableDevice) obj).s = arrayList3;
                new DeviceListHandler(arrayList3, this);
            }
        }
    }

    public static class DeviceListHandler extends DeviceDescriptorHandler<List<MutableDevice>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78350f = Descriptor$Device.ELEMENT.deviceList;

        public DeviceListHandler(List<MutableDevice> list, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(list, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78350f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void d(Descriptor$Device.ELEMENT element) {
            if (element.equals(DeviceHandler.f78349f)) {
                MutableDevice mutableDevice = new MutableDevice();
                ((List) this.f78653b).add(mutableDevice);
                new DeviceHandler(mutableDevice, this);
            }
        }
    }

    public static class IconHandler extends DeviceDescriptorHandler<MutableIcon> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78351f = Descriptor$Device.ELEMENT.icon;

        public IconHandler(MutableIcon mutableIcon, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableIcon, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void b(Descriptor$Device.ELEMENT element) {
            int i2 = AnonymousClass1.f78348a[element.ordinal()];
            Object obj = this.f78653b;
            switch (i2) {
                case 20:
                    ((MutableIcon) obj).f78331b = Integer.valueOf(this.d.toString()).intValue();
                    break;
                case 21:
                    ((MutableIcon) obj).f78332c = Integer.valueOf(this.d.toString()).intValue();
                    break;
                case 22:
                    ((MutableIcon) obj).d = Integer.valueOf(this.d.toString()).intValue();
                    break;
                case 23:
                    ((MutableIcon) obj).f78333e = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
                case 24:
                    ((MutableIcon) obj).f78330a = this.d.toString();
                    break;
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78351f);
        }
    }

    public static class IconListHandler extends DeviceDescriptorHandler<List<MutableIcon>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78352f = Descriptor$Device.ELEMENT.iconList;

        public IconListHandler(List<MutableIcon> list, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(list, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78352f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void d(Descriptor$Device.ELEMENT element) {
            if (element.equals(IconHandler.f78351f)) {
                MutableIcon mutableIcon = new MutableIcon();
                ((List) this.f78653b).add(mutableIcon);
                new IconHandler(mutableIcon, this);
            }
        }
    }

    public static class RootHandler extends DeviceDescriptorHandler<MutableDevice> {
        public RootHandler(MutableDevice mutableDevice, SAXParser sAXParser) {
            super(mutableDevice, sAXParser);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void b(Descriptor$Device.ELEMENT element) throws SAXException {
            if (AnonymousClass1.f78348a[element.ordinal()] != 1) {
                return;
            }
            try {
                ((MutableDevice) this.f78653b).f78323c = new URL(this.d.toString());
            } catch (Exception e2) {
                throw new SAXException(a.j(e2, new StringBuilder("Invalid URLBase: ")));
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void d(Descriptor$Device.ELEMENT element) {
            boolean zEquals = element.equals(SpecVersionHandler.f78355f);
            Object obj = this.f78653b;
            if (zEquals) {
                MutableUDAVersion mutableUDAVersion = new MutableUDAVersion();
                ((MutableDevice) obj).f78322b = mutableUDAVersion;
                new SpecVersionHandler(mutableUDAVersion, this);
            }
            if (element.equals(DeviceHandler.f78349f)) {
                new DeviceHandler((MutableDevice) obj, this);
            }
        }
    }

    public static class ServiceHandler extends DeviceDescriptorHandler<MutableService> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78353f = Descriptor$Device.ELEMENT.service;

        public ServiceHandler(MutableService mutableService, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableService, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void b(Descriptor$Device.ELEMENT element) {
            int i2 = AnonymousClass1.f78348a[element.ordinal()];
            Object obj = this.f78653b;
            switch (i2) {
                case 25:
                    ((MutableService) obj).f78334a = ServiceType.b(this.d.toString());
                    break;
                case 26:
                    ((MutableService) obj).f78335b = ServiceId.a(this.d.toString());
                    break;
                case 27:
                    ((MutableService) obj).f78336c = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
                case 28:
                    ((MutableService) obj).d = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
                case 29:
                    ((MutableService) obj).f78337e = UDA10DeviceDescriptorBinderImpl.i(this.d.toString());
                    break;
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78353f);
        }
    }

    public static class ServiceListHandler extends DeviceDescriptorHandler<List<MutableService>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78354f = Descriptor$Device.ELEMENT.serviceList;

        public ServiceListHandler(List<MutableService> list, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(list, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78354f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void d(Descriptor$Device.ELEMENT element) {
            if (element.equals(ServiceHandler.f78353f)) {
                MutableService mutableService = new MutableService();
                ((List) this.f78653b).add(mutableService);
                new ServiceHandler(mutableService, this);
            }
        }
    }

    public static class SpecVersionHandler extends DeviceDescriptorHandler<MutableUDAVersion> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Device.ELEMENT f78355f = Descriptor$Device.ELEMENT.specVersion;

        public SpecVersionHandler(MutableUDAVersion mutableUDAVersion, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableUDAVersion, deviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final void b(Descriptor$Device.ELEMENT element) {
            int i2 = AnonymousClass1.f78348a[element.ordinal()];
            Object obj = this.f78653b;
            if (i2 == 2) {
                ((MutableUDAVersion) obj).f78344a = Integer.valueOf(this.d.toString()).intValue();
            } else {
                if (i2 != 3) {
                    return;
                }
                ((MutableUDAVersion) obj).f78345b = Integer.valueOf(this.d.toString()).intValue();
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl.DeviceDescriptorHandler
        public final boolean c(Descriptor$Device.ELEMENT element) {
            return element.equals(f78355f);
        }
    }

    @Override // org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderImpl, org.teleal.cling.binding.xml.DeviceDescriptorBinder
    public final Device b(Device device, String str) throws ValidationException, DescriptorBindingException {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            f78347b.fine("Populating device from XML descriptor: " + device);
            SAXParser sAXParser = new SAXParser();
            MutableDevice mutableDevice = new MutableDevice();
            new RootHandler(mutableDevice, sAXParser);
            try {
                sAXParser.f78651a.parse(new InputSource(new StringReader(str.trim())));
                MutableUDAVersion mutableUDAVersion = mutableDevice.f78322b;
                return mutableDevice.a(device, new UDAVersion(mutableUDAVersion.f78344a, mutableUDAVersion.f78345b), mutableDevice.f78323c);
            } catch (Exception e2) {
                throw new ParserException(e2);
            }
        } catch (ValidationException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new DescriptorBindingException(a.j(e4, new StringBuilder("Could not parse device descriptor: ")), e4);
        }
    }

    public static class DeviceDescriptorHandler<I> extends SAXParser.Handler<I> {
        public DeviceDescriptorHandler(I i2) {
            super(i2);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            Descriptor$Device.ELEMENT elementValueOf;
            try {
                elementValueOf = Descriptor$Device.ELEMENT.valueOf(str2);
            } catch (IllegalArgumentException unused) {
                elementValueOf = null;
            }
            return elementValueOf != null && c(elementValueOf);
        }

        public void b(Descriptor$Device.ELEMENT element) {
        }

        public boolean c(Descriptor$Device.ELEMENT element) {
            return false;
        }

        public void d(Descriptor$Device.ELEMENT element) {
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            Descriptor$Device.ELEMENT elementValueOf;
            super.endElement(str, str2, str3);
            try {
                elementValueOf = Descriptor$Device.ELEMENT.valueOf(str2);
            } catch (IllegalArgumentException unused) {
                elementValueOf = null;
            }
            if (elementValueOf == null) {
                return;
            }
            b(elementValueOf);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            Descriptor$Device.ELEMENT elementValueOf;
            super.startElement(str, str2, str3, attributes);
            try {
                elementValueOf = Descriptor$Device.ELEMENT.valueOf(str2);
            } catch (IllegalArgumentException unused) {
                elementValueOf = null;
            }
            if (elementValueOf == null) {
                return;
            }
            d(elementValueOf);
        }

        public DeviceDescriptorHandler(I i2, SAXParser sAXParser) {
            super(i2, sAXParser);
        }

        public DeviceDescriptorHandler(I i2, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(i2, deviceDescriptorHandler);
        }

        public DeviceDescriptorHandler(I i2, SAXParser sAXParser, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(i2, sAXParser, deviceDescriptorHandler);
        }
    }
}
