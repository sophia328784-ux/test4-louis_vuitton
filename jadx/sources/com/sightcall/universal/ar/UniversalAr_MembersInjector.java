package com.sightcall.universal.ar;

import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class UniversalAr_MembersInjector implements MembersInjector<UniversalAr> {
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private UniversalAr_MembersInjector(Provider<CapabilitiesRepository> provider) {
        this.capabilitiesRepositoryProvider = provider;
    }

    public static MembersInjector<UniversalAr> create(Provider<CapabilitiesRepository> provider) {
        return new UniversalAr_MembersInjector(provider);
    }

    public static void injectCapabilitiesRepository(UniversalAr universalAr, CapabilitiesRepository capabilitiesRepository) {
        universalAr.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(UniversalAr universalAr) {
        injectCapabilitiesRepository(universalAr, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
