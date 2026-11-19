.class public final Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0010\u0006\n\u0002\u0008\u0008\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\"\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010#\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010$\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&H\u0000\u001a\u0010\u0010\'\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010(\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010)\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010*\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010+\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010,\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010-\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010.\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010/\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00100\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00102\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00103\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00104\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00105\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00106\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00107\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00108\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u00109\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010:\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010;\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010<\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010=\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010>\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010?\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010@\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010A\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010B\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0018\u0010C\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u0003H\u0000\u001a \u0010E\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u0003H\u0000\u001a\u0010\u0010H\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010I\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001aO\u0010J\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010K\u001a\u0004\u0018\u00010L2\u0008\u0010M\u001a\u0004\u0018\u00010L2\u0008\u0010N\u001a\u0004\u0018\u00010L2\u0008\u0010O\u001a\u0004\u0018\u00010L2\u0008\u0010P\u001a\u0004\u0018\u00010\u00032\u0006\u0010Q\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0010R\u001a\u0010\u0010S\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "createAgentRequest",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
        "caseReportId",
        "",
        "item",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
        "USER_ROLE",
        "createRemoteCameraStopRequestedAsHost",
        "createRecordingStartAsHost",
        "createRecordingPausedAsHost",
        "createRecordingResumedAsHost",
        "createRecordingEndAsHost",
        "createUserJoinedAsHost",
        "callId",
        "",
        "createRemoteMicroStartRequestedAsHost",
        "createRemoteMicroStopRequestedAsHost",
        "createRemoteCameraStartRequestedAsHost",
        "createRemoteCameraFrontRequestedAsHost",
        "userRole",
        "createRemoteCameraRearRequestedAsHost",
        "createRemoteCameraResumeRequestedAsHost",
        "createRemoteCameraPauseRequestedAsHost",
        "createShareStartRequestedAsHost",
        "createShareStopRequestedAsHost",
        "createRemoteScreencastStartRequestedAsHost",
        "createRemoteScreencastStopRequestedAsHost",
        "createRemoteTorchStartRequestedAsHost",
        "createRemoteTorchStopRequestedAsHost",
        "createAnnotationsChangedAsHost",
        "createCallRequestAcceptedAsHost",
        "createCallRequestDeclinedAsHost",
        "createRemoteGalleryStartRequestedAsHost",
        "createGpsRequestedAsHost",
        "createVideoSaveRequestedAsHost",
        "createRemoteSnapshotRequestedAsHost",
        "createCallEndedAsHost",
        "callEndReason",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;",
        "createMicroStoppedRequestedAsHost",
        "createMicroStartedRequestedAsHost",
        "createCameraStopRequestedAsHost",
        "createCameraStartRequestedAsHost",
        "createCameraRearRequestedAsHost",
        "createCameraFrontRequestedAsHost",
        "createCameraResumeRequestedAsHost",
        "createCameraPauseRequestedAsHost",
        "createShareStoppedAsHost",
        "createTorchStoppedRequestAsHost",
        "createTorchStartRequestAsHost",
        "createAnnotationsErasedAsHost",
        "createScreencastStopRequestedAsHost",
        "createScreencastStartRequestedAsHost",
        "createCallHangupAsHost",
        "createMicroStartedAsHost",
        "createMicroStoppedAsHost",
        "createCameraStartedAsHost",
        "createCameraStoppedAsHost",
        "createCameraSetToFrontAsHost",
        "createCameraSetToRearAsHost",
        "createCameraPausedAsHost",
        "createCameraResumedAsHost",
        "createTorchStartedAsHost",
        "createTorchStoppedAsHost",
        "createScreencastStartedAsHost",
        "createScreencastStoppedAsHost",
        "createShareStartedAsHost",
        "createItemUserConnectedAsHost",
        "userSid",
        "createChatMessageReceivedAsHost",
        "chatMessageId",
        "chatMessageContent",
        "createLiveTranslationStartedAsHost",
        "createLiveTranslationStoppedAsHost",
        "createGeoLocationReceivedAsHost",
        "gpsLatitude",
        "",
        "gpsLongitude",
        "gpsAccuracy",
        "gpsAltitude",
        "gpsAltitudeAccuracy",
        "gpsPerformedAt",
        "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
        "createRemotePickerRequestedAsHost",
        "sdk_installedRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final USER_ROLE:Ljava/lang/String; = "host"


# direct methods
.method private static final createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 7

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    new-instance v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;

    new-instance v3, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p1, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance v4, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    new-instance p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;

    new-instance v2, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v5, p0, v6, v5}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;-><init>(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;)V

    invoke-direct {v4, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;-><init>(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;-><init>(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;-><init>(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;)V

    return-object v0
.end method

.method public static final createAnnotationsChangedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsChanged;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsChanged;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createAnnotationsErasedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsErased;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsErased;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCallEndedAsHost(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallEnded;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallEnded;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v3, "host"

    invoke-direct {v0, v1, v3, v2, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCallHangupAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$Hangup;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$Hangup;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCallRequestAcceptedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestAccepted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestAccepted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCallRequestDeclinedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestDeclined;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestDeclined;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraFrontRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraFrontRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraFrontRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraPauseRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPauseRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPauseRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraPausedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPaused;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPaused;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraRearRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraRearRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraRearRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraResumeRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumeRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumeRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraResumedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumed;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumed;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraSetToFrontAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToFront;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToFront;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraSetToRearAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToRear;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToRear;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createChatMessageReceivedAsHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageReceived;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageReceived;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createGeoLocationReceivedAsHost(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsReceived;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsReceived;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createGpsRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createItemUserConnectedAsHost(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserConnected;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserConnected;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v3, "host"

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p0, v1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createLiveTranslationStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createLiveTranslationStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStartedRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStoppedRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRecordingEndAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingEnded;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingEnded;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRecordingPausedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingPaused;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingPaused;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRecordingResumedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingResumed;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingResumed;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRecordingStartAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteCameraFrontRequestedAsHost(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraFrontRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraFrontRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteCameraPauseRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraPauseRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraPauseRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteCameraRearRequestedAsHost(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraRearRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraRearRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteCameraResumeRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraResumeRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraResumeRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteCameraStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteCameraStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteGalleryStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemoteGalleryStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemoteGalleryStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteMicroStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteMicroStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemotePickerRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemotePickerRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemotePickerRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteScreencastStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteScreencastStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteSnapshotRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants$RemoteSnapshotRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants$RemoteSnapshotRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteTorchStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createRemoteTorchStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStartRequestAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStoppedRequestAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createUserJoinedAsHost(Ljava/lang/String;I)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserJoined;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserJoined;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createVideoSaveRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants$VideoSaveRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants$VideoSaveRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAgentRequest(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method
