package com.sightcall.universal.di;

import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.session.Reference;
import com.sightcall.universal.CallComponent;
import com.sightcall.universal.ReferenceComponent;
import com.sightcall.universal.ar.UniversalAr;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep;
import com.sightcall.universal.scenario.steps.FetchReferenceStep;
import defpackage.d21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J:\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J(\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0013H\u0016J\b\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010-\u001a\u00020.H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/sightcall/universal/di/SDKInjectorImpl;", "Lcom/sightcall/universal/di/SDKInjectorI;", "sdkComponent", "Lcom/sightcall/universal/di/SdkComponent;", "<init>", "(Lcom/sightcall/universal/di/SdkComponent;)V", "callComponent", "Lcom/sightcall/universal/CallComponent;", "getCallComponent", "createCallComponent", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "senderColor", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "annotationSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "settingsUrl", "", "sessionConfig", "Lcom/sightcall/universal/model/Config;", "destroyCallComponent", "", "referenceComponent", "Lcom/sightcall/universal/ReferenceComponent;", "getReferenceComponent", "createReferenceComponent", "useCaseSettings", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "role", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "baseUrlEnvironment", "destroyReferenceComponent", "inject", "universalAr", "Lcom/sightcall/universal/ar/UniversalAr;", "screenCastOverlay", "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;", "myScreenshareConsumerView", "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;", "fetchReferenceStep", "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;", "agentUsecaseStep", "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SDKInjectorImpl implements SDKInjectorI {
    private CallComponent callComponent;
    private ReferenceComponent referenceComponent;
    private final SdkComponent sdkComponent;

    public SDKInjectorImpl(SdkComponent sdkComponent) {
        sdkComponent.getClass();
        this.sdkComponent = sdkComponent;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public CallComponent createCallComponent(AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.InitialSenderColor senderColor, AdvancedAnnotationsAPI.MessageSender annotationSender, AdvancedAnnotationsAPI.StateHandler stateHandler, String settingsUrl, Config sessionConfig) {
        senderIdGetter.getClass();
        senderColor.getClass();
        annotationSender.getClass();
        stateHandler.getClass();
        sessionConfig.getClass();
        CallComponent callComponent = this.callComponent;
        if (callComponent != null) {
            return callComponent;
        }
        CallComponent callComponentBuild = this.sdkComponent.callComponent().senderIdGetter(senderIdGetter).initialSenderColor(senderColor).newAnnotationSender(annotationSender).stateHandler(stateHandler).settingsUrl(new AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl(settingsUrl)).sessionConfig(sessionConfig).build();
        this.callComponent = callComponentBuild;
        return callComponentBuild;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public ReferenceComponent createReferenceComponent(Reference.UseCase.LiveTranslation useCaseSettings, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, String baseUrlEnvironment) {
        useCaseSettings.getClass();
        role.getClass();
        localeLanguage.getClass();
        baseUrlEnvironment.getClass();
        ReferenceComponent referenceComponent = this.referenceComponent;
        if (referenceComponent != null) {
            return referenceComponent;
        }
        ReferenceComponent referenceComponentBuild = this.sdkComponent.referenceComponent().useCaseSettings(useCaseSettings).userRole(role).localeLanguage(localeLanguage).liveTranslationUrl(new LiveTranslationAPI.LiveTranslationLanguagesUrl(d21.j(baseUrlEnvironment, "v3/spokenLanguages"))).build();
        this.referenceComponent = referenceComponentBuild;
        return referenceComponentBuild;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void destroyCallComponent() {
        AdvancedAnnotationsAPI advancedAnnotationsAPI;
        CallComponent callComponent = this.callComponent;
        if (callComponent != null && (advancedAnnotationsAPI = callComponent.getAdvancedAnnotationsAPI()) != null) {
            advancedAnnotationsAPI.clear();
        }
        this.callComponent = null;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void destroyReferenceComponent() {
        LiveTranslationAPI liveTranslationAPI;
        ReferenceComponent referenceComponent = this.referenceComponent;
        if (referenceComponent != null && (liveTranslationAPI = referenceComponent.getLiveTranslationAPI()) != null) {
            liveTranslationAPI.clear();
        }
        this.referenceComponent = null;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public CallComponent getCallComponent() {
        return this.callComponent;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public ReferenceComponent getReferenceComponent() {
        return this.referenceComponent;
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void inject(UniversalAr universalAr) {
        universalAr.getClass();
        this.sdkComponent.inject(universalAr);
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void inject(ScreenCastOverlay screenCastOverlay) {
        screenCastOverlay.getClass();
        this.sdkComponent.inject(screenCastOverlay);
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void inject(MyScreenshareConsumerView myScreenshareConsumerView) {
        myScreenshareConsumerView.getClass();
        this.sdkComponent.inject(myScreenshareConsumerView);
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void inject(FetchReferenceStep fetchReferenceStep) {
        fetchReferenceStep.getClass();
        this.sdkComponent.inject(fetchReferenceStep);
    }

    @Override // com.sightcall.universal.di.SDKInjectorI
    public void inject(AgentUsecaseStep agentUsecaseStep) {
        agentUsecaseStep.getClass();
        this.sdkComponent.inject(agentUsecaseStep);
    }
}
