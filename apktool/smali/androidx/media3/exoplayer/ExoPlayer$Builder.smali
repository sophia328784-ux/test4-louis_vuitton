.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final E:I

.field public static final F:Z


# instance fields
.field public A:Z

.field public final B:Ljava/lang/String;

.field public final C:Landroidx/media3/exoplayer/SuitableOutputChecker;

.field public final D:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/common/util/SystemClock;

.field public final c:Lcom/google/common/base/Supplier;

.field public d:Lcom/google/common/base/Supplier;

.field public final e:Lcom/google/common/base/Supplier;

.field public f:Lcom/google/common/base/Supplier;

.field public final g:Lcom/google/common/base/Supplier;

.field public final h:Lcom/google/common/base/Function;

.field public final i:Landroid/os/Looper;

.field public final j:I

.field public final k:Landroidx/media3/common/AudioAttributes;

.field public final l:I

.field public final m:Z

.field public final n:Landroidx/media3/exoplayer/SeekParameters;

.field public final o:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

.field public final t:J

.field public final u:J

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "emu64a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "emu64x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x7530

    :goto_1
    sput v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->F:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 153
    new-instance v0, Lda;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lda;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lda;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lda;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 3

    .line 139
    new-instance v0, Lws;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lda;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lda;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 3

    .line 143
    new-instance v0, Lws;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lws;

    const/4 v2, 0x3

    invoke-direct {v1, p3, v2}, Lws;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V
    .locals 8

    .line 146
    new-instance v2, Lws;

    const/4 v0, 0x4

    invoke-direct {v2, p2, v0}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lws;

    const/4 v0, 0x3

    invoke-direct {v3, p3, v0}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lws;

    const/4 v0, 0x5

    invoke-direct {v4, p4, v0}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lws;

    const/4 v0, 0x6

    invoke-direct {v5, p5, v0}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lws;

    const/4 p5, 0x7

    invoke-direct {v6, p6, p5}, Lws;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lmw;

    const/4 p5, 0x0

    invoke-direct {v7, p7, p5}, Lmw;-><init>(Ljava/lang/Object;I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 3

    .line 141
    new-instance v0, Lda;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lda;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lws;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2}, Lws;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8

    .line 152
    new-instance v4, Lda;

    const/4 v0, 0x2

    invoke-direct {v4, p1, v0}, Lda;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lur;

    const/4 v1, 0x3

    invoke-direct {v5, v1}, Lur;-><init>(I)V

    new-instance v6, Lda;

    invoke-direct {v6, p1, v1}, Lda;-><init>(Landroid/content/Context;I)V

    new-instance v7, Luh;

    invoke-direct {v7, v0}, Luh;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->c:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d:Lcom/google/common/base/Supplier;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->e:Lcom/google/common/base/Supplier;

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f:Lcom/google/common/base/Supplier;

    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->g:Lcom/google/common/base/Supplier;

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->h:Lcom/google/common/base/Function;

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->i:Landroid/os/Looper;

    sget-object p1, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->k:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->l:I

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->m:Z

    sget-object p2, Landroidx/media3/exoplayer/SeekParameters;->d:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->n:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p2, 0x1388

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->p:J

    const-wide/16 p2, 0x3a98

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->q:J

    const-wide/16 p2, 0xbb8

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->r:J

    sget-object p2, Landroidx/media3/exoplayer/ScrubbingModeParameters;->g:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->o:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    new-instance p2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p2}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v3, p2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->b:J

    iget v5, p2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->c:F

    iget-wide v1, p2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->a:J

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(JJF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->s:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    sget-object p2, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->b:Landroidx/media3/common/util/SystemClock;

    const-wide/16 p2, 0x1f4

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t:J

    const-wide/16 p2, 0x7d0

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u:J

    const p2, 0x927c0

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v:I

    const p3, 0x7fffffff

    sget-boolean p4, Landroidx/media3/exoplayer/ExoPlayer$Builder;->F:Z

    if-eqz p4, :cond_1

    sget p5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    goto :goto_1

    :cond_1
    move p5, p3

    :goto_1
    iput p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w:I

    if-eqz p4, :cond_2

    const p3, 0xea60

    :cond_2
    iput p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->x:I

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->y:I

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->z:Z

    const-string p2, ""

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->B:Ljava/lang/String;

    const/16 p2, -0x3e8

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->j:I

    new-instance p2, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-direct {p2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->D:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    return-object v0
.end method
