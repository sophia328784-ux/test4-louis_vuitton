package com.sightcall.session.datasource.reference.v3.startup;

import com.sightcall.httpclient.AuthorizationToken;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.Utils;
import com.sightcall.session.Reference;
import com.sightcall.session.datasource.reference.v3.CustomizationName;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstMappersKt;
import com.sightcall.session.datasource.reference.v3.SurveyMode;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0005H\u0002\u001a\u0014\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t*\u00020\u0005H\u0002\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0005H\u0002\u001a\f\u0010\r\u001a\u00020\u000e*\u00020\u0005H\u0002\u001a\f\u0010\u000f\u001a\u00020\u0010*\u00020\u0005H\u0002\u001a\u000e\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0005H\u0002\u001a\f\u0010\u0013\u001a\u00020\u0014*\u00020\u0005H\u0002\u001a\f\u0010\u0015\u001a\u00020\u0016*\u00020\u0005H\u0002\u001a\u000e\u0010\u0017\u001a\u00020\u0018*\u0004\u0018\u00010\u0019H\u0002¨\u0006\u001a"}, d2 = {"toReference", "Lcom/sightcall/session/Reference;", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;", "toUseCase", "Lcom/sightcall/session/Reference$UseCase;", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;", "toSurvey", "Lcom/sightcall/session/Reference$UseCase$Survey;", "toButtons", "", "Lcom/sightcall/session/Reference$Button;", "toPropositionTemplate", "Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;", "toConsent", "Lcom/sightcall/session/Reference$UseCase$Consent;", "toLiveTranslation", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "toAnalytics", "Lcom/sightcall/session/Reference$UseCase$Analytics;", "toProvider", "Lcom/sightcall/session/Reference$Provider;", "toCustomization", "Lcom/sightcall/session/Reference$Customization;", "toBool", "", "", "session_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ReferenceStartupMappersKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SurveyMode.values().length];
            try {
                iArr[SurveyMode.Manual.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SurveyMode.Auto.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final Reference.UseCase.Analytics toAnalytics(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        try {
            URL url = new URL(attributes.getAnalyticsUploadUrl());
            String analyticsUploadToken = attributes.getAnalyticsUploadToken();
            analyticsUploadToken.getClass();
            return new Reference.UseCase.Analytics(url, analyticsUploadToken);
        } catch (Exception unused) {
            Logger.INSTANCE.getTag();
            return null;
        }
    }

    private static final boolean toBool(String str) {
        String lowerCase;
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = null;
        }
        return Intrinsics.c(lowerCase, "true") || Intrinsics.c(str, "1");
    }

    private static final List<Reference.Button> toButtons(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        List<ReferenceStartupResponseEntity.Data.Attributes.BarButton> barButtons = attributes.getBarButtons();
        if (barButtons == null) {
            return null;
        }
        List<ReferenceStartupResponseEntity.Data.Attributes.BarButton> list = barButtons;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ReferenceApiV3ConstMappersKt.toButton(((ReferenceStartupResponseEntity.Data.Attributes.BarButton) it.next()).getRole()));
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        Reference.Button.HangupCall hangupCall = Reference.Button.HangupCall.INSTANCE;
        if (!arrayList2.contains(hangupCall)) {
            arrayList2.add(hangupCall);
        }
        return arrayList2;
    }

    private static final Reference.UseCase.Consent toConsent(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        return new Reference.UseCase.Consent(attributes.getConsentId(), attributes.getConsentTitle(), attributes.getConsentDescription(), attributes.getConsentAcceptLabel(), attributes.getConsentDeclineLabel(), attributes.getConsentEulaLabel(), attributes.getConsentEulaLink(), null, 128, null);
    }

    private static final Reference.Customization toCustomization(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        Map mapC;
        List<ReferenceStartupResponseEntity.Data.Attributes.Customization> customizations = attributes.getCustomizations();
        if (customizations != null) {
            List<ReferenceStartupResponseEntity.Data.Attributes.Customization> list = customizations;
            int iG = MapsKt.g(CollectionsKt.t(list, 10));
            if (iG < 16) {
                iG = 16;
            }
            mapC = new LinkedHashMap(iG);
            for (ReferenceStartupResponseEntity.Data.Attributes.Customization customization : list) {
                Pair pair = new Pair(customization.getName(), customization.getValue());
                mapC.put(pair.f71705b, pair.f71706c);
            }
        } else {
            mapC = MapsKt.c();
        }
        return new Reference.Customization((String) mapC.get(CustomizationName.AcdExternal), toBool((String) mapC.get(CustomizationName.PluginShareOverlayDisabled)), toBool((String) mapC.get(CustomizationName.RtccLocalUdpDisabled)), toBool((String) mapC.get(CustomizationName.RtccUsapTurnDisabled)), toBool((String) mapC.get(CustomizationName.SslPlugin)));
    }

    private static final Reference.UseCase.LiveTranslation toLiveTranslation(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        Boolean liveTranslationEnabled = attributes.getLiveTranslationEnabled();
        String liveTranslationCaptionDisplayMode = attributes.getLiveTranslationCaptionDisplayMode();
        String liveTranslationCaptionFontSize = attributes.getLiveTranslationCaptionFontSize();
        Integer liveTranslationCaptionHeight = attributes.getLiveTranslationCaptionHeight();
        Integer liveTranslationCaptionSentenceTimeout = attributes.getLiveTranslationCaptionSentenceTimeout();
        return new Reference.UseCase.LiveTranslation(liveTranslationEnabled, liveTranslationCaptionDisplayMode, liveTranslationCaptionFontSize, liveTranslationCaptionHeight, liveTranslationCaptionSentenceTimeout != null ? Long.valueOf(liveTranslationCaptionSentenceTimeout.intValue()) : null, attributes.getLiveTranslationCaptionColors(), attributes.getLiveTranslationLanguageValue(), attributes.getLiveTranslationLanguageValue(), attributes.getLiveTranslationLanguageMode(), attributes.getLiveTranslationLanguageMode(), attributes.getLiveTranslationTranscript(), attributes.getLiveTranslationAutoStart());
    }

    private static final Reference.UseCase.PropositionTemplate toPropositionTemplate(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        return new Reference.UseCase.PropositionTemplate(attributes.getNoteOnPictureTitle(), attributes.getNoteOnPictureAcceptLabel(), attributes.getNoteOnPictureSignature());
    }

    private static final Reference.Provider toProvider(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        String rtccAppId = attributes.getRtccAppId();
        String strExtractHap = Utils.INSTANCE.extractHap(attributes.getRtccEnv(), attributes.getRtccHap());
        Boolean chatTranscript = attributes.getChatTranscript();
        Integer rtccDeadParty = attributes.getRtccDeadParty();
        return new Reference.Provider(rtccAppId, "rtcc", strExtractHap, chatTranscript, rtccDeadParty != null ? rtccDeadParty.intValue() : 60, attributes.getAnnotationsUrl(), attributes.getRtccJwtAuth());
    }

    public static final Reference toReference(ReferenceStartupResponseEntity referenceStartupResponseEntity) {
        referenceStartupResponseEntity.getClass();
        ReferenceStartupResponseEntity.Data.Attributes attributes = referenceStartupResponseEntity.getData().getAttributes();
        String reference = attributes.getReference();
        Reference.UseCase useCase = toUseCase(attributes);
        Reference.Provider provider = toProvider(attributes);
        Integer acdProductId = attributes.getAcdProductId();
        Integer acdLocationId = attributes.getAcdLocationId();
        Integer acdLanguageId = attributes.getAcdLanguageId();
        Reference.Customization customization = toCustomization(attributes);
        String acdMask = attributes.getAcdMask();
        Long lValueOf = acdMask != null ? Long.valueOf(Long.parseLong(acdMask, CharsKt.checkRadix(16))) : null;
        String acdValue = attributes.getAcdValue();
        return new Reference(reference, useCase, provider, acdProductId, acdLocationId, acdLanguageId, customization, lValueOf, acdValue != null ? Long.valueOf(Long.parseLong(acdValue, CharsKt.checkRadix(16))) : null, new AuthorizationToken(attributes.getAuthorizationToken()), attributes.getAuthorizationHash(), attributes.getTakeUhdPicture());
    }

    private static final Reference.UseCase.Survey toSurvey(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        SurveyMode surveyMode = attributes.getSurveyMode();
        int i2 = surveyMode == null ? -1 : WhenMappings.$EnumSwitchMapping$0[surveyMode.ordinal()];
        if (i2 == 1) {
            return new Reference.UseCase.Survey(false, attributes.getSurveyTitle(), attributes.getSurveyLinkLabel(), attributes.getSurveyUrl());
        }
        if (i2 != 2) {
            return null;
        }
        return new Reference.UseCase.Survey(true, null, null, attributes.getSurveyUrl(), 6, null);
    }

    private static final Reference.UseCase toUseCase(ReferenceStartupResponseEntity.Data.Attributes attributes) {
        boolean z;
        boolean z2;
        Integer useCaseId = attributes.getUseCaseId();
        Reference.UserRole userRole = ReferenceApiV3ConstMappersKt.toUserRole(attributes.getUserRole());
        Reference.CallDistribution callDistribution = ReferenceApiV3ConstMappersKt.toCallDistribution(attributes.getCallDistribution());
        String useCaseName = attributes.getUseCaseName();
        Reference.CameraSide cameraSide = ReferenceApiV3ConstMappersKt.toCameraSide(attributes.getStartupCameraSide());
        Boolean startupCamera = attributes.getStartupCamera();
        boolean zBooleanValue = startupCamera != null ? startupCamera.booleanValue() : false;
        Reference.VideoProfile videoProfile = ReferenceApiV3ConstMappersKt.toVideoProfile(attributes.getStartupVideoProfile());
        Boolean startupPointer = attributes.getStartupPointer();
        boolean zBooleanValue2 = startupPointer != null ? startupPointer.booleanValue() : false;
        Boolean startupMicro = attributes.getStartupMicro();
        boolean z3 = !(startupMicro != null ? startupMicro.booleanValue() : false);
        Boolean cameraWhileShareOut = attributes.getCameraWhileShareOut();
        boolean zBooleanValue3 = cameraWhileShareOut != null ? cameraWhileShareOut.booleanValue() : false;
        Reference.UseCase.Survey survey = toSurvey(attributes);
        boolean z4 = zBooleanValue3;
        List<Reference.Button> buttons = toButtons(attributes);
        Boolean barAlwaysVisible = attributes.getBarAlwaysVisible();
        boolean zBooleanValue4 = barAlwaysVisible != null ? barAlwaysVisible.booleanValue() : false;
        Integer chatNotificationDisplayTimeout = attributes.getChatNotificationDisplayTimeout();
        int iIntValue = chatNotificationDisplayTimeout != null ? chatNotificationDisplayTimeout.intValue() : 10;
        Boolean chatQuickBar = attributes.getChatQuickBar();
        boolean zBooleanValue5 = chatQuickBar != null ? chatQuickBar.booleanValue() : false;
        Boolean startupCameraUsb = attributes.getStartupCameraUsb();
        boolean zBooleanValue6 = startupCameraUsb != null ? startupCameraUsb.booleanValue() : false;
        Reference.UseCase.PropositionTemplate propositionTemplate = toPropositionTemplate(attributes);
        Float ocrCollimatorRatio = attributes.getOcrCollimatorRatio();
        Double dValueOf = ocrCollimatorRatio != null ? Double.valueOf(ocrCollimatorRatio.floatValue()) : null;
        Float ocrSafeArea = attributes.getOcrSafeArea();
        Double dValueOf2 = ocrSafeArea != null ? Double.valueOf(ocrSafeArea.floatValue()) : null;
        Reference.UseCase.Consent consent = toConsent(attributes);
        if (attributes.getAnnotationsUrl() != null) {
            z2 = true;
            z = true;
        } else {
            z = r13;
            z2 = false;
        }
        Double d = dValueOf2;
        boolean z5 = zBooleanValue4;
        Reference.UseCase.LiveTranslation liveTranslation = toLiveTranslation(attributes);
        String caseReportId = attributes.getCaseReportId();
        String reference = attributes.getReference();
        String displayNameMode = attributes.getDisplayNameMode();
        String rtccDisplayName = attributes.getRtccDisplayName();
        Boolean consentRequired = attributes.getConsentRequired();
        boolean z6 = consentRequired != null ? !consentRequired.booleanValue() : false;
        Reference.UseCase.Analytics analytics = toAnalytics(attributes);
        String rtccMpi = attributes.getRtccMpi();
        Integer acdRequestTimeout = attributes.getAcdRequestTimeout();
        return new Reference.UseCase(useCaseId, userRole, callDistribution, useCaseName, cameraSide, zBooleanValue, videoProfile, zBooleanValue2, z3, z4, survey, buttons, z5, iIntValue, zBooleanValue5, zBooleanValue6, propositionTemplate, dValueOf, d, consent, z2, liveTranslation, caseReportId, reference, displayNameMode, rtccDisplayName, z6, analytics, rtccMpi, acdRequestTimeout != null ? acdRequestTimeout.intValue() : -1);
    }
}
