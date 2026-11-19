package com.sightcall.universal.internal.view;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;
import javax.inject.Named;

/* JADX INFO: loaded from: classes3.dex */
public final class MyVideoProducerCameraView_MembersInjector implements MembersInjector<MyVideoProducerCameraView> {
    private final Provider<ViewGroup> advancedAnnotationsContainerProvider;
    private final Provider<AdvancedAnnotationsWrapper> advancedAnnotationsWrapperProvider;
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private MyVideoProducerCameraView_MembersInjector(Provider<AdvancedAnnotationsWrapper> provider, Provider<ViewGroup> provider2, Provider<CapabilitiesRepository> provider3) {
        this.advancedAnnotationsWrapperProvider = provider;
        this.advancedAnnotationsContainerProvider = provider2;
        this.capabilitiesRepositoryProvider = provider3;
    }

    public static MembersInjector<MyVideoProducerCameraView> create(Provider<AdvancedAnnotationsWrapper> provider, Provider<ViewGroup> provider2, Provider<CapabilitiesRepository> provider3) {
        return new MyVideoProducerCameraView_MembersInjector(provider, provider2, provider3);
    }

    @Named
    public static void injectAdvancedAnnotationsContainer(MyVideoProducerCameraView myVideoProducerCameraView, ViewGroup viewGroup) {
        myVideoProducerCameraView.advancedAnnotationsContainer = viewGroup;
    }

    public static void injectAdvancedAnnotationsWrapper(MyVideoProducerCameraView myVideoProducerCameraView, AdvancedAnnotationsWrapper advancedAnnotationsWrapper) {
        myVideoProducerCameraView.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
    }

    public static void injectCapabilitiesRepository(MyVideoProducerCameraView myVideoProducerCameraView, CapabilitiesRepository capabilitiesRepository) {
        myVideoProducerCameraView.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(MyVideoProducerCameraView myVideoProducerCameraView) {
        injectAdvancedAnnotationsWrapper(myVideoProducerCameraView, (AdvancedAnnotationsWrapper) this.advancedAnnotationsWrapperProvider.get());
        injectAdvancedAnnotationsContainer(myVideoProducerCameraView, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
        injectCapabilitiesRepository(myVideoProducerCameraView, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
