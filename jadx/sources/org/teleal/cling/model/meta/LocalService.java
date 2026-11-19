package org.teleal.cling.model.meta;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.action.ActionExecutor;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class LocalService<T> extends Service<LocalDevice, LocalService> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f78467f;
    public final Map g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set f78468h;

    public LocalService(ServiceType serviceType, ServiceId serviceId, Map<Action, ActionExecutor> map, Map<StateVariable, Object> map2, Set<Class> set, boolean z) throws ValidationException {
        super(serviceType, serviceId, (Action[]) map.keySet().toArray(new Action[map.size()]), (StateVariable[]) map2.keySet().toArray(new StateVariable[map2.size()]));
        this.f78468h = set;
        this.g = map2;
        this.f78467f = map;
    }

    public final synchronized void d() {
        throw new IllegalStateException("Unmanaged service, no implementation instance available");
    }

    @Override // org.teleal.cling.model.meta.Service
    public final String toString() {
        return super.toString().concat(", Manager: null");
    }

    public LocalService(ServiceType serviceType, ServiceId serviceId, Action[] actionArr, StateVariable[] stateVariableArr) throws ValidationException {
        super(serviceType, serviceId, actionArr, stateVariableArr);
        this.f78467f = new HashMap();
        new HashMap();
        new HashSet();
    }
}
