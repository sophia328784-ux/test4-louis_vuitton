package com.sightcall.universal;

import android.content.Context;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.libraries.network.NetworkConnector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class CallComponent_Module_AdvancedAnnotationsApiFactory implements Factory<AdvancedAnnotationsAPI> {
    private final Provider<Context> contextProvider;
    private final Provider<Scheduler> mainSchedulerProvider;
    private final CallComponent.Module module;
    private final Provider<NetworkConnector> networkConnectorProvider;
    private final Provider<AdvancedAnnotationsAPI.MessageSender> newAnnotationSenderProvider;
    private final Provider<AdvancedAnnotationsAPI.InitialSenderColor> senderColorProvider;
    private final Provider<AdvancedAnnotationsAPI.SenderIdGetter> senderIdGetterProvider;
    private final Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> settingsUrlProvider;
    private final Provider<AdvancedAnnotationsAPI.StateHandler> stateHandlerProvider;

    private CallComponent_Module_AdvancedAnnotationsApiFactory(CallComponent.Module module, Provider<Context> provider, Provider<Scheduler> provider2, Provider<NetworkConnector> provider3, Provider<AdvancedAnnotationsAPI.InitialSenderColor> provider4, Provider<AdvancedAnnotationsAPI.SenderIdGetter> provider5, Provider<AdvancedAnnotationsAPI.MessageSender> provider6, Provider<AdvancedAnnotationsAPI.StateHandler> provider7, Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> provider8) {
        this.module = module;
        this.contextProvider = provider;
        this.mainSchedulerProvider = provider2;
        this.networkConnectorProvider = provider3;
        this.senderColorProvider = provider4;
        this.senderIdGetterProvider = provider5;
        this.newAnnotationSenderProvider = provider6;
        this.stateHandlerProvider = provider7;
        this.settingsUrlProvider = provider8;
    }

    public static AdvancedAnnotationsAPI advancedAnnotationsApi(CallComponent.Module module, Context context, Scheduler scheduler, NetworkConnector networkConnector, AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl) {
        AdvancedAnnotationsAPI advancedAnnotationsApi = module.advancedAnnotationsApi(context, scheduler, networkConnector, initialSenderColor, senderIdGetter, messageSender, stateHandler, advancedAnnotationsSettingsUrl);
        Preconditions.c(advancedAnnotationsApi);
        return advancedAnnotationsApi;
    }

    public static CallComponent_Module_AdvancedAnnotationsApiFactory create(CallComponent.Module module, Provider<Context> provider, Provider<Scheduler> provider2, Provider<NetworkConnector> provider3, Provider<AdvancedAnnotationsAPI.InitialSenderColor> provider4, Provider<AdvancedAnnotationsAPI.SenderIdGetter> provider5, Provider<AdvancedAnnotationsAPI.MessageSender> provider6, Provider<AdvancedAnnotationsAPI.StateHandler> provider7, Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> provider8) {
        return new CallComponent_Module_AdvancedAnnotationsApiFactory(module, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsAPI get() {
        return advancedAnnotationsApi(this.module, (Context) this.contextProvider.get(), (Scheduler) this.mainSchedulerProvider.get(), (NetworkConnector) this.networkConnectorProvider.get(), (AdvancedAnnotationsAPI.InitialSenderColor) this.senderColorProvider.get(), (AdvancedAnnotationsAPI.SenderIdGetter) this.senderIdGetterProvider.get(), (AdvancedAnnotationsAPI.MessageSender) this.newAnnotationSenderProvider.get(), (AdvancedAnnotationsAPI.StateHandler) this.stateHandlerProvider.get(), (AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl) this.settingsUrlProvider.get());
    }
}
