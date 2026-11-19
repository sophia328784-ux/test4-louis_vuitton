package com.vuitton.android.presentation;

import android.app.Application;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.core.schedulers.CoroutineDispatchersModule;
import com.vuitton.android.data.audioplayer.di.ControllerDiModule;
import com.vuitton.android.data.di.ApiDiModule;
import com.vuitton.android.data.di.auth.AuthenticationDiModule;
import com.vuitton.android.data.net.serialization.di.SerializationModule;
import dagger.hilt.android.internal.managers.ApplicationComponentManager;
import dagger.hilt.android.internal.managers.ComponentSupplier;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Hilt_LVApplication extends Application implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f50525b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ApplicationComponentManager f50526c = new ApplicationComponentManager(new ComponentSupplier() { // from class: com.vuitton.android.presentation.Hilt_LVApplication.1
        @Override // dagger.hilt.android.internal.managers.ComponentSupplier
        public Object get() {
            DaggerLVApplication_HiltComponents_SingletonC$Builder daggerLVApplication_HiltComponents_SingletonC$Builder = new DaggerLVApplication_HiltComponents_SingletonC$Builder();
            daggerLVApplication_HiltComponents_SingletonC$Builder.f50481b = new ApplicationContextModule(Hilt_LVApplication.this);
            if (daggerLVApplication_HiltComponents_SingletonC$Builder.f50480a == null) {
                daggerLVApplication_HiltComponents_SingletonC$Builder.f50480a = new ApiDiModule();
            }
            Preconditions.a(ApplicationContextModule.class, daggerLVApplication_HiltComponents_SingletonC$Builder.f50481b);
            if (daggerLVApplication_HiltComponents_SingletonC$Builder.f50482c == null) {
                daggerLVApplication_HiltComponents_SingletonC$Builder.f50482c = new AuthenticationDiModule();
            }
            if (daggerLVApplication_HiltComponents_SingletonC$Builder.d == null) {
                daggerLVApplication_HiltComponents_SingletonC$Builder.d = new ControllerDiModule();
            }
            if (daggerLVApplication_HiltComponents_SingletonC$Builder.f50483e == null) {
                daggerLVApplication_HiltComponents_SingletonC$Builder.f50483e = new CoroutineDispatchersModule();
            }
            if (daggerLVApplication_HiltComponents_SingletonC$Builder.f50484f == null) {
                daggerLVApplication_HiltComponents_SingletonC$Builder.f50484f = new SerializationModule();
            }
            return new DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl(daggerLVApplication_HiltComponents_SingletonC$Builder.f50480a, daggerLVApplication_HiltComponents_SingletonC$Builder.f50481b, daggerLVApplication_HiltComponents_SingletonC$Builder.f50482c, daggerLVApplication_HiltComponents_SingletonC$Builder.d, daggerLVApplication_HiltComponents_SingletonC$Builder.f50483e, daggerLVApplication_HiltComponents_SingletonC$Builder.f50484f);
        }
    });

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return f().C();
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final ApplicationComponentManager f() {
        return this.f50526c;
    }

    public void g() {
        if (this.f50525b) {
            return;
        }
        this.f50525b = true;
        ((LVApplication_GeneratedInjector) C()).p((LVApplication) this);
    }

    @Override // android.app.Application
    public void onCreate() {
        Callback.p(this);
        g();
        super.onCreate();
    }
}
