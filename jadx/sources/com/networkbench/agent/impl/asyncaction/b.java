package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36411a = "ClipNetwork";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ThreadLocal<Object> f36412b = new ThreadLocal<>();

    @Override // com.networkbench.agent.impl.asyncaction.c
    public boolean a(NBSUnit nBSUnit, NBSUnit nBSUnit2) {
        if (nBSUnit.unitType != com.networkbench.agent.impl.data.type.r.UNIT_TYPE_FOR_NETWORK) {
            return false;
        }
        if (this.f36412b.get() != null) {
            Logger.debug(f36411a, "local exit network unit exceed root exitTime, clip this network");
            return true;
        }
        if (nBSUnit.exitTimestamp > nBSUnit2.exitTimestamp) {
            this.f36412b.set(new Object());
            Logger.debug(f36411a, "tag local thread has over root exitTime network");
        }
        return false;
    }

    @Override // com.networkbench.agent.impl.asyncaction.c
    public boolean a(NBSUnit nBSUnit) {
        if (nBSUnit.unitType == com.networkbench.agent.impl.data.type.r.UNIT_TYPE_FOR_NETWORK || this.f36412b.get() == null) {
            return false;
        }
        Logger.debug(f36411a, "local exit network unit exceed root exitTime, clip behind normal unit");
        return true;
    }
}
