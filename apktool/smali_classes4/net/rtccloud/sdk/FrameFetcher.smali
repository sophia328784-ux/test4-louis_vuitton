.class public final Lnet/rtccloud/sdk/FrameFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCREENSHARE_CACHE_SIZE:I = 0x1

.field private static final VIDEO_CACHE_SIZE:I = 0x5

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private volatile isTeardown:Z

.field final screenshareFrameCache:Lnet/rtccloud/sdk/FrameCache;

.field private final share:Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;

.field private final video:Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;

.field final videoFrameCache:Lnet/rtccloud/sdk/FrameCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->FRAME_FETCHER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/FrameFetcher;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Call;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/rtccloud/sdk/FrameCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lnet/rtccloud/sdk/FrameCache;-><init>(I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/FrameFetcher;->videoFrameCache:Lnet/rtccloud/sdk/FrameCache;

    new-instance v1, Lnet/rtccloud/sdk/FrameCache;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/rtccloud/sdk/FrameCache;-><init>(I)V

    iput-object v1, p0, Lnet/rtccloud/sdk/FrameFetcher;->screenshareFrameCache:Lnet/rtccloud/sdk/FrameCache;

    new-instance v2, Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;

    invoke-direct {v2, p1, v0}, Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V

    iput-object v2, p0, Lnet/rtccloud/sdk/FrameFetcher;->video:Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;

    new-instance v0, Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;

    invoke-direct {v0, p1, v1}, Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/FrameFetcher;->share:Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;

    return-void
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/FrameFetcher;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/FrameFetcher;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "FrameFetcher must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public startShare()V
    .locals 1

    invoke-direct {p0}, Lnet/rtccloud/sdk/FrameFetcher;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcher;->share:Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/FrameFetcherThread;->doResume()V

    return-void
.end method

.method public startVideo()V
    .locals 1

    invoke-direct {p0}, Lnet/rtccloud/sdk/FrameFetcher;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcher;->video:Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/FrameFetcherThread;->doResume()V

    return-void
.end method

.method public stopShare()V
    .locals 1

    invoke-direct {p0}, Lnet/rtccloud/sdk/FrameFetcher;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcher;->share:Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/FrameFetcherThread;->doPause()V

    return-void
.end method

.method public stopVideo()V
    .locals 1

    invoke-direct {p0}, Lnet/rtccloud/sdk/FrameFetcher;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcher;->video:Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/FrameFetcherThread;->doPause()V

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcher;->isTeardown:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcher;->video:Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcherThread;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcher;->share:Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcherThread;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcher;->videoFrameCache:Lnet/rtccloud/sdk/FrameCache;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameCache;->teardown()V

    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcher;->screenshareFrameCache:Lnet/rtccloud/sdk/FrameCache;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/FrameCache;->teardown()V

    return-void
.end method
