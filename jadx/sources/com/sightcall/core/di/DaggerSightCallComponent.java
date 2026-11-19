package com.sightcall.core.di;

import android.app.Application;
import android.content.Context;
import com.sightcall.core.util.SightcallActivityLifecycleCallbacks;
import dagger.internal.DoubleCheck;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerSightCallComponent {

    public static final class SightCallComponentImpl implements SightCallComponent {
        private final Application application;
        private final CoreModule coreModule;
        Provider<SightcallActivityLifecycleCallbacks> provideSightcallActivityLifecycleCallbacksProvider;
        private final SightCallComponentImpl sightCallComponentImpl = this;

        public SightCallComponentImpl(CoreModule coreModule, Application application) {
            this.coreModule = coreModule;
            this.application = application;
            initialize(coreModule, application);
        }

        private void initialize(CoreModule coreModule, Application application) {
            this.provideSightcallActivityLifecycleCallbacksProvider = DoubleCheck.b(CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory.create(coreModule));
        }

        @Override // com.sightcall.core.di.SightCallComponent
        public Context context() {
            return CoreModule_ProvideContextFactory.provideContext(this.coreModule, this.application);
        }

        @Override // com.sightcall.core.di.SightCallComponent
        public SightcallActivityLifecycleCallbacks sightcallActivityLifecycleCallbacks() {
            return (SightcallActivityLifecycleCallbacks) this.provideSightcallActivityLifecycleCallbacksProvider.get();
        }
    }

    private DaggerSightCallComponent() {
    }

    public static SightCallComponent.Factory factory() {
        return new Factory(0);
    }

    public static final class Factory implements SightCallComponent.Factory {
        public /* synthetic */ Factory(int i2) {
            this();
        }

        @Override // com.sightcall.core.di.SightCallComponent.Factory
        public SightCallComponent create(Application application) {
            application.getClass();
            return new SightCallComponentImpl(new CoreModule(), application);
        }

        private Factory() {
        }
    }
}
