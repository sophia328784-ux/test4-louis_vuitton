package com.sightcall.universal.internal.report.data.mappers;

import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.util.DateTimeUtilKt;
import defpackage.cj;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b0\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a(\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0000\u001a\u0018\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a \u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\rH\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010 \u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\"\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010#\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010$\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010&\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010'\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010(\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010)\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010*\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010+\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010,\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010-\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010.\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010/\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00100\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00102\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00103\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00104\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00105\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00106\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\"\u00107\u001a\u00020\u00012\b\u00108\u001a\u0004\u0018\u00010\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a \u0010:\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010;\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010<\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010=\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010>\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010?\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¨\u0006@"}, d2 = {"createGuestRequest", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "item", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "createItemUserConnected", "userRole", "", "userSid", "userUid", "analytics", "", "createUserJoined", "callId", "", "createUserLeft", "callEndReason", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;", "createCallFailed", "failureEndReason", "createCallHangup", "createConsent", "isAccepted", "consentId", "createDisplayNameSet", "displayName", "createDisplayNameSkipped", "createMicroStartedRequested", "createMicroStarted", "createMicroStoppedRequested", "createMicroStopped", "createCameraStarted", "createCameraStartRequested", "createCameraStopped", "createCameraStopRequested", "createCameraSetToFront", "createCameraFrontRequested", "createCameraSetToRear", "createCameraRearRequested", "createCameraPauseRequested", "createCameraResumeRequested", "createCameraPaused", "createCameraResumed", "createShareStartRequested", "createShareStarted", "createShareStopped", "createScreencastStarted", "createScreencastStartRequested", "createScreencastStopped", "createScreencastStopRequested", "createTorchStarted", "createTorchStartedRequest", "createTorchStopped", "createTorchStoppedRequest", "createAnnotationsChanged", "createAnnotationsErased", "createChatMessageSent", "chatMessageId", "chatMessageContent", "createChatMessageReceived", "createLiveTranslationStartedAsGuest", "createLiveTranslationStoppedAsGuest", "createLiveTranslationError", "createGpsAccepted", "createGpsDeclined", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CaseReportMapperGuestKt {
    public static final CaseReportV3Request createAnnotationsChanged(String str) {
        str.getClass();
        String value = CaseReportV3Request.AnnotationsConstants.AnnotationsChanged.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createAnnotationsErased(String str) {
        str.getClass();
        String value = CaseReportV3Request.AnnotationsConstants.AnnotationsErased.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCallFailed(String str, String str2) {
        str.getClass();
        str2.getClass();
        String value = CaseReportV3Request.CallConstants.CallFailed.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.CallFailed(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), str2));
    }

    public static final CaseReportV3Request createCallHangup(String str) {
        str.getClass();
        String value = CaseReportV3Request.CallConstants.Hangup.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraFrontRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraFrontRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraPauseRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraPauseRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraPaused(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraPaused.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraRearRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraRearRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraResumeRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraResumeRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraResumed(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraResumed.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraSetToFront(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraSetToFront.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraSetToRear(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraSetToRear.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStartRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraStartRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStarted(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraStarted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStopRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraStopRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStopped(String str) {
        str.getClass();
        String value = CaseReportV3Request.CameraConstants.CameraStopped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createChatMessageReceived(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        String value = CaseReportV3Request.ChatConstants.ChatMessageReceived.INSTANCE.getValue();
        String lowerCase = str3.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.ChatMessageReceived(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), str, str2));
    }

    public static final CaseReportV3Request createChatMessageSent(String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        String value = CaseReportV3Request.ChatConstants.ChatMessageSent.INSTANCE.getValue();
        String lowerCase = str3.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.ChatMessageSent(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), str, str2));
    }

    public static final CaseReportV3Request createConsent(boolean z, String str, int i2) {
        CaseReportV3Request.Data.Attributes.ConsentAccepted consentAccepted;
        str.getClass();
        if (z) {
            String value = CaseReportV3Request.ConsentModeConstants.ConsentAccepted.INSTANCE.getValue();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            consentAccepted = new CaseReportV3Request.Data.Attributes.ConsentAccepted(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), i2);
        } else {
            String value2 = CaseReportV3Request.ConsentModeConstants.ConsentDeclined.INSTANCE.getValue();
            String lowerCase2 = str.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            consentAccepted = new CaseReportV3Request.Data.Attributes.ConsentAccepted(value2, lowerCase2, DateTimeUtilKt.getCurrentDateTime(), i2);
        }
        return createGuestRequest(consentAccepted);
    }

    public static final CaseReportV3Request createDisplayNameSet(String str, String str2) {
        str.getClass();
        str2.getClass();
        String value = CaseReportV3Request.DisplayNameConstants.DisplayNameSet.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.DisplayNameSet(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), str2));
    }

    public static final CaseReportV3Request createDisplayNameSkipped(String str) {
        str.getClass();
        String value = CaseReportV3Request.DisplayNameConstants.DisplayNameSkipped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createGpsAccepted(String str) {
        str.getClass();
        String value = CaseReportV3Request.GpsConstants.GpsAccepted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createGpsDeclined(String str) {
        str.getClass();
        String value = CaseReportV3Request.GpsConstants.GpsDeclined.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    private static final CaseReportV3Request createGuestRequest(CaseReportV3Request.Data.Attributes.Item item) {
        return new CaseReportV3Request(new CaseReportV3Request.Data(null, new CaseReportV3Request.Data.Attributes(CollectionsKt.O(item), DateTimeUtilKt.getCurrentDateTime()), null, 1, null));
    }

    public static final CaseReportV3Request createItemUserConnected(String str, String str2, String str3, boolean z) {
        cj.z(str, str2, str3);
        String value = CaseReportV3Request.UserConstants.UserConnected.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.UserConnected(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), str3, str2, Boolean.valueOf(z)));
    }

    public static final CaseReportV3Request createLiveTranslationError(String str) {
        str.getClass();
        String value = CaseReportV3Request.LiveTranslation.LiveTranslationSessionError.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createLiveTranslationStartedAsGuest(String str) {
        str.getClass();
        String value = CaseReportV3Request.LiveTranslation.LiveTranslationSessionStarted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createLiveTranslationStoppedAsGuest(String str) {
        str.getClass();
        String value = CaseReportV3Request.LiveTranslation.LiveTranslationSessionStopped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStarted(String str) {
        str.getClass();
        String value = CaseReportV3Request.MicroConstants.MicroStarted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStartedRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.MicroConstants.MicroStartRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStopped(String str) {
        str.getClass();
        String value = CaseReportV3Request.MicroConstants.MicroStopped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStoppedRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.MicroConstants.MicroStopRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStartRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.ScreencastConstants.ScreencastStartRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStarted(String str) {
        str.getClass();
        String value = CaseReportV3Request.ScreencastConstants.ScreencastStarted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStopRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.ScreencastConstants.ScreencastStopRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStopped(String str) {
        str.getClass();
        String value = CaseReportV3Request.ScreencastConstants.ScreencastStopped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStartRequested(String str) {
        str.getClass();
        String value = CaseReportV3Request.ShareConstants.ShareStartRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStarted(String str) {
        str.getClass();
        String value = CaseReportV3Request.ShareConstants.ShareStarted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStopped(String str) {
        str.getClass();
        String value = CaseReportV3Request.ShareConstants.ShareStopped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStarted(String str) {
        str.getClass();
        String value = CaseReportV3Request.TorchConstants.TorchStarted.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStartedRequest(String str) {
        str.getClass();
        String value = CaseReportV3Request.TorchConstants.TorchStartRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStopped(String str) {
        str.getClass();
        String value = CaseReportV3Request.TorchConstants.TorchStopped.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStoppedRequest(String str) {
        str.getClass();
        String value = CaseReportV3Request.TorchConstants.TorchStopRequested.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createUserJoined(String str, int i2) {
        str.getClass();
        String value = CaseReportV3Request.UserConstants.UserJoined.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.UserJoined(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), i2));
    }

    public static final CaseReportV3Request createUserLeft(String str, CaseReportV3Request.Data.Attributes.UserLeft.UserLeftReason userLeftReason) {
        str.getClass();
        userLeftReason.getClass();
        String value = CaseReportV3Request.UserConstants.UserLeft.INSTANCE.getValue();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createGuestRequest(new CaseReportV3Request.Data.Attributes.UserLeft(value, lowerCase, DateTimeUtilKt.getCurrentDateTime(), userLeftReason.getValue()));
    }
}
