package com.sightcall.universal.scenario.steps;

import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.gpslocation.GpsRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CallStep_MembersInjector implements MembersInjector<CallStep> {
    private final Provider<AdvancedAnnotationsAPI> advancedAnnotationsAPIProvider;
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;
    private final Provider<GpsRepository> gpsRepositoryProvider;

    private CallStep_MembersInjector(Provider<AdvancedAnnotationsAPI> provider, Provider<CapabilitiesRepository> provider2, Provider<GpsRepository> provider3) {
        this.advancedAnnotationsAPIProvider = provider;
        this.capabilitiesRepositoryProvider = provider2;
        this.gpsRepositoryProvider = provider3;
    }

    public static MembersInjector<CallStep> create(Provider<AdvancedAnnotationsAPI> provider, Provider<CapabilitiesRepository> provider2, Provider<GpsRepository> provider3) {
        return new CallStep_MembersInjector(provider, provider2, provider3);
    }

    public static void injectAdvancedAnnotationsAPI(CallStep callStep, AdvancedAnnotationsAPI advancedAnnotationsAPI) {
        callStep.advancedAnnotationsAPI = advancedAnnotationsAPI;
    }

    public static void injectCapabilitiesRepository(CallStep callStep, CapabilitiesRepository capabilitiesRepository) {
        callStep.capabilitiesRepository = capabilitiesRepository;
    }

    public static void injectGpsRepository(CallStep callStep, GpsRepository gpsRepository) {
        callStep.gpsRepository = gpsRepository;
    }

    public void injectMembers(CallStep callStep) {
        injectAdvancedAnnotationsAPI(callStep, (AdvancedAnnotationsAPI) this.advancedAnnotationsAPIProvider.get());
        injectCapabilitiesRepository(callStep, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
        injectGpsRepository(callStep, (GpsRepository) this.gpsRepositoryProvider.get());
    }
}
