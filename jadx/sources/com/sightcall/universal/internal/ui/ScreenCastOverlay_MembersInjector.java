package com.sightcall.universal.internal.ui;

import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ScreenCastOverlay_MembersInjector implements MembersInjector<ScreenCastOverlay> {
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private ScreenCastOverlay_MembersInjector(Provider<CapabilitiesRepository> provider) {
        this.capabilitiesRepositoryProvider = provider;
    }

    public static MembersInjector<ScreenCastOverlay> create(Provider<CapabilitiesRepository> provider) {
        return new ScreenCastOverlay_MembersInjector(provider);
    }

    public static void injectCapabilitiesRepository(ScreenCastOverlay screenCastOverlay, CapabilitiesRepository capabilitiesRepository) {
        screenCastOverlay.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(ScreenCastOverlay screenCastOverlay) {
        injectCapabilitiesRepository(screenCastOverlay, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
