package com.sightcall.core;

import android.app.Application;
import com.sightcall.core.di.DaggerSightCallComponent;
import com.sightcall.core.di.SightCallComponent;
import com.sightcall.core.experiences.Manager;
import com.sightcall.core.experiences.Orchestrator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082.¢\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u00020\u0006X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"_sightCallComponent", "Lcom/sightcall/core/di/SightCallComponent;", "sightCallComponent", "getSightCallComponent", "()Lcom/sightcall/core/di/SightCallComponent;", "manager", "Lcom/sightcall/core/experiences/Manager;", "getManager", "()Lcom/sightcall/core/experiences/Manager;", "setManager", "(Lcom/sightcall/core/experiences/Manager;)V", "initSightcall", "", "application", "Landroid/app/Application;", "core_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class InitSightcallKt {
    private static SightCallComponent _sightCallComponent;
    public static Manager manager;

    public static final Manager getManager() {
        Manager manager2 = manager;
        if (manager2 != null) {
            return manager2;
        }
        Intrinsics.h("manager");
        throw null;
    }

    public static final SightCallComponent getSightCallComponent() {
        SightCallComponent sightCallComponent = _sightCallComponent;
        if (sightCallComponent != null) {
            return sightCallComponent;
        }
        Intrinsics.h("_sightCallComponent");
        throw null;
    }

    public static final void initSightcall(Application application) {
        application.getClass();
        _sightCallComponent = DaggerSightCallComponent.factory().create(application);
        setManager(new Manager(new Orchestrator()));
    }

    public static final void setManager(Manager manager2) {
        manager2.getClass();
        manager = manager2;
    }
}
