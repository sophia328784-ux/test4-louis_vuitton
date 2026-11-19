package org.teleal.cling.model.gena;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.meta.StateVariable;
import org.teleal.cling.model.meta.StateVariableEventDetails;
import org.teleal.cling.model.state.StateVariableValue;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.model.types.UnsignedVariableInteger;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LocalGENASubscription extends GENASubscription<LocalService> implements PropertyChangeListener {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Logger f78405i = Logger.getLogger(LocalGENASubscription.class.getName());
    public final HashMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f78406h;

    public LocalGENASubscription(LocalService localService, Integer num, List<URL> list) throws Exception {
        super(localService);
        this.g = new HashMap();
        this.f78406h = new HashMap();
        synchronized (this) {
            int iIntValue = num == null ? 1800 : num.intValue();
            this.f78402c = iIntValue;
            synchronized (this) {
                this.d = iIntValue;
            }
            f78405i.fine("Reading initial state of local service at subscription time");
            new Date().getTime();
            this.f78404f.clear();
            ((LocalService) d()).d();
            throw null;
        }
        f78405i.fine("Reading initial state of local service at subscription time");
        new Date().getTime();
        this.f78404f.clear();
        ((LocalService) d()).d();
        throw null;
    }

    public final synchronized void f(CancelReason cancelReason) {
        try {
            ((LocalService) d()).d();
            throw null;
        } catch (Exception e2) {
            f78405i.warning("Removal of local service property change listener failed: " + Exceptions.a(e2));
            g(cancelReason);
        }
    }

    public abstract void g(CancelReason cancelReason);

    public final synchronized void h() {
        UnsignedIntegerFourBytes unsignedIntegerFourBytes = this.f78403e;
        if (unsignedIntegerFourBytes.f78534a + 1 > UnsignedVariableInteger.Bits.THIRTYTWO.a()) {
            unsignedIntegerFourBytes.f78534a = 1L;
        } else {
            unsignedIntegerFourBytes.f78534a++;
        }
    }

    public final synchronized HashSet i(long j2, Collection collection) {
        HashSet hashSet;
        try {
            hashSet = new HashSet();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                StateVariableValue stateVariableValue = (StateVariableValue) it.next();
                StateVariable stateVariable = stateVariableValue.f78499c;
                String str = stateVariable.f78483a;
                StateVariableEventDetails stateVariableEventDetails = stateVariable.f78485c;
                if (stateVariableEventDetails.f78490b == 0 && stateVariableEventDetails.f78491c == 0) {
                    f78405i.finer("Variable is not moderated: " + stateVariable);
                } else if (!this.g.containsKey(str)) {
                    f78405i.finer("Variable is moderated but was never sent before: " + stateVariable);
                } else if (stateVariable.f78485c.f78490b > 0 && j2 <= ((Long) this.g.get(str)).longValue() + ((long) stateVariable.f78485c.f78490b)) {
                    f78405i.finer("Excluding state variable with maximum rate: " + stateVariable);
                    hashSet.add(str);
                } else if (stateVariable.a() && this.f78406h.get(str) != null) {
                    Long l = (Long) this.f78406h.get(str);
                    l.getClass();
                    long jLongValue = l.longValue();
                    long jLongValue2 = Long.valueOf(stateVariableValue.toString()).longValue();
                    long j3 = stateVariable.f78485c.f78491c;
                    if (jLongValue2 > jLongValue && jLongValue2 - jLongValue < j3) {
                        f78405i.finer("Excluding state variable with minimum delta: " + stateVariable);
                        hashSet.add(str);
                    } else if (jLongValue2 < jLongValue && jLongValue - jLongValue2 < j3) {
                        f78405i.finer("Excluding state variable with minimum delta: " + stateVariable);
                        hashSet.add(str);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hashSet;
    }

    @Override // java.beans.PropertyChangeListener
    public final synchronized void propertyChange(PropertyChangeEvent propertyChangeEvent) {
        try {
            if (propertyChangeEvent.getPropertyName().equals("_EventedStateVariables")) {
                f78405i.fine("Eventing triggered, getting state for subscription: " + e());
                long time = new Date().getTime();
                Collection<StateVariableValue> collection = (Collection) propertyChangeEvent.getNewValue();
                HashSet hashSetI = i(time, collection);
                this.f78404f.clear();
                for (StateVariableValue stateVariableValue : collection) {
                    String str = stateVariableValue.f78499c.f78483a;
                    if (!hashSetI.contains(str)) {
                        f78405i.fine("Adding state variable value to current values of event: " + stateVariableValue.f78499c + " = " + stateVariableValue);
                        this.f78404f.put(stateVariableValue.f78499c.f78483a, stateVariableValue);
                        this.g.put(str, Long.valueOf(time));
                        if (stateVariableValue.f78499c.a()) {
                            this.f78406h.put(str, Long.valueOf(stateVariableValue.toString()));
                        }
                    }
                }
                if (this.f78404f.size() > 0) {
                    f78405i.fine("Propagating new state variable values to subscription: " + this);
                    b();
                } else {
                    f78405i.fine("No state variable values for event (all moderated out?), not triggering event");
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
