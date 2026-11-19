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
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u0000 )2\u00020\u0001:\u0001)J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J:\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0012H&J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J(\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH&J\b\u0010\u001d\u001a\u00020\u0012H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010'\u001a\u00020(H&¨\u0006*À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/di/SDKInjectorI;", "", "getCallComponent", "Lcom/sightcall/universal/CallComponent;", "createCallComponent", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "senderColor", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "annotationSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "settingsUrl", "", "sessionConfig", "Lcom/sightcall/universal/model/Config;", "destroyCallComponent", "", "getReferenceComponent", "Lcom/sightcall/universal/ReferenceComponent;", "createReferenceComponent", "useCaseSettings", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "role", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "baseUrlEnvironment", "destroyReferenceComponent", "inject", "universalAr", "Lcom/sightcall/universal/ar/UniversalAr;", "screenCastOverlay", "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;", "myScreenshareConsumerView", "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;", "fetchReferenceStep", "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;", "agentUsecaseStep", "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SDKInjectorI {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/di/SDKInjectorI$Companion;", "", "<init>", "()V", "internalInjector", "Lcom/sightcall/universal/di/SDKInjectorI;", "create", "sdkComponent", "Lcom/sightcall/universal/di/SdkComponent;", "injector", "getInjector", "()Lcom/sightcall/universal/di/SDKInjectorI;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static SDKInjectorI internalInjector;

        private Companion() {
        }

        public final SDKInjectorI create(SdkComponent sdkComponent) {
            sdkComponent.getClass();
            SDKInjectorImpl sDKInjectorImpl = new SDKInjectorImpl(sdkComponent);
            internalInjector = sDKInjectorImpl;
            return sDKInjectorImpl;
        }

        public final SDKInjectorI getInjector() {
            SDKInjectorI sDKInjectorI = internalInjector;
            if (sDKInjectorI != null) {
                return sDKInjectorI;
            }
            Intrinsics.h("internalInjector");
            throw null;
        }
    }

    CallComponent createCallComponent(AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.InitialSenderColor senderColor, AdvancedAnnotationsAPI.MessageSender annotationSender, AdvancedAnnotationsAPI.StateHandler stateHandler, String settingsUrl, Config sessionConfig);

    ReferenceComponent createReferenceComponent(Reference.UseCase.LiveTranslation useCaseSettings, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, String baseUrlEnvironment);

    void destroyCallComponent();

    void destroyReferenceComponent();

    CallComponent getCallComponent();

    ReferenceComponent getReferenceComponent();

    void inject(UniversalAr universalAr);

    void inject(ScreenCastOverlay screenCastOverlay);

    void inject(MyScreenshareConsumerView myScreenshareConsumerView);

    void inject(AgentUsecaseStep agentUsecaseStep);

    void inject(FetchReferenceStep fetchReferenceStep);
}
