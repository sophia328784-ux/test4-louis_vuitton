package com.sightcall.universal.internal.report.data.mappers;

import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.util.DateTimeUtilKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\u0006\n\u0002\b\b\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\"\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010#\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010$\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&H\u0000\u001a\u0010\u0010'\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010(\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010)\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010*\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010+\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010,\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010-\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010.\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010/\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00100\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00102\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00103\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00104\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00105\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00106\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00107\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00108\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00109\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010:\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010;\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010<\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010=\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010>\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010?\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010@\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010A\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010B\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010C\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u0003H\u0000\u001a \u0010E\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u0003H\u0000\u001a\u0010\u0010H\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010I\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001aO\u0010J\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010K\u001a\u0004\u0018\u00010L2\b\u0010M\u001a\u0004\u0018\u00010L2\b\u0010N\u001a\u0004\u0018\u00010L2\b\u0010O\u001a\u0004\u0018\u00010L2\b\u0010P\u001a\u0004\u0018\u00010\u00032\u0006\u0010Q\u001a\u00020\u0003H\u0000¢\u0006\u0002\u0010R\u001a\u0010\u0010S\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"createAgentRequest", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "caseReportId", "", "item", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "USER_ROLE", "createRemoteCameraStopRequestedAsHost", "createRecordingStartAsHost", "createRecordingPausedAsHost", "createRecordingResumedAsHost", "createRecordingEndAsHost", "createUserJoinedAsHost", "callId", "", "createRemoteMicroStartRequestedAsHost", "createRemoteMicroStopRequestedAsHost", "createRemoteCameraStartRequestedAsHost", "createRemoteCameraFrontRequestedAsHost", "userRole", "createRemoteCameraRearRequestedAsHost", "createRemoteCameraResumeRequestedAsHost", "createRemoteCameraPauseRequestedAsHost", "createShareStartRequestedAsHost", "createShareStopRequestedAsHost", "createRemoteScreencastStartRequestedAsHost", "createRemoteScreencastStopRequestedAsHost", "createRemoteTorchStartRequestedAsHost", "createRemoteTorchStopRequestedAsHost", "createAnnotationsChangedAsHost", "createCallRequestAcceptedAsHost", "createCallRequestDeclinedAsHost", "createRemoteGalleryStartRequestedAsHost", "createGpsRequestedAsHost", "createVideoSaveRequestedAsHost", "createRemoteSnapshotRequestedAsHost", "createCallEndedAsHost", "callEndReason", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;", "createMicroStoppedRequestedAsHost", "createMicroStartedRequestedAsHost", "createCameraStopRequestedAsHost", "createCameraStartRequestedAsHost", "createCameraRearRequestedAsHost", "createCameraFrontRequestedAsHost", "createCameraResumeRequestedAsHost", "createCameraPauseRequestedAsHost", "createShareStoppedAsHost", "createTorchStoppedRequestAsHost", "createTorchStartRequestAsHost", "createAnnotationsErasedAsHost", "createScreencastStopRequestedAsHost", "createScreencastStartRequestedAsHost", "createCallHangupAsHost", "createMicroStartedAsHost", "createMicroStoppedAsHost", "createCameraStartedAsHost", "createCameraStoppedAsHost", "createCameraSetToFrontAsHost", "createCameraSetToRearAsHost", "createCameraPausedAsHost", "createCameraResumedAsHost", "createTorchStartedAsHost", "createTorchStoppedAsHost", "createScreencastStartedAsHost", "createScreencastStoppedAsHost", "createShareStartedAsHost", "createItemUserConnectedAsHost", "userSid", "createChatMessageReceivedAsHost", "chatMessageId", "chatMessageContent", "createLiveTranslationStartedAsHost", "createLiveTranslationStoppedAsHost", "createGeoLocationReceivedAsHost", "gpsLatitude", "", "gpsLongitude", "gpsAccuracy", "gpsAltitude", "gpsAltitudeAccuracy", "gpsPerformedAt", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "createRemotePickerRequestedAsHost", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CaseReportMapperAgentKt {
    public static final String USER_ROLE = "host";

    private static final CaseReportV3Request createAgentRequest(String str, CaseReportV3Request.Data.Attributes.Item item) {
        return new CaseReportV3Request(new CaseReportV3Request.Data(null, new CaseReportV3Request.Data.Attributes(CollectionsKt.O(item), DateTimeUtilKt.getCurrentDateTime()), new CaseReportV3Request.Data.Relationships(new CaseReportV3Request.Data.Relationships.CaseReport(new CaseReportV3Request.Data.Relationships.CaseReport.CaseReportData(null, str, 1, null))), 1, null));
    }

    public static final CaseReportV3Request createAnnotationsChangedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.AnnotationsConstants.AnnotationsChanged.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createAnnotationsErasedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.AnnotationsConstants.AnnotationsErased.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCallEndedAsHost(String str, CaseReportV3Request.Data.Attributes.CallEnded.CallEndReason callEndReason) {
        str.getClass();
        callEndReason.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.CallEnded(CaseReportV3Request.CallConstants.CallEnded.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime(), callEndReason.getValue()));
    }

    public static final CaseReportV3Request createCallHangupAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CallConstants.Hangup.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCallRequestAcceptedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CallConstants.CallRequestAccepted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCallRequestDeclinedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CallConstants.CallRequestDeclined.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraFrontRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraFrontRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraPauseRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraPauseRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraPausedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraPaused.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraRearRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraRearRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraResumeRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraResumeRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraResumedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraResumed.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraSetToFrontAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraSetToFront.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraSetToRearAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraSetToRear.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStartedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createCameraStoppedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.CameraStopped.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createChatMessageReceivedAsHost(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.ChatMessageReceived(CaseReportV3Request.ChatConstants.ChatMessageReceived.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime(), str2, str3));
    }

    public static final CaseReportV3Request createGeoLocationReceivedAsHost(String str, Double d, Double d2, Double d3, Double d4, String str2, String str3) {
        str.getClass();
        str3.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.GpsReceived(CaseReportV3Request.GpsConstants.GpsReceived.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime(), d, d2, d3, d4, str2, str3));
    }

    public static final CaseReportV3Request createGpsRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.GpsConstants.GpsRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createItemUserConnectedAsHost(String str, String str2) {
        str.getClass();
        str2.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.UserConnected(CaseReportV3Request.UserConstants.UserConnected.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime(), null, str2, null));
    }

    public static final CaseReportV3Request createLiveTranslationStartedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.LiveTranslation.LiveTranslationSessionStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createLiveTranslationStoppedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.LiveTranslation.LiveTranslationSessionStopped.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStartedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.MicroConstants.MicroStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStartedRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.MicroConstants.MicroStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStoppedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.MicroConstants.MicroStopped.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createMicroStoppedRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.MicroConstants.MicroStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRecordingEndAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.RecordingConstants.RecordingEnded.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRecordingPausedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.RecordingConstants.RecordingPaused.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRecordingResumedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.RecordingConstants.RecordingResumed.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRecordingStartAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.RecordingConstants.RecordingStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteCameraFrontRequestedAsHost(String str, String str2) {
        str.getClass();
        str2.getClass();
        String value = CaseReportV3Request.CameraConstants.RemoteCameraFrontRequested.INSTANCE.getValue();
        String lowerCase = str2.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteCameraPauseRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.RemoteCameraPauseRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteCameraRearRequestedAsHost(String str, String str2) {
        str.getClass();
        str2.getClass();
        String value = CaseReportV3Request.CameraConstants.RemoteCameraRearRequested.INSTANCE.getValue();
        String lowerCase = str2.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(value, lowerCase, DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteCameraResumeRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.RemoteCameraResumeRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteCameraStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.RemoteCameraStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteCameraStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.CameraConstants.RemoteCameraStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteGalleryStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ShareConstants.RemoteGalleryStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteMicroStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.MicroConstants.RemoteMicroStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteMicroStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.MicroConstants.RemoteMicroStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemotePickerRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ShareConstants.RemotePickerRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteScreencastStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ScreencastConstants.RemoteScreencastStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteScreencastStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ScreencastConstants.RemoteScreencastStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteSnapshotRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.SnapshotConstants.RemoteSnapshotRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteTorchStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.TorchConstants.RemoteTorchStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createRemoteTorchStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.TorchConstants.RemoteTorchStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ScreencastConstants.ScreencastStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStartedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ScreencastConstants.ScreencastStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ScreencastConstants.ScreencastStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createScreencastStoppedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ScreencastConstants.ScreencastStopped.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStartRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ShareConstants.ShareStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStartedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ShareConstants.ShareStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStopRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ShareConstants.ShareStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createShareStoppedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.ShareConstants.ShareStopped.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStartRequestAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.TorchConstants.TorchStartRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStartedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.TorchConstants.TorchStarted.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStoppedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.TorchConstants.TorchStopped.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createTorchStoppedRequestAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.TorchConstants.TorchStopRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }

    public static final CaseReportV3Request createUserJoinedAsHost(String str, int i2) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.UserJoined(CaseReportV3Request.UserConstants.UserJoined.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime(), i2));
    }

    public static final CaseReportV3Request createVideoSaveRequestedAsHost(String str) {
        str.getClass();
        return createAgentRequest(str, new CaseReportV3Request.Data.Attributes.BaseItem(CaseReportV3Request.VideoSaveConstants.VideoSaveRequested.INSTANCE.getValue(), "host", DateTimeUtilKt.getCurrentDateTime()));
    }
}
