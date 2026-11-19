package org.teleal.cling.model.meta;

import defpackage.md;
import java.net.MalformedURLException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.ValidationError;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.profile.ControlPointInfo;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.UDAServiceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Device<DI extends DeviceIdentity, D extends Device, S extends Service> implements Validatable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Logger f78443i = Logger.getLogger(Device.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeviceIdentity f78444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UDAVersion f78445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeviceType f78446c;
    public final DeviceDetails d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Icon[] f78447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Service[] f78448f;
    public final Device[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Device f78449h;

    public Device(DI di, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, D[] dArr) throws ValidationException {
        boolean z;
        boolean z2;
        this.f78444a = di;
        this.f78445b = uDAVersion == null ? new UDAVersion() : uDAVersion;
        this.f78446c = deviceType;
        this.d = deviceDetails;
        boolean z3 = true;
        if (iconArr != null) {
            z = true;
            for (Icon icon : iconArr) {
                if (icon != null) {
                    if (icon.g != null) {
                        md.k("Final value has been set already, model is immutable");
                        throw null;
                    }
                    icon.g = this;
                    z = false;
                }
            }
        } else {
            z = true;
        }
        this.f78447e = (iconArr == null || z) ? new Icon[0] : iconArr;
        if (sArr != null) {
            z2 = true;
            for (S s : sArr) {
                if (s != null) {
                    if (s.f78482e != null) {
                        md.k("Final value has been set already, model is immutable");
                        throw null;
                    }
                    s.f78482e = this;
                    z2 = false;
                }
            }
        } else {
            z2 = true;
        }
        this.f78448f = (sArr == null || z2) ? null : sArr;
        if (dArr != null) {
            for (D d : dArr) {
                if (d != null) {
                    if (d.f78449h != null) {
                        md.k("Final value has been set already, model is immutable");
                        throw null;
                    }
                    d.f78449h = this;
                    z3 = false;
                }
            }
        }
        this.g = (dArr == null || z3) ? null : dArr;
        List listR = r();
        ArrayList arrayList = (ArrayList) listR;
        if (arrayList.size() > 0) {
            Level level = Level.FINEST;
            Logger logger = f78443i;
            if (logger.isLoggable(level)) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    logger.finest(((ValidationError) it.next()).toString());
                }
            }
            throw new ValidationException("Validation of device graph failed, call getErrors() on exception", (List<ValidationError>) listR);
        }
    }

    public static Device b(UDN udn, Device device) {
        if (device.f78444a.f78458a.equals(udn)) {
            return device;
        }
        if (!device.k()) {
            return null;
        }
        for (Device device2 : device.i()) {
            Device deviceB = b(udn, device2);
            if (deviceB != null) {
                return deviceB;
            }
        }
        return null;
    }

    public static HashSet d(Device device) {
        HashSet hashSet = new HashSet();
        if (!device.n()) {
            hashSet.add(device);
        }
        if (device.k()) {
            for (Device device2 : device.i()) {
                hashSet.addAll(d(device2));
            }
        }
        return hashSet;
    }

    public static HashSet f(UDAServiceType uDAServiceType, ServiceId serviceId, Device device) {
        HashSet hashSet = new HashSet();
        if (device.l()) {
            for (Service service : device.j()) {
                if (m(service, uDAServiceType, serviceId)) {
                    hashSet.add(service);
                }
            }
        }
        for (Device device2 : d(device)) {
            if (device2.l()) {
                for (Service service2 : device2.j()) {
                    if (m(service2, uDAServiceType, serviceId)) {
                        hashSet.add(service2);
                    }
                }
            }
        }
        return hashSet;
    }

    public static boolean m(Service service, ServiceType serviceType, ServiceId serviceId) {
        return (serviceType == null || service.f78479a.a(serviceType)) && (serviceId == null || service.f78480b.equals(serviceId));
    }

    public abstract Resource[] a(Namespace namespace);

    public abstract Device c(UDN udn);

    public final Service e(UDAServiceType uDAServiceType) {
        HashSet hashSetF = f(uDAServiceType, null, this);
        if (hashSetF.size() > 0) {
            return (Service) hashSetF.iterator().next();
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78444a.equals(((Device) obj).f78444a);
    }

    public DeviceDetails g(ControlPointInfo controlPointInfo) {
        return this.d;
    }

    public final String h() {
        String str;
        ManufacturerDetails manufacturerDetails;
        String str2;
        ModelDetails modelDetails;
        String str3 = "";
        String strTrim = null;
        DeviceDetails deviceDetails = this.d;
        if (deviceDetails == null || (modelDetails = deviceDetails.d) == null) {
            str = null;
        } else {
            String str4 = modelDetails.f78471a;
            String str5 = modelDetails.f78471a;
            str = modelDetails.f78473c;
            if (str4 != null) {
                strTrim = (str == null || !str4.endsWith(str)) ? str5 : str5.substring(0, str5.length() - str.length());
            }
            if (strTrim != null && (str == null || strTrim.startsWith(str))) {
                str = "";
            }
        }
        StringBuilder sb = new StringBuilder();
        if (deviceDetails != null && (manufacturerDetails = deviceDetails.f78453c) != null) {
            if (strTrim != null && (str2 = manufacturerDetails.f78469a) != null) {
                strTrim = strTrim.startsWith(str2) ? strTrim.substring(deviceDetails.f78453c.f78469a.length()).trim() : strTrim.trim();
            }
            String str6 = deviceDetails.f78453c.f78469a;
            if (str6 != null) {
                sb.append(str6);
            }
        }
        sb.append((strTrim == null || strTrim.length() <= 0) ? "" : " ".concat(strTrim));
        if (str != null && str.length() > 0) {
            str3 = " " + str.trim();
        }
        sb.append(str3);
        return sb.toString();
    }

    public final int hashCode() {
        return this.f78444a.hashCode();
    }

    public abstract Device[] i();

    public abstract Service[] j();

    public final boolean k() {
        i();
        return i().length > 0;
    }

    public final boolean l() {
        j();
        return j().length > 0;
    }

    public final boolean n() {
        return this.f78449h == null;
    }

    public abstract Device o(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, Service[] serviceArr, ArrayList arrayList);

    public abstract Service p(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action[] actionArr, StateVariable[] stateVariableArr);

    public abstract Service[] q(int i2);

    public List r() {
        ArrayList arrayList = new ArrayList();
        if (this.f78446c != null) {
            UDAVersion uDAVersion = this.f78445b;
            uDAVersion.getClass();
            ArrayList arrayList2 = new ArrayList();
            int i2 = uDAVersion.f78495a;
            if (i2 != 1) {
                arrayList2.add(new ValidationError(uDAVersion.getClass(), "major", "UDA major spec version must be 1"));
            }
            if (i2 < 0) {
                arrayList2.add(new ValidationError(uDAVersion.getClass(), "minor", "UDA minor spec version must be equal or greater 0"));
            }
            arrayList.addAll(arrayList2);
            DeviceDetails deviceDetails = this.d;
            if (deviceDetails != null) {
                Logger logger = DeviceDetails.f78450j;
                ArrayList arrayList3 = new ArrayList();
                String str = deviceDetails.f78455f;
                if (str != null) {
                    if (str.length() != 12) {
                        logger.fine("UPnP specification violation, UPC must be 12 digits: ".concat(str));
                    } else {
                        try {
                            Long.parseLong(str);
                        } catch (NumberFormatException unused) {
                            logger.fine("UPnP specification violation, UPC must be 12 digits all-numeric: ".concat(str));
                        }
                    }
                }
                arrayList.addAll(arrayList3);
            }
            Icon[] iconArr = this.f78447e;
            if (iconArr != null && iconArr.length > 0) {
                for (Icon icon : iconArr) {
                    if (icon != null) {
                        URI uri = icon.f78464e;
                        Logger logger2 = Icon.f78460h;
                        ArrayList arrayList4 = new ArrayList();
                        if (icon.f78461a == null) {
                            logger2.warning("UPnP specification violation of: " + icon.g);
                            logger2.warning("Invalid icon, missing mime type: " + icon);
                        }
                        if (icon.f78462b == 0) {
                            logger2.warning("UPnP specification violation of: " + icon.g);
                            logger2.warning("Invalid icon, missing width: " + icon);
                        }
                        if (icon.f78463c == 0) {
                            logger2.warning("UPnP specification violation of: " + icon.g);
                            logger2.warning("Invalid icon, missing height: " + icon);
                        }
                        if (icon.d == 0) {
                            logger2.warning("UPnP specification violation of: " + icon.g);
                            logger2.warning("Invalid icon, missing bitmap depth: " + icon);
                        }
                        if (uri == null) {
                            arrayList4.add(new ValidationError(icon.getClass(), "uri", "URL is required"));
                        }
                        try {
                            if (uri.toURL() == null) {
                                throw new MalformedURLException();
                            }
                        } catch (IllegalArgumentException unused2) {
                        } catch (MalformedURLException e2) {
                            arrayList4.add(new ValidationError(icon.getClass(), "uri", "URL must be valid: " + e2.getMessage()));
                        }
                        arrayList.addAll(arrayList4);
                    }
                }
            }
            if (l()) {
                for (Service service : j()) {
                    if (service != null) {
                        HashMap map = service.d;
                        ArrayList arrayList5 = new ArrayList();
                        if (service.f78479a == null) {
                            arrayList5.add(new ValidationError(service.getClass(), "serviceType", "Service type/info is required"));
                        }
                        if (service.f78480b == null) {
                            arrayList5.add(new ValidationError(service.getClass(), "serviceId", "Service ID is required"));
                        }
                        if (service.b() != null && service.b().length > 0) {
                            for (Action action : service.b()) {
                                String strA = action.a();
                                if (strA != null && strA.length() == 0) {
                                    map.remove("");
                                    String str2 = service.f78482e.d.f78452b;
                                    HashMap map2 = a.f71507a;
                                }
                            }
                        }
                        if (service.c() != null && service.c().length > 0) {
                            for (StateVariable stateVariable : service.c()) {
                                String str3 = stateVariable.f78483a;
                                if (str3 != null && str3.length() == 0) {
                                    map.remove("");
                                }
                            }
                        }
                        arrayList.addAll(arrayList5);
                    }
                }
            }
            if (k()) {
                for (Device device : i()) {
                    if (device != null) {
                        arrayList.addAll(device.r());
                    }
                }
            }
        }
        return arrayList;
    }

    public final String toString() {
        return "(" + getClass().getSimpleName() + ") Identity: " + this.f78444a.toString() + ", Root: " + n();
    }

    public Device(DI di, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr) throws ValidationException {
        this(di, null, deviceType, deviceDetails, iconArr, sArr, null);
    }

    public Device(DI di, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, D[] dArr) throws ValidationException {
        this(di, null, deviceType, deviceDetails, iconArr, sArr, dArr);
    }

    public Device(DI di) throws ValidationException {
        this(di, null, null, null, null, null);
    }
}
