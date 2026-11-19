.class public final Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u00080\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a(\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0000\u001a\u0018\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a \u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\rH\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010 \u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\"\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010#\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010$\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010&\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\'\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010(\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010)\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010*\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010+\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010,\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010-\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010.\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010/\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00100\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00102\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00103\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00104\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00105\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u00106\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\"\u00107\u001a\u00020\u00012\u0008\u00108\u001a\u0004\u0018\u00010\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a \u0010:\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010;\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010<\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010=\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010>\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010?\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006@"
    }
    d2 = {
        "createGuestRequest",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
        "item",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
        "createItemUserConnected",
        "userRole",
        "",
        "userSid",
        "userUid",
        "analytics",
        "",
        "createUserJoined",
        "callId",
        "",
        "createUserLeft",
        "callEndReason",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;",
        "createCallFailed",
        "failureEndReason",
        "createCallHangup",
        "createConsent",
        "isAccepted",
        "consentId",
        "createDisplayNameSet",
        "displayName",
        "createDisplayNameSkipped",
        "createMicroStartedRequested",
        "createMicroStarted",
        "createMicroStoppedRequested",
        "createMicroStopped",
        "createCameraStarted",
        "createCameraStartRequested",
        "createCameraStopped",
        "createCameraStopRequested",
        "createCameraSetToFront",
        "createCameraFrontRequested",
        "createCameraSetToRear",
        "createCameraRearRequested",
        "createCameraPauseRequested",
        "createCameraResumeRequested",
        "createCameraPaused",
        "createCameraResumed",
        "createShareStartRequested",
        "createShareStarted",
        "createShareStopped",
        "createScreencastStarted",
        "createScreencastStartRequested",
        "createScreencastStopped",
        "createScreencastStopRequested",
        "createTorchStarted",
        "createTorchStartedRequest",
        "createTorchStopped",
        "createTorchStoppedRequest",
        "createAnnotationsChanged",
        "createAnnotationsErased",
        "createChatMessageSent",
        "chatMessageId",
        "chatMessageContent",
        "createChatMessageReceived",
        "createLiveTranslationStartedAsGuest",
        "createLiveTranslationStoppedAsGuest",
        "createLiveTranslationError",
        "createGpsAccepted",
        "createGpsDeclined",
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


# direct methods
.method public static final createAnnotationsChanged(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsChanged;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsChanged;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createAnnotationsErased(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsErased;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsErased;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCallFailed(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallFailed;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallFailed;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCallHangup(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$Hangup;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$Hangup;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraFrontRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraFrontRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraFrontRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraPauseRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPauseRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPauseRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraPaused(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPaused;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPaused;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraRearRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraRearRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraRearRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraResumeRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumeRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumeRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraResumed(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumed;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumed;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraSetToFront(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToFront;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToFront;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraSetToRear(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToRear;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToRear;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStartRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStopRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createCameraStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createChatMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageReceived;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageReceived;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createChatMessageSent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageSent;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageSent;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageSent;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageSent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createConsent(ZLjava/lang/String;I)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;

    sget-object v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentAccepted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentAccepted;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;

    sget-object v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentDeclined;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentDeclined;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createDisplayNameSet(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$DisplayNameSet;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSet;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSet;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$DisplayNameSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createDisplayNameSkipped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSkipped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSkipped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createGpsAccepted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsAccepted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsAccepted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createGpsDeclined(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsDeclined;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsDeclined;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method private static final createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 7

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    new-instance v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;

    new-instance v3, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;-><init>(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;-><init>(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;)V

    return-object v0
.end method

.method public static final createItemUserConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 8

    invoke-static {p0, p1, p2}, Lcj;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserConnected;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserConnected;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createLiveTranslationError(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionError;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionError;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createLiveTranslationStartedAsGuest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createLiveTranslationStoppedAsGuest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStartedRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createMicroStoppedRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStartRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStopRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createScreencastStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStartRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createShareStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStarted;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStarted;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStartedRequest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStartRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStartRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopped;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createTorchStoppedRequest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopRequested;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopRequested;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createUserJoined(Ljava/lang/String;I)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserJoined;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserJoined;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method public static final createUserLeft(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft;

    sget-object v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserLeft;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserLeft;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGuestRequest(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method
