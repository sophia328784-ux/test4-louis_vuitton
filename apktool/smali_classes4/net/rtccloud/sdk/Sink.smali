.class public abstract Lnet/rtccloud/sdk/Sink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/Sink$Screenshare;,
        Lnet/rtccloud/sdk/Sink$Progressivex;,
        Lnet/rtccloud/sdk/Sink$Video;,
        Lnet/rtccloud/sdk/Sink$Orientation;,
        Lnet/rtccloud/sdk/Sink$Format;
    }
.end annotation


# static fields
.field public static final FORMAT_BGR:I = 0x3

.field public static final FORMAT_I420:I = 0x4

.field public static final FORMAT_RGB:I = 0x1

.field public static final FORMAT_YUV:I = 0x2

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final STRIDE_UNKNOWN:I

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field final call:Lnet/rtccloud/sdk/Call;

.field private volatile isTeardown:Z

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SINK:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Sink;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Sink;->isTeardown:Z

    iput-object p1, p0, Lnet/rtccloud/sdk/Sink;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    return-void
.end method

.method public static bridge synthetic a()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Sink;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Sink;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/Sink;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Sink must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static scalingFactor(III)D
    .locals 6

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    div-double v2, v0, p0

    int-to-double v4, p2

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v4, p0

    div-double/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method


# virtual methods
.method public call()Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public ensureBackgroundThread()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "[Sink] must be use from a background thread"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalStateException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public ensureCanSendMedia()Z
    .locals 3

    invoke-direct {p0}, Lnet/rtccloud/sdk/Sink;->ensureNotTeardown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Sink;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lnet/rtccloud/sdk/Sink;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, p0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result p0

    return p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Sink;->isTeardown:Z

    return-void
.end method
