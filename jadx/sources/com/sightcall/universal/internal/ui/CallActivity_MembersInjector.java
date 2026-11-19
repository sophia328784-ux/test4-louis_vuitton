package com.sightcall.universal.internal.ui;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.universal.CallCoordinatorImpl;
import dagger.MembersInjector;
import dagger.internal.Provider;
import javax.inject.Named;

/* JADX INFO: loaded from: classes3.dex */
public final class CallActivity_MembersInjector implements MembersInjector<CallActivity> {
    private final Provider<ViewGroup> advancedAnnotationsContainerProvider;
    private final Provider<AdvancedAnnotationsWrapper> advancedAnnotationsWrapperProvider;
    private final Provider<CallViewModel.Factory> callViewModelFactoryProvider;
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;
    private final Provider<CallCoordinatorImpl> coordinatorProvider;

    private CallActivity_MembersInjector(Provider<ViewGroup> provider, Provider<AdvancedAnnotationsWrapper> provider2, Provider<CallCoordinatorImpl> provider3, Provider<CapabilitiesRepository> provider4, Provider<CallViewModel.Factory> provider5) {
        this.advancedAnnotationsContainerProvider = provider;
        this.advancedAnnotationsWrapperProvider = provider2;
        this.coordinatorProvider = provider3;
        this.capabilitiesRepositoryProvider = provider4;
        this.callViewModelFactoryProvider = provider5;
    }

    public static MembersInjector<CallActivity> create(Provider<ViewGroup> provider, Provider<AdvancedAnnotationsWrapper> provider2, Provider<CallCoordinatorImpl> provider3, Provider<CapabilitiesRepository> provider4, Provider<CallViewModel.Factory> provider5) {
        return new CallActivity_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Named
    public static void injectAdvancedAnnotationsContainer(CallActivity callActivity, ViewGroup viewGroup) {
        callActivity.advancedAnnotationsContainer = viewGroup;
    }

    public static void injectAdvancedAnnotationsWrapper(CallActivity callActivity, AdvancedAnnotationsWrapper advancedAnnotationsWrapper) {
        callActivity.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
    }

    public static void injectCallViewModelFactory(CallActivity callActivity, CallViewModel.Factory factory) {
        callActivity.callViewModelFactory = factory;
    }

    public static void injectCapabilitiesRepository(CallActivity callActivity, CapabilitiesRepository capabilitiesRepository) {
        callActivity.capabilitiesRepository = capabilitiesRepository;
    }

    public static void injectCoordinator(CallActivity callActivity, CallCoordinatorImpl callCoordinatorImpl) {
        callActivity.coordinator = callCoordinatorImpl;
    }

    public void injectMembers(CallActivity callActivity) {
        injectAdvancedAnnotationsContainer(callActivity, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
        injectAdvancedAnnotationsWrapper(callActivity, (AdvancedAnnotationsWrapper) this.advancedAnnotationsWrapperProvider.get());
        injectCoordinator(callActivity, (CallCoordinatorImpl) this.coordinatorProvider.get());
        injectCapabilitiesRepository(callActivity, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
        injectCallViewModelFactory(callActivity, (CallViewModel.Factory) this.callViewModelFactoryProvider.get());
    }
}
