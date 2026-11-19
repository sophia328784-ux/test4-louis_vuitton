package org.teleal.cling.model.meta;

import defpackage.md;
import java.util.HashMap;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Service<D extends Device, S extends Service> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ServiceType f78479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServiceId f78480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f78481c;
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Device f78482e;

    public Service(ServiceType serviceType, ServiceId serviceId, Action<S>[] actionArr, StateVariable<S>[] stateVariableArr) throws ValidationException {
        this.f78481c = new HashMap();
        this.d = new HashMap();
        this.f78479a = serviceType;
        this.f78480b = serviceId;
        if (actionArr != null) {
            for (Action<S> action : actionArr) {
                this.f78481c.put(action.a(), action);
                if (action.f78437e != null) {
                    md.k("Final value has been set already, model is immutable");
                    throw null;
                }
                action.f78437e = this;
            }
        }
        if (stateVariableArr != null) {
            for (StateVariable<S> stateVariable : stateVariableArr) {
                this.d.put(stateVariable.f78483a, stateVariable);
                if (stateVariable.d != null) {
                    md.k("Final value has been set already, model is immutable");
                    throw null;
                }
                stateVariable.d = this;
            }
        }
    }

    public final Action a(String str) {
        HashMap map = this.f78481c;
        if (map == null) {
            return null;
        }
        return (Action) map.get(str);
    }

    public final Action[] b() {
        HashMap map = this.f78481c;
        if (map == null) {
            return null;
        }
        return (Action[]) map.values().toArray(new Action[map.values().size()]);
    }

    public final StateVariable[] c() {
        HashMap map = this.d;
        if (map == null) {
            return null;
        }
        return (StateVariable[]) map.values().toArray(new StateVariable[map.values().size()]);
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") ServiceId: " + this.f78480b;
    }

    public Service(ServiceType serviceType, ServiceId serviceId) throws ValidationException {
        this(serviceType, serviceId, null, null);
    }
}
