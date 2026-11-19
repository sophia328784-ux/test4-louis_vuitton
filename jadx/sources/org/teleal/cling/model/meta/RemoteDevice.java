package org.teleal.cling.model.meta;

import com.linkplay.log.LinkplayLog;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.resource.ServiceEventCallbackResource;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.UDN;
import org.teleal.common.util.URIUtil;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteDevice extends Device<RemoteDeviceIdentity, RemoteDevice, RemoteService> {
    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService remoteService, RemoteDevice remoteDevice) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, new RemoteService[]{remoteService}, new RemoteDevice[]{remoteDevice});
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Resource[] a(Namespace namespace) {
        ArrayList arrayList = new ArrayList();
        Service[] serviceArr = this.f78448f;
        for (RemoteService remoteService : serviceArr != null ? (RemoteService[]) serviceArr : new RemoteService[0]) {
            if (remoteService != null) {
                arrayList.add(new ServiceEventCallbackResource(URI.create(namespace.b(remoteService).toString() + "/cb.xml"), remoteService));
            }
        }
        if (k()) {
            Device[] deviceArr = this.g;
            for (RemoteDevice remoteDevice : deviceArr != null ? (RemoteDevice[]) deviceArr : new RemoteDevice[0]) {
                if (remoteDevice != null) {
                    arrayList.addAll(Arrays.asList(remoteDevice.a(namespace)));
                }
            }
        }
        return (Resource[]) arrayList.toArray(new Resource[arrayList.size()]);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Device c(UDN udn) {
        return (RemoteDevice) Device.b(udn, this);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Device[] i() {
        Device[] deviceArr = this.g;
        return deviceArr != null ? (RemoteDevice[]) deviceArr : new RemoteDevice[0];
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Service[] j() {
        Service[] serviceArr = this.f78448f;
        return serviceArr != null ? (RemoteService[]) serviceArr : new RemoteService[0];
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Service p(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action[] actionArr, StateVariable[] stateVariableArr) {
        return new RemoteService(serviceType, serviceId, uri, uri2, uri3, actionArr, stateVariableArr);
    }

    @Override // org.teleal.cling.model.meta.Device
    public final Service[] q(int i2) {
        return new RemoteService[i2];
    }

    @Override // org.teleal.cling.model.meta.Device
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final RemoteDevice o(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr, ArrayList arrayList) {
        return new RemoteDevice(new RemoteDeviceIdentity(udn, (RemoteDeviceIdentity) this.f78444a), uDAVersion, deviceType, deviceDetails, iconArr, remoteServiceArr, arrayList.size() > 0 ? (RemoteDevice[]) arrayList.toArray(new RemoteDevice[arrayList.size()]) : null);
    }

    public final URL t(URI uri) {
        URL url;
        DeviceDetails deviceDetails = this.d;
        if (deviceDetails != null && (url = deviceDetails.f78451a) != null) {
            return URIUtil.b(url, uri);
        }
        DeviceIdentity deviceIdentity = this.f78444a;
        if (deviceIdentity != null && ((RemoteDeviceIdentity) deviceIdentity).f78474c != null) {
            return URIUtil.b(((RemoteDeviceIdentity) deviceIdentity).f78474c, uri);
        }
        LinkplayLog.i("UPNP-SEARCH", "descriptionURL is null.");
        return null;
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService remoteService) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, new RemoteService[]{remoteService});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity) throws ValidationException {
        super(remoteDeviceIdentity);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService[] remoteServiceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, remoteServiceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService remoteService) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new RemoteService[]{remoteService});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService remoteService, RemoteDevice remoteDevice) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new RemoteService[]{remoteService}, new RemoteDevice[]{remoteDevice});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService[] remoteServiceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, remoteServiceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService remoteService) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, new RemoteService[]{remoteService});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService remoteService, RemoteDevice remoteDevice) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, new RemoteService[]{remoteService}, new RemoteDevice[]{remoteDevice});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, remoteServiceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, uDAVersion, deviceType, deviceDetails, iconArr, remoteServiceArr, remoteDeviceArr);
    }
}
