package org.teleal.cling.model.meta;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.ValidationError;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.profile.ControlPointInfo;
import org.teleal.cling.model.profile.DeviceDetailsProvider;
import org.teleal.cling.model.resource.DeviceDescriptorResource;
import org.teleal.cling.model.resource.IconResource;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.resource.ServiceControlResource;
import org.teleal.cling.model.resource.ServiceDescriptorResource;
import org.teleal.cling.model.resource.ServiceEventSubscriptionResource;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class LocalDevice extends Device<DeviceIdentity, LocalDevice, LocalService> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DeviceDetailsProvider f78466j;

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.f78466j = null;
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Resource[] a(Namespace namespace) {
        ArrayList arrayList = new ArrayList();
        if (n()) {
            arrayList.add(new DeviceDescriptorResource(namespace.a(this), this));
        }
        Service[] serviceArr = this.f78448f;
        for (LocalService localService : serviceArr != null ? (LocalService[]) serviceArr : new LocalService[0]) {
            arrayList.add(new ServiceDescriptorResource(URI.create(namespace.d(localService).toString() + "/desc.xml"), localService));
            arrayList.add(new ServiceControlResource(URI.create(namespace.d(localService).toString() + "/action"), localService));
            arrayList.add(new ServiceEventSubscriptionResource(namespace.b(localService), localService));
        }
        for (Icon icon : this.f78447e) {
            URI uriCreate = icon.f78464e;
            if (!uriCreate.isAbsolute() && !uriCreate.getPath().startsWith("/")) {
                uriCreate = URI.create(namespace.c(this).toString() + "/" + uriCreate.toString());
            }
            arrayList.add(new IconResource(uriCreate, icon));
        }
        if (k()) {
            Device[] deviceArr = this.g;
            for (LocalDevice localDevice : deviceArr != null ? (LocalDevice[]) deviceArr : new LocalDevice[0]) {
                arrayList.addAll(Arrays.asList(localDevice.a(namespace)));
            }
        }
        return (Resource[]) arrayList.toArray(new Resource[arrayList.size()]);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Device c(UDN udn) {
        return (LocalDevice) Device.b(udn, this);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final DeviceDetails g(ControlPointInfo controlPointInfo) {
        DeviceDetailsProvider deviceDetailsProvider = this.f78466j;
        return deviceDetailsProvider != null ? deviceDetailsProvider.a() : this.d;
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Device[] i() {
        Device[] deviceArr = this.g;
        return deviceArr != null ? (LocalDevice[]) deviceArr : new LocalDevice[0];
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Service[] j() {
        Service[] serviceArr = this.f78448f;
        return serviceArr != null ? (LocalService[]) serviceArr : new LocalService[0];
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Device o(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, Service[] serviceArr, ArrayList arrayList) {
        return new LocalDevice(new DeviceIdentity(udn, this.f78444a.f78459b), uDAVersion, deviceType, deviceDetails, iconArr, (LocalService[]) serviceArr, arrayList.size() > 0 ? (LocalDevice[]) arrayList.toArray(new LocalDevice[arrayList.size()]) : null);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Service p(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action[] actionArr, StateVariable[] stateVariableArr) {
        return new LocalService(serviceType, serviceId, actionArr, stateVariableArr);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Service[] q(int i2) {
        return new LocalService[i2];
    }

    @Override // org.teleal.cling.model.meta.Device
    public final List r() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.r());
        Icon[] iconArr = this.f78447e;
        if (iconArr != null && iconArr.length > 0) {
            for (Icon icon : iconArr) {
                URI uri = icon.f78464e;
                if (uri.isAbsolute()) {
                    arrayList.add(new ValidationError(getClass(), "icons", "Local icon URI can not be absolute: " + uri));
                }
                if (uri.toString().contains("../")) {
                    arrayList.add(new ValidationError(getClass(), "icons", "Local icon URI must not contain '../': " + uri));
                }
                if (uri.toString().startsWith("/")) {
                    arrayList.add(new ValidationError(getClass(), "icons", "Local icon URI must not start with '/': " + uri));
                }
            }
        }
        return arrayList;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, new LocalService[]{localService});
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, null, null, new LocalService[]{localService});
        this.f78466j = deviceDetailsProvider;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, null, null, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.f78466j = deviceDetailsProvider;
    }

    public LocalDevice(DeviceIdentity deviceIdentity) throws ValidationException {
        super(deviceIdentity);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, localServiceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, localServiceArr, localDeviceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new LocalService[]{localService});
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, localServiceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider, Icon icon, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, null, new Icon[]{icon}, localServiceArr);
        this.f78466j = deviceDetailsProvider;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, localServiceArr, localDeviceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, new LocalService[]{localService});
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider, Icon[] iconArr, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, null, iconArr, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.f78466j = deviceDetailsProvider;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, localServiceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, localServiceArr, localDeviceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, uDAVersion, deviceType, deviceDetails, iconArr, localServiceArr, localDeviceArr);
        this.f78466j = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider, Icon[] iconArr, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, uDAVersion, deviceType, null, iconArr, localServiceArr, localDeviceArr);
        this.f78466j = deviceDetailsProvider;
    }
}
