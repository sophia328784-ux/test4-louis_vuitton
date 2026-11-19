package com.sightcall.universal.internal.view;

import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MyScreenshareProducerWebView_MembersInjector implements MembersInjector<MyScreenshareProducerWebView> {
    private final Provider<AdvancedAnnotationsWrapper> advancedAnnotationsWrapperProvider;
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private MyScreenshareProducerWebView_MembersInjector(Provider<AdvancedAnnotationsWrapper> provider, Provider<CapabilitiesRepository> provider2) {
        this.advancedAnnotationsWrapperProvider = provider;
        this.capabilitiesRepositoryProvider = provider2;
    }

    public static MembersInjector<MyScreenshareProducerWebView> create(Provider<AdvancedAnnotationsWrapper> provider, Provider<CapabilitiesRepository> provider2) {
        return new MyScreenshareProducerWebView_MembersInjector(provider, provider2);
    }

    public static void injectAdvancedAnnotationsWrapper(MyScreenshareProducerWebView myScreenshareProducerWebView, AdvancedAnnotationsWrapper advancedAnnotationsWrapper) {
        myScreenshareProducerWebView.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
    }

    public static void injectCapabilitiesRepository(MyScreenshareProducerWebView myScreenshareProducerWebView, CapabilitiesRepository capabilitiesRepository) {
        myScreenshareProducerWebView.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(MyScreenshareProducerWebView myScreenshareProducerWebView) {
        injectAdvancedAnnotationsWrapper(myScreenshareProducerWebView, (AdvancedAnnotationsWrapper) this.advancedAnnotationsWrapperProvider.get());
        injectCapabilitiesRepository(myScreenshareProducerWebView, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
