package com.sightcall.universal.internal.view;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;
import javax.inject.Named;

/* JADX INFO: loaded from: classes3.dex */
public final class MyVideoConsumerView_MembersInjector implements MembersInjector<MyVideoConsumerView> {
    private final Provider<ViewGroup> advancedAnnotationsContainerProvider;
    private final Provider<AdvancedAnnotationsWrapper> advancedAnnotationsWrapperProvider;
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private MyVideoConsumerView_MembersInjector(Provider<AdvancedAnnotationsWrapper> provider, Provider<ViewGroup> provider2, Provider<CapabilitiesRepository> provider3) {
        this.advancedAnnotationsWrapperProvider = provider;
        this.advancedAnnotationsContainerProvider = provider2;
        this.capabilitiesRepositoryProvider = provider3;
    }

    public static MembersInjector<MyVideoConsumerView> create(Provider<AdvancedAnnotationsWrapper> provider, Provider<ViewGroup> provider2, Provider<CapabilitiesRepository> provider3) {
        return new MyVideoConsumerView_MembersInjector(provider, provider2, provider3);
    }

    @Named
    public static void injectAdvancedAnnotationsContainer(MyVideoConsumerView myVideoConsumerView, ViewGroup viewGroup) {
        myVideoConsumerView.advancedAnnotationsContainer = viewGroup;
    }

    public static void injectAdvancedAnnotationsWrapper(MyVideoConsumerView myVideoConsumerView, AdvancedAnnotationsWrapper advancedAnnotationsWrapper) {
        myVideoConsumerView.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
    }

    public static void injectCapabilitiesRepository(MyVideoConsumerView myVideoConsumerView, CapabilitiesRepository capabilitiesRepository) {
        myVideoConsumerView.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(MyVideoConsumerView myVideoConsumerView) {
        injectAdvancedAnnotationsWrapper(myVideoConsumerView, (AdvancedAnnotationsWrapper) this.advancedAnnotationsWrapperProvider.get());
        injectAdvancedAnnotationsContainer(myVideoConsumerView, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
        injectCapabilitiesRepository(myVideoConsumerView, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
