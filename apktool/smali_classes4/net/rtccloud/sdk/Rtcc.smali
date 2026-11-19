.class public final Lnet/rtccloud/sdk/Rtcc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/Rtcc$Native;,
        Lnet/rtccloud/sdk/Rtcc$Status;,
        Lnet/rtccloud/sdk/Rtcc$Error;
    }
.end annotation


# static fields
.field private static final HAP_DEFAULT:Ljava/lang/String; = "https://hap1.rtccloud.net/v4/"

.field private static final HAP_PATTERN:Ljava/lang/String; = "{#}"

.field private static final HAP_US_PPR:Ljava/lang/String; = "/usppr"

.field private static final HAP_US_PROD:Ljava/lang/String; = "/usprod"

.field private static final MAX_CONNECTION_RETRY_COUNT:I = 0x64

.field private static final MAX_JPEG_SIZE:I = 0xf4240

.field private static final PATTERN_IP:Ljava/util/regex/Pattern;

.field public static final REQUIRED_PERMISSIONS:[Lnet/rtccloud/sdk/util/Permission;

.field public static VERSION_CODE:I

.field public static VERSION_NAME:Ljava/lang/String;

.field private static volatile instance:Lnet/rtccloud/sdk/Rtcc;

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final acdModule:Lnet/rtccloud/sdk/AcdModule;

.field analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private analyticsUploadToken:Ljava/lang/String;

.field private analyticsUploadUrl:Ljava/lang/String;

.field private final analyticsUuid:Ljava/util/UUID;

.field final bus:Lnet/rtccloud/sdk/event/EventBus;

.field private callDirection:Ljava/lang/String;

.field private final callModule:Lnet/rtccloud/sdk/CallModule;

.field private connectionRetryCount:I

.field final context:Landroid/content/Context;

.field private final dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

.field private final extras:Landroid/os/Bundle;

.field isTesting:Z

.field private final meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

.field private mpid:Ljava/lang/String;

.field private final nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

.field private pendingDisconnectionReason:Lnet/rtccloud/sdk/Rtcc$Error;

.field private final presenceModule:Lnet/rtccloud/sdk/PresenceModule;

.field private final rosterModule:Lnet/rtccloud/sdk/RosterModule;

.field private rtccJwt:Ljava/lang/String;

.field private rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

.field private final statsModule:Lnet/rtccloud/sdk/StatsModule;

.field volatile status:Lnet/rtccloud/sdk/Rtcc$Status;

.field user:Lnet/rtccloud/sdk/User;

.field private final utilsModule:Lnet/rtccloud/sdk/UtilsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Lnet/rtccloud/sdk/util/Permission;->INTERNET:Lnet/rtccloud/sdk/util/Permission;

    filled-new-array {v0}, [Lnet/rtccloud/sdk/util/Permission;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Rtcc;->REQUIRED_PERMISSIONS:[Lnet/rtccloud/sdk/util/Permission;

    const v0, 0x2fb0e079

    sput v0, Lnet/rtccloud/sdk/Rtcc;->VERSION_CODE:I

    const-string v0, "7.10.2 Build 800120953"

    sput-object v0, Lnet/rtccloud/sdk/Rtcc;->VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/rtccloud/sdk/Rtcc;->VERSION_NAME:Ljava/lang/String;

    const-string v3, " (120952)"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    sget v1, Lnet/rtccloud/sdk/Rtcc;->VERSION_CODE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v1, 0x171a660

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "release"

    const-string v6, "2026-09-07 08:49:28 UTC"

    const-string v7, "84e19ba2"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Version:%s, Code:%d, Date:%s, Git:#%s, Mucl:%d, Type:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->ENGINE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "<local.+addr=\"(.+?)\".*/>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Rtcc;->PATTERN_IP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/rtccloud/sdk/Rtcc$Native;Lnet/rtccloud/sdk/event/EventBus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    iput-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->mpid:Ljava/lang/String;

    const-string v1, "in"

    iput-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->callDirection:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    iput-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccJwt:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsUuid:Ljava/util/UUID;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Rtcc;->isTesting:Z

    invoke-static {}, Lnet/rtccloud/sdk/di/InjectorKt;->getRtccComponent()Lnet/rtccloud/sdk/di/RtccComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/rtccloud/sdk/di/RtccComponent;->inject(Lnet/rtccloud/sdk/Rtcc;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    iput-object p3, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    sget-object p3, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Rtcc"

    sget-object v1, Lnet/rtccloud/sdk/Rtcc;->REQUIRED_PERMISSIONS:[Lnet/rtccloud/sdk/util/Permission;

    invoke-static {p3, p1, v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforcePermissions(Lnet/rtccloud/sdk/util/OldLogger;Landroid/content/Context;Ljava/lang/String;[Lnet/rtccloud/sdk/util/Permission;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->loadLibrary()V

    new-instance p1, Lnet/rtccloud/sdk/RosterModule;

    sget-object p3, Lnet/rtccloud/sdk/RosterModule$Native;->JNI:Lnet/rtccloud/sdk/RosterModule$Native;

    invoke-direct {p1, p0, p3}, Lnet/rtccloud/sdk/RosterModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/RosterModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->rosterModule:Lnet/rtccloud/sdk/RosterModule;

    new-instance p1, Lnet/rtccloud/sdk/PresenceModule;

    sget-object p3, Lnet/rtccloud/sdk/PresenceModule$Native;->JNI:Lnet/rtccloud/sdk/PresenceModule$Native;

    invoke-direct {p1, p0, p3}, Lnet/rtccloud/sdk/PresenceModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/PresenceModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->presenceModule:Lnet/rtccloud/sdk/PresenceModule;

    new-instance p1, Lnet/rtccloud/sdk/DataChannelModule;

    sget-object p3, Lnet/rtccloud/sdk/DataChannelModule$Native;->JNI:Lnet/rtccloud/sdk/DataChannelModule$Native;

    invoke-direct {p1, p0, p3}, Lnet/rtccloud/sdk/DataChannelModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/DataChannelModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    new-instance p1, Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-direct {p1, p0}, Lnet/rtccloud/sdk/MeetingPointModule;-><init>(Lnet/rtccloud/sdk/Rtcc;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    new-instance p1, Lnet/rtccloud/sdk/StatsModule;

    sget-object p3, Lnet/rtccloud/sdk/StatsModule$Native;->JNI:Lnet/rtccloud/sdk/StatsModule$Native;

    invoke-direct {p1, p0, p3}, Lnet/rtccloud/sdk/StatsModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/StatsModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->statsModule:Lnet/rtccloud/sdk/StatsModule;

    new-instance p1, Lnet/rtccloud/sdk/UtilsModule;

    sget-object p3, Lnet/rtccloud/sdk/UtilsModule$Native;->JNI:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-direct {p1, p3}, Lnet/rtccloud/sdk/UtilsModule;-><init>(Lnet/rtccloud/sdk/UtilsModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->utilsModule:Lnet/rtccloud/sdk/UtilsModule;

    new-instance p1, Lnet/rtccloud/sdk/AcdModule;

    sget-object p3, Lnet/rtccloud/sdk/AcdModule$Native;->JNI:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-direct {p1, p0, p3}, Lnet/rtccloud/sdk/AcdModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/AcdModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    new-instance p1, Lnet/rtccloud/sdk/CallModule;

    sget-object p3, Lnet/rtccloud/sdk/CallModule$Native;->JNI:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-direct {p1, p0, p3}, Lnet/rtccloud/sdk/CallModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule$Native;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    sget-object p1, Lnet/rtccloud/sdk/util/OldLogger$Internal;->NATIVE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {p1}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p3

    new-instance v0, Lvt0;

    invoke-direct {v0, p0}, Lvt0;-><init>(Lnet/rtccloud/sdk/Rtcc;)V

    invoke-virtual {p3, v0}, Lnet/rtccloud/sdk/util/OldLogger;->addListener(Lnet/rtccloud/sdk/util/OldLogger$Listener;)V

    invoke-static {p1}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->getLevel()I

    move-result p0

    invoke-interface {p2, p0}, Lnet/rtccloud/sdk/Rtcc$Native;->setLoggerLevel(I)V

    return-void
.end method

.method private static YUV420toNV21([B[BII)[B
    .locals 4

    if-nez p1, :cond_0

    array-length p1, p0

    new-array p1, p1, [B

    :cond_0
    mul-int/2addr p2, p3

    div-int/lit8 p3, p2, 0x4

    add-int/2addr p3, p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p2

    move v1, p3

    :goto_0
    if-ge p2, p3, :cond_1

    aget-byte v2, p0, v1

    aput-byte v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p0, p2

    aput-byte v3, p1, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static synthetic a(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->lambda$teardown$3()V

    return-void
.end method

.method public static synthetic b(Lnet/rtccloud/sdk/Rtcc;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->lambda$sendErrorReason$2()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/util/OldLogger;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/Rtcc;->lambda$new$0(Lnet/rtccloud/sdk/util/OldLogger;I)V

    return-void
.end method

.method private static compressYuvToJpeg(Landroid/graphics/YuvImage;I)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x50

    move v2, p1

    :goto_0
    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    if-lt v2, p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v2, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v3, "[yuvimage] error compressing to jpeg"

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnet/rtccloud/sdk/Participant;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/rtccloud/sdk/Rtcc;->lambda$jni_participantsCB$5(Lnet/rtccloud/sdk/Participant;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static detectIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->PATTERN_IP:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/User;->ip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private disconnect(Lnet/rtccloud/sdk/Rtcc$Error;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->pendingDisconnectionReason:Lnet/rtccloud/sdk/Rtcc$Error;

    .line 98
    sget-object p1, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    .line 99
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Rtcc$Native;->disconnect()V

    return-void
.end method

.method public static disconnectIfNeeded()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "disconnect: no instance found"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->lambda$loadLibrary$1()V

    return-void
.end method

.method public static synthetic f(Lnet/rtccloud/sdk/Participant;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/rtccloud/sdk/Rtcc;->lambda$jni_participantsCB$4(Lnet/rtccloud/sdk/Participant;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g()Lnet/rtccloud/sdk/Rtcc;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    return-object v0
.end method

.method private static generateHapFromUserInput(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "https://hap1.rtccloud.net/v4/"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "ppr"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/usppr"

    goto :goto_0

    :cond_1
    const-string p0, "/usprod"

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "^/+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getJsUserAgent()Ljava/lang/String;
    .locals 2

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AndroidWebView %d.%d.%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    if-eqz p0, :cond_2

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    if-nez v0, :cond_1

    const-class v0, Lnet/rtccloud/sdk/Rtcc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    if-nez v1, :cond_0

    new-instance v1, Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Native;->JNI:Lnet/rtccloud/sdk/Rtcc$Native;

    new-instance v3, Lnet/rtccloud/sdk/event/EventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/rtccloud/sdk/event/EventBus;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, v3}, Lnet/rtccloud/sdk/Rtcc;-><init>(Landroid/content/Context;Lnet/rtccloud/sdk/Rtcc$Native;Lnet/rtccloud/sdk/event/EventBus;)V

    sput-object v1, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void

    :cond_2
    const-string p0, "[context] parameter must not be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static instance()Lnet/rtccloud/sdk/Rtcc;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    return-object v0

    :cond_0
    const-string v0, "Rtcc.init(Context) must be called before!"

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static jni_convertYuvToJpeg([BIII)[B
    .locals 6

    mul-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x2

    new-array v1, p3, [B

    invoke-static {p0, v1, p1, p2}, Lnet/rtccloud/sdk/Rtcc;->YUV420toNV21([B[BII)[B

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const p0, 0xf4240

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/Rtcc;->compressYuvToJpeg(Landroid/graphics/YuvImage;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static jni_getHap(I)Ljava/lang/String;
    .locals 7

    const-string p0, "{\"evt\":\"connectevent\",\"id\":10,\"desc\":\"No answer from HAP\"}"

    const-string v0, "response code: "

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    const-string v4, "{\"evt\":\"connectevent\",\"id\":1,\"desc\":\"Getting HAP file\"}"

    invoke-virtual {v3, v4}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->hap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->environment()I

    move-result v1

    invoke-static {v3, v1}, Lnet/rtccloud/sdk/Rtcc;->generateHapFromUserInput(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nLogHapEventBegin()V

    new-instance v3, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v3}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v4, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v4}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v3, Lokhttp3/logging/HttpLoggingInterceptor;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v5, v4, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3, v4}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    new-instance v5, Lokhttp3/Request;

    invoke-direct {v5, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    new-instance v4, Lokhttp3/internal/connection/RealCall;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    invoke-static {v4}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v3

    iget-boolean v4, v3, Lokhttp3/Response;->r:Z

    if-eqz v4, :cond_2

    iget-object v0, v3, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v3, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    invoke-static {v0}, Lnet/rtccloud/sdk/Rtcc;->detectIpAddress(Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v4, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v4, p0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, Lokhttp3/Response;->e:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "resonse Body: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/rtccloud/sdk/Jni;->nLogHapEventError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    sget-object v3, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v3, p0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "an exception occurred "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/Jni;->nLogHapEventError(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Error getHap(%s) %s"

    invoke-virtual {p0, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public static jni_getLocalIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/util/Utils;->getLocalIp(Lnet/rtccloud/sdk/util/OldLogger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$jni_participantsCB$4(Lnet/rtccloud/sdk/Participant;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"id\": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"uid\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"displayName\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    const-string v1, "\"}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$jni_participantsCB$5(Lnet/rtccloud/sdk/Participant;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"id\": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"mute\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \"deaf\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \"video\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \"lockas\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->isLocked()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadLibrary$1()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/util/Utils;->detectMissingNativeLibsFromAbi(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lnet/rtccloud/sdk/util/OldLogger;I)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p2}, Lnet/rtccloud/sdk/Rtcc$Native;->setLoggerLevel(I)V

    return-void
.end method

.method private synthetic lambda$sendErrorReason$2()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/Rtcc;->teardown(Lnet/rtccloud/sdk/Rtcc$Error;)V

    sget-object p0, Lnet/rtccloud/sdk/RtccHelper;->INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/RtccHelper;->setOnAnalyticsSentListener(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private synthetic lambda$teardown$3()V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->teardownInternal()V

    return-void
.end method

.method private loadLibrary()V
    .locals 3

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Loading Rtcc native library [libRtcc.so] for process pid=%d"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Rtcc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lwt0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwt0;-><init>(Lnet/rtccloud/sdk/Rtcc;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/internal/util/Utils;->throwAbiIncompatibilityError(Landroid/content/Context;Ljava/lang/UnsatisfiedLinkError;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private sendErrorReason()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/RtccHelper;->INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

    new-instance v1, Lxn0;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/RtccHelper;->setOnAnalyticsSentListener(Lkotlin/jvm/functions/Function0;)V

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nBuildStartupLog()V

    return-void
.end method

.method private sendMeetingProgressiveXEvent(Lnet/rtccloud/sdk/event/call/ProgressivexEvent;)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleProgressiveXEvent(Lnet/rtccloud/sdk/event/call/ProgressivexEvent;)V

    return-void
.end method

.method private sendMeetingShareCallback(II)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1, p2}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleShareStartStop(II)V

    return-void
.end method

.method private sendTranslationEvent(IIILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x7203

    if-ne p1, p2, :cond_1

    and-int/lit8 p1, p3, 0xf

    shr-int/lit8 p2, p3, 0x8

    and-int/lit8 p2, p2, 0xf

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p4, p2, p1}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->newTranslationSentence(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private teardown()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwt0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lwt0;-><init>(Lnet/rtccloud/sdk/Rtcc;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private teardown(Lnet/rtccloud/sdk/Rtcc$Error;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->pendingDisconnectionReason:Lnet/rtccloud/sdk/Rtcc$Error;

    .line 21
    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->teardown()V

    return-void
.end method

.method private declared-synchronized teardownInternal()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->pendingDisconnectionReason:Lnet/rtccloud/sdk/Rtcc$Error;

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {v1}, Lnet/rtccloud/sdk/Rtcc$Native;->disconnectEnd()V

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->onUnbind()V

    iput-object v3, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    iget-object v1, v1, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->end()V

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/MeetingPointModule;->teardown()V

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/AcdModule;->clear()V

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    :goto_1
    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iput-object v3, p0, Lnet/rtccloud/sdk/Rtcc;->pendingDisconnectionReason:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {p0, v2}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AcdModule;->clear()V

    :goto_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public acd()Lnet/rtccloud/sdk/AcdModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    return-object p0
.end method

.method public attendMeetingPoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->mpid:Ljava/lang/String;

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/MeetingPointModule;->asAttendee(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->join()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/MeetingPointModule;->asHost(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/rtccloud/sdk/MeetingPoint;->joinMeeting(Ljava/lang/String;)V

    return-void
.end method

.method public authenticate()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/util/Utils;->installId(Landroid/content/Context;)I

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->appid()Ljava/lang/String;

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->environment()I

    iget-boolean v0, p0, Lnet/rtccloud/sdk/Rtcc;->isTesting:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Rtcc$Native;->nRegisterForTests()V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccJwt:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, v0}, Lnet/rtccloud/sdk/Rtcc$Native;->registerJWT(Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object p0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "authenticate() error: rtccJwt is null"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public brutalDisconnect()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "brutalDisconnect()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Rtcc$Native;->brutalDisconnect()V

    return-void
.end method

.method public bus()Lnet/rtccloud/sdk/event/EventBus;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    return-object p0
.end method

.method public call()Lnet/rtccloud/sdk/CallModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    return-object p0
.end method

.method public connect(Lnet/rtccloud/sdk/User$Builder;Ljava/lang/String;)Lnet/rtccloud/sdk/User;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lnet/rtccloud/sdk/User;",
            ">(",
            "Lnet/rtccloud/sdk/User$Builder<",
            "TU;*>;",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/rtccloud/sdk/Rtcc;->isTesting:Z

    sget-object v2, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "connect(%s)"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    sget-object v4, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v2, v0, v4}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Lnet/rtccloud/sdk/User;->with(Lnet/rtccloud/sdk/User$Builder;)Lnet/rtccloud/sdk/User;

    move-result-object v3

    sget-object v4, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-direct {v0, v4}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    iput-object v3, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    iput v1, v0, Lnet/rtccloud/sdk/Rtcc;->connectionRetryCount:I

    iget-object v1, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v1}, Lnet/rtccloud/sdk/internal/util/Utils;->networkType(Landroid/content/Context;)Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    move-result-object v1

    iget-object v1, v1, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->value:Ljava/lang/String;

    iget-object v4, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v4}, Lnet/rtccloud/sdk/internal/util/Utils;->networkCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v5}, Lnet/rtccloud/sdk/internal/util/Utils;->findDeviceType(Landroid/content/Context;)I

    move-result v22

    const-string v5, "updateNetworkInfo(type:%s, carrier:%s)"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v4

    iget-object v4, v0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    sget-object v5, Lnet/rtccloud/sdk/Rtcc;->instance:Lnet/rtccloud/sdk/Rtcc;

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/User;->usapTurnDisabled()Z

    move-result v9

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/User;->localUdpDisabled()Z

    move-result v10

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/User;->attendeeSslPlugin()Z

    move-result v11

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/User;->advancedAnnotations()Z

    move-result v12

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/User;->liveTranslationLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->sdkVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/rtccloud/sdk/internal/util/Utils;->hardware(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/rtccloud/sdk/util/Utils;->version(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/rtccloud/sdk/util/Utils;->packageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->hap()Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v8, 0x2

    move-object/from16 v21, p2

    move-object/from16 v19, v1

    invoke-interface/range {v4 .. v22}, Lnet/rtccloud/sdk/Rtcc$Native;->connect(Lnet/rtccloud/sdk/Rtcc;IIIZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_1
    const-string v0, "Cannot connect a user if not "

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_2
    const-string v0, "[builder] must not be null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v3
.end method

.method public connectForTests(Lnet/rtccloud/sdk/User$Builder;)Lnet/rtccloud/sdk/User;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lnet/rtccloud/sdk/User;",
            ">(",
            "Lnet/rtccloud/sdk/User$Builder<",
            "TU;*>;)TU;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/rtccloud/sdk/Rtcc;->connect(Lnet/rtccloud/sdk/User$Builder;Ljava/lang/String;)Lnet/rtccloud/sdk/User;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Rtcc;->isTesting:Z

    return-object p1
.end method

.method public connectMeeting(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v14, p6

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-direct {v0, v1}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    const-string v1, ""

    invoke-static {v1, v1}, Lnet/rtccloud/sdk/User;->external(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$External$Builder;

    move-result-object v1

    move-object/from16 v10, p3

    invoke-virtual {v1, v10}, Lnet/rtccloud/sdk/User$Builder;->hap(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;

    move-result-object v1

    invoke-static {v1}, Lnet/rtccloud/sdk/User;->with(Lnet/rtccloud/sdk/User$Builder;)Lnet/rtccloud/sdk/User;

    move-result-object v1

    iput-object v1, v0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    if-eqz v14, :cond_0

    invoke-virtual {v0, v14}, Lnet/rtccloud/sdk/Rtcc;->provideRtccJWT(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/rtccloud/sdk/util/Utils;->version(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->sdkVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/rtccloud/sdk/internal/util/Utils;->hardware(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/rtccloud/sdk/util/Utils;->packageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0}, Lnet/rtccloud/sdk/Rtcc;->getJsUserAgent()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/util/Utils;->findDeviceType(Landroid/content/Context;)I

    move-result v15

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/4 v4, 0x2

    move/from16 v9, p2

    move-object/from16 v11, p4

    move/from16 v13, p5

    move/from16 v16, p7

    move-object v0, v1

    move/from16 v1, p1

    invoke-interface/range {v0 .. v16}, Lnet/rtccloud/sdk/Rtcc$Native;->connectMeeting(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public context()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    return-object p0
.end method

.method public createCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "out"

    iput-object p2, p0, Lnet/rtccloud/sdk/Rtcc;->callDirection:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "mirrortest"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/Call$Parameters;->audio(Z)Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/Call$Parameters;->video(Z)Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    sget-object p2, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/CallModule;->mirroring(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void

    :sswitch_1
    const-string p2, "attendee"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/MeetingPointModule;->asAttendee(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->call()V

    return-void

    :sswitch_2
    const-string p2, "host"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/MeetingPointModule;->asHost(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->call()V

    :cond_0
    :goto_0
    return-void

    :sswitch_3
    const-string p0, "sixdigits"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void

    :sswitch_4
    const-string p0, "external"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c869c35 -> :sswitch_4
        -0x4d5e47b8 -> :sswitch_3
        0x30f5a8 -> :sswitch_2
        0x2059ccba -> :sswitch_1
        0x6809b8d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public dataChannel()Lnet/rtccloud/sdk/DataChannelModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    return-object p0
.end method

.method public disableTestingMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Rtcc;->isTesting:Z

    return-void
.end method

.method public disconnect()V
    .locals 6

    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "disconnect()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v4, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v5, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/rtccloud/sdk/Rtcc$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    iget-object v2, v1, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p0, p0, v2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/Rtcc;->teardown(Lnet/rtccloud/sdk/Rtcc$Error;)V

    return-void

    :cond_2
    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    sget-object p0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect(Lnet/rtccloud/sdk/Rtcc$Error;)V

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/Rtcc;->teardown(Lnet/rtccloud/sdk/Rtcc$Error;)V

    return-void

    :cond_3
    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    return-void

    :cond_4
    sget-object p0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect(Lnet/rtccloud/sdk/Rtcc$Error;)V

    return-void

    :cond_5
    iget-object p0, v1, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect(Lnet/rtccloud/sdk/Rtcc$Error;)V

    return-void

    :cond_6
    sget-object p0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/Rtcc;->teardown(Lnet/rtccloud/sdk/Rtcc$Error;)V

    return-void
.end method

.method public extras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getAllMyChatRooms()I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Rtcc$Native;->getAllMyChatRooms()I

    move-result p0

    return p0
.end method

.method public getChatRoomForMID(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/Rtcc$Native;->getChatRoomForMID(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getChatRooms([Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2}, Lnet/rtccloud/sdk/Rtcc$Native;->getChatRooms([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getHistory(Ljava/lang/String;II)I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/Rtcc$Native;->getHistory(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getPresence([Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->presenceModule:Lnet/rtccloud/sdk/PresenceModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/PresenceModule;->request([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User;->sid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User;->uidLocal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Rtcc$Native;->getVersion()I

    move-result p0

    return p0
.end method

.method public isMeeting()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized jni_acdCanceledCB(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "jni_acdCanceledCB(uid=%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/AcdModule;->handleAcdCanceled(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_acdQueueCB(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "acdPositionCB(index=%d, length=%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    invoke-virtual {v0, p1, p2}, Lnet/rtccloud/sdk/AcdModule;->handleQueue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_acdReadyCB(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "acdReadyCB(uid=%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/AcdModule;->handleReady(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_acdRequestedCB(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "jni_acdRequestedCB(uid=%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/AcdModule;->handleAcdRequested(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_acdUserListCB(IILjava/lang/String;J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "jni_acdUserListCB(index=%d, length=%d, uid=%s, presence=%X)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, p3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lnet/rtccloud/sdk/AcdModule;->handleUserList(IILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_acdWaitingListCB(IILjava/lang/String;JJ)V
    .locals 14

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "jni_acdWaitingListCB(index=%d, length=%d, uid=%s, presence=%X, mask=%X)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v9, p3

    filled-new-array {v2, v3, v9, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lnet/rtccloud/sdk/Rtcc;->acdModule:Lnet/rtccloud/sdk/AcdModule;

    move v7, p1

    move/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v6 .. v13}, Lnet/rtccloud/sdk/AcdModule;->handleWaitingList(IILjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_audioCB(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "audioCB(start=%b)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    iget-object v1, v1, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/CallModule;->handleAudio(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_audioErrorCB(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "audioErrorCB(from=%d ,errorCode=%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->restart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_audioFrameLengthCB(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "audioFrameLengthCB(frameLength=%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/CallModule;->handleAudioFrameLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_audioFrequencyCB(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "audioFrequencyCB(frequency=%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/CallModule;->handleAudioFrequency(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_audioSupportedSamplingCB(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "AndroidAudioEngine jni_audioSupportedSamplingCB(sampleRate=%d ,frameLen=%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p2, p1}, Lnet/rtccloud/sdk/Rtcc$Native;->setSamplingRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_callCB(IIILjava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "{\"evt\": \"callcreated\", \"id\": \""

    const-string v6, "{\"evt\": \"callstatus\", \"id\": "

    const-string v7, "{\"status\":\"terminated\",\"type\":\"call\",\"reason\":\"remoteHangup\",\"sipCallId\":\""

    const-string v8, "{\"status\":\"terminated\",\"type\":\"call\",\"reason\":\"localHangup\",\"sipCallId\":\""

    const-string v9, "{\"status\":\"terminated\",\"type\":\"call\",\"reason\":\"networkError\",\"sipCallId\":\""

    const-string v10, "{\"evt\": \"callstatus\", \"id\": "

    const-string v11, "{\"evt\": \"callstatus\", \"id\": "

    const-string v12, "{\"evt\": \"callstatus\", \"id\": "

    const-string v13, "{\"evt\": \"callstatus\", \"id\": "

    const-string v14, "{\"evt\": \"callstatus\", \"id\": "

    const-string v15, "{\"evt\": \"callstatus\", \"id\": "

    move-object/from16 v16, v5

    const-string v5, "{\"evt\": \"callstatus\", \"id\": "

    move-object/from16 v17, v6

    const-string v6, "{\"evt\": \"callstatus\", \"id\": "

    move-object/from16 v18, v10

    const-string v10, "{\"evt\": \"callstatus\", \"id\": "

    move-object/from16 v19, v15

    const-string v15, ",\"from\": -1}"

    move-object/from16 v20, v5

    const-string v5, "{\"evt\": \"netevent\", \"id\": "

    move-object/from16 v21, v6

    const-string v6, "{\"evt\": \"netevent\", \"id\": "

    move-object/from16 v22, v7

    const-string v7, "{\"evt\": \"callstatus\", \"type\": \"localstats\", \"localstats\": {\"fps\": "

    monitor-enter p0

    move-object/from16 v23, v8

    const/16 v8, 0x6100

    if-eq v0, v8, :cond_10

    const/16 v8, 0x7100

    if-eq v0, v8, :cond_5

    const/16 v8, 0x7203

    if-eq v0, v8, :cond_4

    const/16 v8, 0x7300

    if-eq v0, v8, :cond_3

    const/16 v8, 0x7500

    if-eq v0, v8, :cond_4

    const/16 v8, 0x7600

    if-eq v0, v8, :cond_2

    const/16 v5, 0x7610

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7700

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0xffffff

    and-int/2addr v5, v2

    shr-int/lit8 v6, v2, 0x18

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \"bitrate\": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \"jitter\": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "}}"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :goto_0
    sget-object v5, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v6, "callCB(cmd=%x, callId=%d, param=%x, string=%s) Unknown cmd"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"from\": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v3, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    sget-object v5, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v6, "callCB(cmd=%s, callId=%d, param=%x, string=%s)"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9, v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v5, v0, v2, v3, v4}, Lnet/rtccloud/sdk/CallModule;->handle(IIILjava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    invoke-direct/range {p0 .. p4}, Lnet/rtccloud/sdk/Rtcc;->sendTranslationEvent(IIILjava/lang/String;)V

    iget-object v5, v1, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v5, v0, v2, v3, v4}, Lnet/rtccloud/sdk/CallModule;->handle(IIILjava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    sget-object v5, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v6, "callCB(cmd=%s, callId=%d, param=%x, string=%s)"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v7, v8, v15, v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v5, v0, v2, v3, v4}, Lnet/rtccloud/sdk/CallModule;->handle(IIILjava/lang/String;)V

    if-nez v4, :cond_6

    const-string v0, ""

    goto :goto_1

    :cond_6
    move-object v0, v4

    :goto_1
    const/16 v5, 0x7131

    if-eq v3, v5, :cond_f

    const/16 v5, 0x7132

    if-eq v3, v5, :cond_f

    const/16 v5, 0x7170

    if-eq v3, v5, :cond_e

    const/16 v5, 0x71b0

    if-eq v3, v5, :cond_d

    const/16 v5, 0x71c0

    if-eq v3, v5, :cond_c

    const/16 v5, 0x71c1

    if-eq v3, v5, :cond_b

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    invoke-static {v3}, Lnet/rtccloud/sdk/internal/Constants$CallStatus;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, ""

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"call\",\"status\": \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" }"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"record\",\"status\": \"bookmark\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"record\",\"status\": \"stop\",\"reason\": \"pause request\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    sget-object v2, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-interface {v0, v2}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleRecordingStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)V

    goto/16 :goto_5

    :pswitch_2
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"filename\": \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"record\",\"status\": \"start\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"record\",\"status\": \"start\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :goto_4
    if-eqz v4, :cond_a

    const-string v0, "AUDIORECORDING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_1
    new-instance v0, Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-direct {v0, v2, v3}, Lnet/rtccloud/sdk/event/call/StatusEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)V

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallEvent(Lnet/rtccloud/sdk/event/call/CallEvent;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    sget-object v2, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-interface {v0, v2}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleRecordingStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"evt\":\"callstatus\",\"id\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"evt\":\"callstatus\",\"id\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"evt\":\"callstatus\",\"id\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    new-instance v0, Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    invoke-direct {v0, v2, v3}, Lnet/rtccloud/sdk/event/call/StatusEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)V

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallEvent(Lnet/rtccloud/sdk/event/call/CallEvent;)V

    const-string v0, "in"

    iput-object v0, v1, Lnet/rtccloud/sdk/Rtcc;->callDirection:Ljava/lang/String;

    goto/16 :goto_5

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipCallId\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    iget-object v2, v2, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"type\": \"call\",\"status\": \"peerreconnected\",\"uid\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipCallId\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    iget-object v2, v2, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"type\": \"call\",\"status\": \"peerdisconnected\",\"uid\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"record\",\"status\": \"stop\",\"reason\": \"stop request\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    sget-object v2, Lnet/rtccloud/sdk/RecordingModule$Status;->STOPPED:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-interface {v0, v2}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleRecordingStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)V

    goto/16 :goto_5

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"call\",\"status\": \"joiningmvs\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v2, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

    iput-object v2, v0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    iget-object v0, v0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(ZZ)V

    goto :goto_5

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"sipcallid\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"datachannel\",\"status\": \"ok\" }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    new-instance v0, Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-direct {v0, v2, v3}, Lnet/rtccloud/sdk/event/call/StatusEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)V

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallEvent(Lnet/rtccloud/sdk/event/call/CallEvent;)V

    goto :goto_5

    :cond_10
    sget-object v5, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v6, "callCB(cmd=%s, callId=%d, param=%s, string=%s)"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Lnet/rtccloud/sdk/internal/Constants$CallType;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v8, v9, v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v5, v0, v2, v3, v4}, Lnet/rtccloud/sdk/CallModule;->handle(IIILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"sipcallid\":  \"\" ,\"direction\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lnet/rtccloud/sdk/Rtcc;->callDirection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" ,\"displayname\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x7140
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71a0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized jni_chatCrDetailsCB(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    check-cast p1, Lnet/rtccloud/sdk/ChatDetails;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"evt\":\"chatdetails\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"cid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"mid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"ts\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getTs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"current\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"total\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"totalmsg\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getTotalmsg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"unread\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getUnreadmsg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getMetadata()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getMetadata()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"metadata\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v1, "\"metadata\":\"\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\"plist\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatDetails;->getPlist()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "]}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_chatHistoryCB(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "\"}"

    const-string v1, ",\"msg\":\""

    const-string v2, ",\"total\":"

    const-string v3, ",\"current\":"

    const-string v4, ",\"from\":"

    const-string v5, "\",\"ts\":"

    const-string v6, "{\"evt\":\"chathist\",\"cid\":\""

    monitor-enter p0

    :try_start_0
    check-cast p1, Lnet/rtccloud/sdk/ChatMessage;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getTs()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getFrom()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getCurrent()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getTotal()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_chatMessageCB(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "\"}"

    const-string v1, ",\"msg\":\""

    const-string v2, ",\"from\":"

    const-string v3, "\",\"ts\":"

    const-string v4, "{\"evt\":\"chatmsg\",\"cid\":\""

    monitor-enter p0

    :try_start_0
    check-cast p1, Lnet/rtccloud/sdk/ChatMessage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getTs()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getFrom()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_dataChannelAckCB(IILjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dataChannelAckCB(id=%d, flag=%d, uid=%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p1, p2, p3}, Lnet/rtccloud/sdk/DataChannelModule;->handleAck(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_dataChannelCB(ILjava/lang/String;[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dataChannelCB(id=%d, uid=%s, payload=%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, p2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p1, p2, p3}, Lnet/rtccloud/sdk/DataChannelModule;->handleOutBand(ILjava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_dataChannelInBandCB([B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dataChannelInbandCB(payload=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/DataChannelModule;->handleInBand([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_eventCB(IILjava/lang/String;)V
    .locals 8

    const-string v0, "Connection retry count = "

    const-string v1, "{\"evt\":\"set\",\"prop\":\"realtime\",\"value\": \""

    const-string v2, "Overriding display name: "

    const-string v3, "{\"evt\" : \"verifieduser\", \"error\": "

    const-string v4, "MEDIALOGCHUNKAVAILABLE: "

    monitor-enter p0

    const/16 v5, 0x1100

    if-eq p1, v5, :cond_4

    const/16 v0, 0x1200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1500

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1700

    if-eq p1, v0, :cond_0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "eventCB(cmd=%x, param=%x, string=%s) status=%s Unknown cmd"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    filled-new-array {p1, p2, p3, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "eventCB(cmd=%s, param=%x, string=%s) status=%s"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Event;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    filled-new-array {p1, p2, p3, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "eventCB(cmd=%s, param=%x, string=%s) error=%s"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Event;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lnet/rtccloud/sdk/Rtcc$Error;->BAD_CREDENTIALS:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    filled-new-array {p1, v2, p3, v5, v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x1220

    if-ne p2, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \"error_message\": \"Invalid authentication\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const-string p1, "{\"evt\":\"connectevent\",\"id\":21,\"desc\":\"Bad user credentials\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v4}, Lnet/rtccloud/sdk/Rtcc;->disconnect(Lnet/rtccloud/sdk/Rtcc$Error;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->teardown()V

    goto/16 :goto_2

    :cond_4
    sget-object v3, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v4, "eventCB(cmd=%s, param=%s, string=%s) status=%s"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Event;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$ConnectionStatus;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    filled-new-array {v5, v6, p3, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x1110

    if-eq p2, v4, :cond_15

    const/16 v4, 0x1120

    if-eq p2, v4, :cond_14

    const/16 v4, 0x1150

    if-eq p2, v4, :cond_12

    const/16 v0, 0x1160

    if-eq p2, v0, :cond_11

    const/16 v0, 0x11a7

    if-eq p2, v0, :cond_f

    const/16 v0, 0x1180

    if-eq p2, v0, :cond_e

    const/16 v0, 0x1181

    if-eq p2, v0, :cond_d

    const/16 v0, 0x11a3

    if-eq p2, v0, :cond_c

    const/16 v0, 0x11a4

    if-eq p2, v0, :cond_b

    const/16 v0, 0x11c0

    if-eq p2, v0, :cond_6

    const/16 v0, 0x11c1

    if-eq p2, v0, :cond_5

    const-string v0, "eventCB(cmd=%s, param=%x, string=%s) status=%s Unknown param"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Event;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    filled-new-array {p1, p2, p3, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    sget-object p1, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->disconnect(Lnet/rtccloud/sdk/Rtcc$Error;)V

    const-string p1, "{\"evt\":\"sip\",\"state\":\"nok\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object p2, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, p2, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x0

    :try_start_2
    iput p1, p0, Lnet/rtccloud/sdk/Rtcc;->connectionRetryCount:I

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object p2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq p1, p2, :cond_8

    invoke-direct {p0, p2}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    :cond_8
    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    if-eqz p1, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {p1, p3}, Lnet/rtccloud/sdk/User;->displayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/User;->updateDisplayName()V

    :cond_a
    :goto_0
    const-string p1, "{\"evt\":\"sip\",\"state\":\"ok\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string p1, "{\"evt\":\"connectevent\",\"id\":17,\"desc\":\"Fatal:Speed Test NOK\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->sendErrorReason()V

    goto/16 :goto_2

    :cond_c
    const-string p1, "{\"evt\":\"connectevent\",\"id\":19,\"desc\":\"Bad HAP file\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->sendErrorReason()V

    goto/16 :goto_2

    :cond_d
    const-string p1, "{\"evt\":\"checkcloudconnection\",\"status\":false}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string p1, "{\"evt\":\"checkcloudconnection\",\"status\":true}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object p2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne p1, p2, :cond_19

    const-string p1, "{\"evt\":\"connectevent\",\"id\":15,\"desc\":\"Speed Test Ok\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const-string p1, "{\"evt\":\"readyforauthentication\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->statsModule:Lnet/rtccloud/sdk/StatsModule;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/StatsModule;->realTimePlatformName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/rtccloud/sdk/Rtcc;->statsModule:Lnet/rtccloud/sdk/StatsModule;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/StatsModule;->realTimePlatformName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->authenticate()V

    goto/16 :goto_2

    :cond_11
    const-string p1, "{\"evt\":\"verifieduser\",\"state\":\"ok\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const-string p1, "{\"evt\":\"connectevent\",\"id\":20,\"desc\":\"User authenticated\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    iget p1, p0, Lnet/rtccloud/sdk/Rtcc;->connectionRetryCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lnet/rtccloud/sdk/Rtcc;->connectionRetryCount:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_13

    const-string p1, "Maximum connection retry count reached, disconnecting to preserve battery."

    invoke-virtual {v3, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->sendErrorReason()V

    goto :goto_1

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lnet/rtccloud/sdk/Rtcc;->connectionRetryCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :goto_1
    const-string p1, "{\"evt\":\"connectevent\",\"id\":18,\"desc\":\"USAP unreachable\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/User;->onBind(Lnet/rtccloud/sdk/Rtcc;)V

    const-string p1, "{\"evt\":\"connected\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    const-string p1, "{\"evt\":\"disconnected\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const-string p1, "in"

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->callDirection:Ljava/lang/String;

    sget-object p1, Lnet/rtccloud/sdk/Rtcc$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    iget-object p2, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_18

    const/4 p2, 0x3

    if-eq p1, p2, :cond_17

    const/4 p2, 0x5

    if-eq p1, p2, :cond_16

    goto :goto_2

    :cond_16
    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->teardown()V

    goto :goto_2

    :cond_17
    sget-object p1, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->updateStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    goto :goto_2

    :cond_18
    sget-object p1, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->teardown(Lnet/rtccloud/sdk/Rtcc$Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_19
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_floorCB([I)V
    .locals 4

    const-string v0, "{\"evt\": \"callstatus\", \"id\": "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "floorCB(%s)"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    iget-object v1, v1, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/ConferenceModule;->handleFloor([I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    iget v0, v0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\"sipCallId\": \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    iget-object v0, v0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"conference\",\"conference\": {\"floor\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "} }"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_jpegAvailable([BI)V
    .locals 10

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Lnet/rtccloud/sdk/Exif;->getOrientation([B)I

    move-result p1

    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    iget-object v0, v0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/ScreenshareModule;->updateReceivingStatus(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;

    sget v1, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->SOURCE_JPEG:I

    invoke-direct {v0, p1, v1, p2}, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;-><init>(Landroid/graphics/Bitmap;II)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingProgressiveXEvent(Lnet/rtccloud/sdk/event/call/ProgressivexEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_meetingpointCB(IIILjava/lang/Object;)V
    .locals 4

    const-string v0, "{\"status\":\"ok\",\"error\":\"\",\"evt\":\"meetingpointgot\",\"mpi\":\""

    monitor-enter p0

    const/16 v1, 0x3000

    if-eq p1, v1, :cond_2

    const/16 v0, 0x3010

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3020

    if-eq p1, v0, :cond_0

    :try_start_0
    sget-object p3, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "meetingpointCB(cmd=%x, param=%x, data=%s) Unknown cmd"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "meetingpointCB(cmd=%s, param=%s, data=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointEvent;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointControl;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {p1, p2, p3, p4}, Lnet/rtccloud/sdk/MeetingPointModule;->handleList(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "meetingpointCB(cmd=%s, param=%s, data=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointEvent;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointControl;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {p1, p2, p3, p4}, Lnet/rtccloud/sdk/MeetingPointModule;->handleControl(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p3, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "meetingpointCB(cmd=%s, param=%s, data=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointEvent;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointConfig;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {p1, p2, p4}, Lnet/rtccloud/sdk/MeetingPointModule;->handleConfig(ILjava/lang/Object;)V

    instance-of p1, p4, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p4, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;

    iget-object p2, p4, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->mpid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_meetingpointErrorCB(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3010

    if-eq p1, v0, :cond_0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "meetingpointErrorCB(cmd=%x, action=%x, mpid=%s, message=%s) Unknown cmd"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, p3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "meetingpointErrorCB(cmd=%s, action=%s, mpid=%s, message=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointEvent;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointAction;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3, p3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/MeetingPointModule;->handleControlError(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "meetingpointErrorCB(cmd=%s, action=%s, mpid=%s, message=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointEvent;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointAction;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3, p3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/MeetingPointModule;->handleError(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_onAnalyticsReady(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/RtccHelper;->INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;

    iget-object v2, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsUploadUrl:Ljava/lang/String;

    iget-object v3, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsUploadToken:Ljava/lang/String;

    iget-object v4, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsUuid:Ljava/util/UUID;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lnet/rtccloud/sdk/RtccHelper;->onAnalyticsReady(Lcom/sightcall/analytics/AnalyticsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;I)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne v5, p1, :cond_0

    const-string p1, "startup"

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    const-string p1, "mediastats"

    :goto_0
    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nDumpAnalyticsChunk()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v5, v0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingBlobCallBack(ILjava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_participantCB(IZZZZZZ)V
    .locals 11

    const-string v0, "{\"evt\": \"callstatus\", \"id\": "

    const-string v1, "[{ \"id\": "

    monitor-enter p0

    :try_start_0
    sget-object v2, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "participantCB(id=%d, isDeafened=%b, isMuted=%b, isAdmin=%b, isSendingVideo=%b, isTalking=%b, isLocked=%b"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    iget-object v2, v2, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lnet/rtccloud/sdk/ConferenceModule;->handleParticipant(IZZZZZZ)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", \"mute\": "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", \"deaf\": "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", \"video\": "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", \"lockas\": "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {p4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "}]"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p3

    invoke-virtual {p3}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object p3

    iget p3, p3, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",\"sipCallId\": \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p3

    invoke-virtual {p3}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object p3

    iget-object p3, p3, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"type\": \"conference\",\"conference\": {\"participantsStatus\":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "} }"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_participantsCB(I[Lnet/rtccloud/sdk/Participant;)V
    .locals 7

    const-string v0, "{\"evt\": \"callstatus\", \"id\": "

    const-string v1, "["

    const-string v2, "{\"hostId\": "

    monitor-enter p0

    :try_start_0
    sget-object v3, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v3}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "participantsCB(userId=%d, participants=%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    iget-object v3, v3, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, v3, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    invoke-virtual {v3, p1, p2}, Lnet/rtccloud/sdk/ConferenceModule;->handleParticipants(I[Lnet/rtccloud/sdk/Participant;)V

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Laa;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Laa;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljb;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljb;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/rtccloud/sdk/Participant;

    iget v4, v4, Lnet/rtccloud/sdk/Participant;->id:I

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \"myId\": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", \"participants\": ["

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]}"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Laa;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Laa;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    iget v0, v0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\"sipCallId\": \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    iget-object v0, v0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\": \"conference\",\"conference\": {\"participantList\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\"participantsStatus\":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "} }"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_presenceCB(IIILjava/lang/String;Z)V
    .locals 7

    const-string v0, "{\"evt\":\"presenceburstupdate\", \"users\":[{\"presence\":"

    monitor-enter p0

    :try_start_0
    sget-object v1, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "presenceCB(index=%d, value=%d, length=%d, uid=%s, isRoster=%b)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v4, v5, p4, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_0

    const-string p1, "[uid] must not be null"

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->presenceModule:Lnet/rtccloud/sdk/PresenceModule;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/rtccloud/sdk/PresenceModule;->handlePresence(IIILjava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",\"uid\": \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}]}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_progressivexCB(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/rtccloud/sdk/FrameCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/rtccloud/sdk/FrameCache;-><init>(I)V

    invoke-static {v0}, Lnet/rtccloud/sdk/Jni;->nCallGetProgressivexFrame(Lnet/rtccloud/sdk/FrameCache;)Lnet/rtccloud/sdk/Frame;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameCache;->lastFrame()Lnet/rtccloud/sdk/Frame;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;

    iget-object v0, v0, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    sget v2, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->SOURCE_PROGRESSIVEX:I

    invoke-direct {v1, v0, v2, p1}, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;-><init>(Landroid/graphics/Bitmap;II)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingProgressiveXEvent(Lnet/rtccloud/sdk/event/call/ProgressivexEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_progressivexStop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/call/ProgressivexStopEvent;

    invoke-direct {v1}, Lnet/rtccloud/sdk/event/call/ProgressivexStopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized jni_rosterCB(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "rosterCB(delta=%d, rosterLength=%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->presenceModule:Lnet/rtccloud/sdk/PresenceModule;

    invoke-virtual {v0, p1, p2}, Lnet/rtccloud/sdk/PresenceModule;->handleRoster(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_shareCB(II)V
    .locals 4

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "shareCB(cmd=%x, param=%x) Unknown cmd"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "shareCB(cmd=%s, param=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$Direction;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingShareCallback(II)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0, p1, p2}, Lnet/rtccloud/sdk/CallModule;->handleShareStartStop(II)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "shareCB(cmd=%s, param=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$Direction;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingShareCallback(II)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0, p1, p2}, Lnet/rtccloud/sdk/CallModule;->handleShareStartStop(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x9303
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized jni_userRegistrationCB(II)V
    .locals 5

    const-string v0, "{\"evt\": \"userregistered\",\"state\": "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "userRegistrationCB(status=%s, length=%d)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$RegistrationStatus;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    invoke-virtual {v1, p1, p2}, Lnet/rtccloud/sdk/User;->handleRegistration(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,\"rosterlen\": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const-string p1, "{\"evt\":\"connectevent\",\"id\":22,\"desc\":\"User registered\"}"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized jni_videoCB(II)V
    .locals 4

    monitor-enter p0

    const v0, 0x9210

    if-eq p1, v0, :cond_1

    const v0, 0x9230

    if-eq p1, v0, :cond_0

    const v0, 0x9240

    if-eq p1, v0, :cond_0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "videoCB(cmd=%x, param=%x) Unknown cmd"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "videoCB(cmd=%s, param=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$Direction;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {v0, p1, p2}, Lnet/rtccloud/sdk/CallModule;->handleVideoStartStop(II)V

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/rtccloud/sdk/Rtcc;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "videoCB(cmd=%s, param=%s)"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$Call;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lnet/rtccloud/sdk/internal/Constants$Profile;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/CallModule;->handleVideoProfile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public meetingPoint()Lnet/rtccloud/sdk/MeetingPointModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->meetingPointModule:Lnet/rtccloud/sdk/MeetingPointModule;

    return-object p0
.end method

.method public presence()Lnet/rtccloud/sdk/PresenceModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->presenceModule:Lnet/rtccloud/sdk/PresenceModule;

    return-object p0
.end method

.method public provideRtccJWT(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->rtccJwt:Ljava/lang/String;

    return-void
.end method

.method public resetFastMode()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Rtcc$Native;->resetFastMode()V

    return-void
.end method

.method public roster()Lnet/rtccloud/sdk/RosterModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rosterModule:Lnet/rtccloud/sdk/RosterModule;

    return-object p0
.end method

.method public sendAvatar(Ljava/lang/String;I[B)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    iget-object v0, v0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    iget-object v0, v0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/Rtcc$Native;->sendAvatar(Ljava/lang/String;I[B)V

    :cond_0
    return-void
.end method

.method public sendChat(Ljava/lang/String;[BI)I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/Rtcc$Native;->sendChat(Ljava/lang/String;[BI)I

    move-result p0

    return p0
.end method

.method public sendMeetingBlobCallBack(ILjava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleBlob(ILjava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public sendMeetingCallBack(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->muclState(Ljava/lang/String;)V

    return-void
.end method

.method public sendMeetingCallEvent(Lnet/rtccloud/sdk/event/call/CallEvent;)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleCommand(Lnet/rtccloud/sdk/event/call/CallEvent;)V

    return-void
.end method

.method public sendMeetingDataChannelInBandEvent([B)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleDataInBandChannel([B)V

    return-void
.end method

.method public sendParticipantCallBack([Lnet/rtccloud/sdk/Participant;)V
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RtccMeetingCallBack;->handleParticipant([Lnet/rtccloud/sdk/Participant;)V

    return-void
.end method

.method public setJsVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-direct {p0}, Lnet/rtccloud/sdk/Rtcc;->getJsUserAgent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lnet/rtccloud/sdk/Rtcc$Native;->setJsVersion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRtccMeetingCallBack(Lnet/rtccloud/sdk/RtccMeetingCallBack;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->rtccMeetingCallBack:Lnet/rtccloud/sdk/RtccMeetingCallBack;

    return-void
.end method

.method public setUrlReferer(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/Rtcc$Native;->setUrlReferer(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/Rtcc$Native;->setVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setupAnalytics(Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsUploadUrl:Ljava/lang/String;

    iput-object p2, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsUploadToken:Ljava/lang/String;

    return-void
.end method

.method public stats()Lnet/rtccloud/sdk/StatsModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->statsModule:Lnet/rtccloud/sdk/StatsModule;

    return-object p0
.end method

.method public status()Lnet/rtccloud/sdk/Rtcc$Status;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->status:Lnet/rtccloud/sdk/Rtcc$Status;

    return-object p0
.end method

.method public updateMetadata(Ljava/lang/String;[BI)I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/Rtcc$Native;->updateMetadata(Ljava/lang/String;[BI)I

    move-result p0

    return p0
.end method

.method public updateTS(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->nativeInterface:Lnet/rtccloud/sdk/Rtcc$Native;

    invoke-interface {p0, p1, p2}, Lnet/rtccloud/sdk/Rtcc$Native;->updateTS(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public user()Lnet/rtccloud/sdk/User;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->user:Lnet/rtccloud/sdk/User;

    return-object p0
.end method

.method public utils()Lnet/rtccloud/sdk/UtilsModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc;->utilsModule:Lnet/rtccloud/sdk/UtilsModule;

    return-object p0
.end method
