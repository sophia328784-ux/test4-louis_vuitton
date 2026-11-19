package com.sightcall.capabilities.di;

import android.content.Context;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.capabilities.datasource.rtcc.RtccDatasourceImpl_Factory;
import com.sightcall.core.di.SightCallComponent;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerCapabilitiesComponent {

    public static final class CapabilitiesComponentImpl implements CapabilitiesComponent {
        private final CapabilitiesComponentImpl capabilitiesComponentImpl = this;
        Provider<Context> contextProvider;
        Provider<CapabilitiesRepository> provideCapabilitiesRepositories$capabilities_releaseProvider;

        public static final class ContextProvider implements Provider<Context> {
            private final SightCallComponent sightCallComponent;

            public ContextProvider(SightCallComponent sightCallComponent) {
                this.sightCallComponent = sightCallComponent;
            }

            @Override // javax.inject.Provider
            public Context get() {
                Context context = this.sightCallComponent.context();
                Preconditions.b(context);
                return context;
            }
        }

        public CapabilitiesComponentImpl(SightCallComponent sightCallComponent) {
            initialize(sightCallComponent);
        }

        private void initialize(SightCallComponent sightCallComponent) {
            ContextProvider contextProvider = new ContextProvider(sightCallComponent);
            this.contextProvider = contextProvider;
            this.provideCapabilitiesRepositories$capabilities_releaseProvider = DoubleCheck.b(CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory.create(contextProvider, RtccDatasourceImpl_Factory.create()));
        }

        @Override // com.sightcall.capabilities.di.CapabilitiesComponent
        public CapabilitiesRepository getCapabilitiesRepository() {
            return (CapabilitiesRepository) this.provideCapabilitiesRepositories$capabilities_releaseProvider.get();
        }
    }

    private DaggerCapabilitiesComponent() {
    }

    public static Builder builder() {
        return new Builder(0);
    }

    public static final class Builder {
        private SightCallComponent sightCallComponent;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        public CapabilitiesComponent build() {
            Preconditions.a(SightCallComponent.class, this.sightCallComponent);
            return new CapabilitiesComponentImpl(this.sightCallComponent);
        }

        public Builder sightCallComponent(SightCallComponent sightCallComponent) {
            sightCallComponent.getClass();
            this.sightCallComponent = sightCallComponent;
            return this;
        }

        private Builder() {
        }
    }
}
