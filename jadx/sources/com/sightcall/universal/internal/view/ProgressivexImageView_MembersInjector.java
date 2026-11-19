package com.sightcall.universal.internal.view;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;
import javax.inject.Named;

/* JADX INFO: loaded from: classes3.dex */
public final class ProgressivexImageView_MembersInjector implements MembersInjector<ProgressivexImageView> {
    private final Provider<ViewGroup> advancedAnnotationsContainerProvider;
    private final Provider<AdvancedAnnotationsWrapper> advancedAnnotationsWrapperProvider;
    private final Provider<CapabilitiesRepository> capabilitiesRepositoryProvider;

    private ProgressivexImageView_MembersInjector(Provider<AdvancedAnnotationsWrapper> provider, Provider<ViewGroup> provider2, Provider<CapabilitiesRepository> provider3) {
        this.advancedAnnotationsWrapperProvider = provider;
        this.advancedAnnotationsContainerProvider = provider2;
        this.capabilitiesRepositoryProvider = provider3;
    }

    public static MembersInjector<ProgressivexImageView> create(Provider<AdvancedAnnotationsWrapper> provider, Provider<ViewGroup> provider2, Provider<CapabilitiesRepository> provider3) {
        return new ProgressivexImageView_MembersInjector(provider, provider2, provider3);
    }

    @Named
    public static void injectAdvancedAnnotationsContainer(ProgressivexImageView progressivexImageView, ViewGroup viewGroup) {
        progressivexImageView.advancedAnnotationsContainer = viewGroup;
    }

    public static void injectAdvancedAnnotationsWrapper(ProgressivexImageView progressivexImageView, AdvancedAnnotationsWrapper advancedAnnotationsWrapper) {
        progressivexImageView.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
    }

    public static void injectCapabilitiesRepository(ProgressivexImageView progressivexImageView, CapabilitiesRepository capabilitiesRepository) {
        progressivexImageView.capabilitiesRepository = capabilitiesRepository;
    }

    public void injectMembers(ProgressivexImageView progressivexImageView) {
        injectAdvancedAnnotationsWrapper(progressivexImageView, (AdvancedAnnotationsWrapper) this.advancedAnnotationsWrapperProvider.get());
        injectAdvancedAnnotationsContainer(progressivexImageView, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
        injectCapabilitiesRepository(progressivexImageView, (CapabilitiesRepository) this.capabilitiesRepositoryProvider.get());
    }
}
