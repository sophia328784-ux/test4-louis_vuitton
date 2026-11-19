package com.sightcall.universal.internal.view;

import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MyScreenshareConsumerView_MembersInjector implements MembersInjector<MyScreenshareConsumerView> {
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private MyScreenshareConsumerView_MembersInjector(Provider<CapabilitiesRepository> provider) {
        this.capabilitiesRepositoryProvider = provider;
    }

    public static MembersInjector<MyScreenshareConsumerView> create(Provider<CapabilitiesRepository> provider) {
        return new MyScreenshareConsumerView_MembersInjector(provider);
    }

    public static void injectCapabilitiesRepository(MyScreenshareConsumerView myScreenshareConsumerView, CapabilitiesRepository capabilitiesRepository) {
        myScreenshareConsumerView.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(MyScreenshareConsumerView myScreenshareConsumerView) {
        injectCapabilitiesRepository(myScreenshareConsumerView, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
