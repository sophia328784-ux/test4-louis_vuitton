package org.teleal.cling.model.meta;

import java.net.URI;
import java.util.ArrayList;
import org.teleal.cling.model.ValidationError;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteService extends Service<RemoteDevice, RemoteService> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final URI f78477f;
    public final URI g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final URI f78478h;

    public RemoteService(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action<RemoteService>[] actionArr, StateVariable<RemoteService>[] stateVariableArr) throws ValidationException {
        super(serviceType, serviceId, actionArr, stateVariableArr);
        this.f78477f = uri;
        this.g = uri2;
        this.f78478h = uri3;
        ArrayList arrayList = new ArrayList();
        if (uri == null) {
            arrayList.add(new ValidationError(getClass(), "descriptorURI", "Descriptor location (SCPDURL) is required"));
        }
        if (uri2 == null) {
            arrayList.add(new ValidationError(getClass(), "controlURI", "Control URL is required"));
        }
        if (uri3 == null) {
            arrayList.add(new ValidationError(getClass(), "eventSubscriptionURI", "Event subscription URL is required"));
        }
        if (arrayList.size() > 0) {
            throw new ValidationException("Validation of device graph failed, call getErrors() on exception", arrayList);
        }
    }

    public RemoteService(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3) throws ValidationException {
        this(serviceType, serviceId, uri, uri2, uri3, null, null);
    }
}
