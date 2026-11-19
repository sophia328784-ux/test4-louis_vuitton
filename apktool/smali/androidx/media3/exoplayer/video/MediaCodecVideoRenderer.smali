.class public Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field public static final C2:[I

.field public static D2:Z

.field public static E2:Z


# instance fields
.field public A2:Z

.field public B2:I

.field public final J1:Landroid/content/Context;

.field public final K1:Z

.field public final L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final M1:I

.field public final N1:Z

.field public final O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final P1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field public final Q1:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

.field public final R1:J

.field public final S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public final T1:Ljava/util/PriorityQueue;

.field public U1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

.field public V1:Z

.field public W1:Z

.field public X1:Landroidx/media3/exoplayer/video/VideoSink;

.field public Y1:Z

.field public Z1:I

.field public a2:Ljava/util/List;

.field public b2:Landroid/view/Surface;

.field public c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field public d2:Landroidx/media3/common/util/Size;

.field public e2:Z

.field public f2:I

.field public g2:I

.field public h2:J

.field public i2:I

.field public j2:I

.field public k2:I

.field public l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public m2:J

.field public n2:Z

.field public o2:J

.field public p2:I

.field public q2:J

.field public r2:Landroidx/media3/common/VideoSize;

.field public s2:Landroidx/media3/common/VideoSize;

.field public t2:I

.field public u2:Z

.field public v2:I

.field public w2:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

.field public x2:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public y2:J

.field public z2:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C2:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    iput-object p3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 181
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 182
    iput-wide p4, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    .line 183
    iput-boolean p6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Z

    .line 184
    iput-object p7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    .line 185
    iput-object p8, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 186
    iput p9, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    .line 187
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    iput-object p3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 190
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 191
    iput-wide p4, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    .line 192
    iput-boolean p6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Z

    .line 193
    iput-object p7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    .line 194
    iput-object p8, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 195
    iput p9, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    .line 196
    iput p10, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->j:F

    .line 197
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IFLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    iput-object p3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 200
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 201
    iput-wide p4, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    .line 202
    iput-boolean p6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Z

    .line 203
    iput-object p7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    .line 204
    iput-object p8, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 205
    iput p9, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    .line 206
    iput p10, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->j:F

    .line 207
    iput-object p11, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->k:Landroidx/media3/exoplayer/video/VideoSink;

    .line 208
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 159
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 162
    iput-wide p3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    .line 163
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 166
    iput-wide p3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    .line 167
    iput-object p5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    .line 168
    iput-object p6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 169
    iput p7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    .line 170
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 173
    iput-wide p3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    .line 174
    iput-boolean p5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Z

    .line 175
    iput-object p6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    .line 176
    iput-object p7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 177
    iput p8, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    .line 178
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V
    .locals 8

    iget-object v0, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    iget-object v5, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v6, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Z

    iget v7, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->j:F

    const/4 v3, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Landroid/content/Context;

    iget v0, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    iput v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M1:I

    iget-object v0, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->k:Landroidx/media3/exoplayer/video/VideoSink;

    iput-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    iget-object v3, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:Z

    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-wide v4, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    invoke-direct {v0, p0, v1, v4, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    iput-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    new-instance p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    const-string p0, "NVIDIA"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1:Z

    sget-object p0, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d2:Landroidx/media3/common/util/Size;

    iput v2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f2:I

    iput v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2:I

    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r2:Landroidx/media3/common/VideoSize;

    iput v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v2:I

    const/4 p0, 0x0

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    const/16 v0, -0x3e8

    iput v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t2:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    iget-boolean v0, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    iput-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1:Ljava/util/PriorityQueue;

    iget-wide v4, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->m:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    neg-long v2, v4

    iput-wide v2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R1:J

    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;-><init>(F)V

    iput-object p1, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    goto :goto_2

    :cond_2
    iput-wide v2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R1:J

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    :goto_2
    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    return-void
.end method

.method public static V0(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-class p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D2:Z

    if-nez v1, :cond_a

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "AFTEUFF014"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "AFTSO001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "AFTEU014"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "AFTEU011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "AFTR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "AFTN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "AFTKMST12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v4, v3

    goto :goto_0

    :sswitch_8
    const-string v2, "AFTJMST12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v3

    :goto_1
    :try_start_1
    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E2:Z

    sput-boolean v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D2:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_a
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E2:Z

    return p0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x14d76e6c -> :sswitch_8
        -0x132295cd -> :sswitch_7
        0x1e9d52 -> :sswitch_6
        0x1e9d5f -> :sswitch_5
        0x1e9d63 -> :sswitch_4
        0x6a6b6031 -> :sswitch_3
        0x6a6b6034 -> :sswitch_2
        0x6b2deee6 -> :sswitch_1
        0x7e53ab34 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 11

    iget v0, p1, Landroidx/media3/common/Format;->v:I

    iget v1, p1, Landroidx/media3/common/Format;->w:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const-string v6, "video/av01"

    const/4 v7, 0x1

    const-string v8, "video/hevc"

    const/4 v9, 0x2

    if-eqz v4, :cond_4

    invoke-static {p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_2

    if-eq p1, v7, :cond_2

    if-ne p1, v9, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x400

    if-ne p1, v3, :cond_3

    move-object v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v3, v8

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    const/4 v10, 0x3

    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v7, v2

    goto :goto_3

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v7, v4

    goto :goto_3

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v7, v10

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_3

    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :sswitch_6
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    mul-int/2addr v0, v1

    mul-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x8

    return v0

    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Amazon"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "KFSOWI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "AFTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    const/16 p0, 0x10

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->g(II)I

    move-result p1

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->g(II)I

    move-result p0

    mul-int/2addr p0, p1

    mul-int/lit16 p0, p0, 0x300

    div-int/2addr p0, v4

    return p0

    :pswitch_2
    mul-int/2addr v0, v1

    mul-int/2addr v0, v10

    div-int/2addr v0, v4

    const/high16 p0, 0x200000

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_3
    mul-int/2addr v0, v1

    mul-int/2addr v0, v10

    div-int/2addr v0, v4

    return v0

    :cond_d
    :goto_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static X0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 2

    iget-object v0, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static Y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 4

    iget v0, p1, Landroidx/media3/common/Format;->p:I

    iget-object v1, p1, Landroidx/media3/common/Format;->r:Ljava/util/List;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Landroidx/media3/common/Format;->p:I

    add-int/2addr p0, v2

    return p0

    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->j()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    neg-long v1, v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/video/VideoSink;->h(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A2:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1()V

    return-void
.end method

.method public final B0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    const-string v3, "video/av01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/lit16 v5, v3, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, v1, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B2:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c0(Landroidx/media3/decoder/DecoderInputBuffer;)I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    :cond_2
    return-void
.end method

.method public final D(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D(FF)V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->t(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h(F)V

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c(F)V

    :cond_1
    return-void
.end method

.method public final D0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v6, p10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()J

    move-result-wide v4

    sub-long v4, v6, v4

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    iget-object v8, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1:Ljava/util/PriorityQueue;

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1(II)V

    iget-object v8, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v13, 0x1

    if-eqz v8, :cond_2

    if-eqz p12, :cond_1

    if-nez p13, :cond_1

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    return v13

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    invoke-interface {v8, v6, v7, v0}, Landroidx/media3/exoplayer/video/VideoSink;->f(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z

    move-result v0

    return v0

    :cond_2
    move-object v14, v1

    move-object v15, v2

    move-wide/from16 v16, v4

    invoke-virtual {v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0()J

    move-result-wide v7

    iget-object v11, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    iget-object v0, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v1, p10

    move/from16 v9, p12

    move/from16 v10, p13

    move/from16 p6, v12

    move/from16 v12, p7

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a(JJJJZZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x5

    iget-object v5, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    iget-object v6, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz v6, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    iget-wide v7, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    invoke-virtual {v6, v1, v2, v7, v8}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a(JJ)V

    :cond_3
    if-eqz v0, :cond_b

    if-eq v0, v13, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return p6

    :cond_6
    invoke-virtual {v14, v15, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    iget-wide v0, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    invoke-virtual {v14, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1(J)V

    return v13

    :cond_7
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v15, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->l(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    move/from16 v0, p6

    invoke-virtual {v14, v0, v13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1(II)V

    iget-wide v0, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    invoke-virtual {v14, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1(J)V

    return v13

    :cond_8
    iget-wide v9, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    iget-wide v0, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    iget-wide v2, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q2:J

    cmp-long v2, v9, v2

    if-nez v2, :cond_9

    invoke-virtual {v14, v15, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    goto :goto_3

    :cond_9
    iget-object v6, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x2:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v6, :cond_a

    iget-object v12, v14, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroid/media/MediaFormat;

    move/from16 v3, p7

    move-object/from16 v11, p14

    move-wide/from16 v7, v16

    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    goto :goto_2

    :cond_a
    move v3, v12

    :goto_2
    invoke-virtual {v14, v15, v3, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    :goto_3
    invoke-virtual {v14, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1(J)V

    iput-wide v9, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q2:J

    return v13

    :cond_b
    move v3, v12

    move-wide/from16 v7, v16

    iget-object v0, v14, Landroidx/media3/exoplayer/BaseRenderer;->h:Landroidx/media3/common/util/Clock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->c()J

    move-result-wide v9

    iget-object v6, v14, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x2:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v6, :cond_c

    iget-object v12, v14, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroid/media/MediaFormat;

    move-object/from16 v11, p14

    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_c
    invoke-virtual {v14, v15, v3, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    iget-wide v0, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    invoke-virtual {v14, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1(J)V

    return v13
.end method

.method public final E(JZ)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G0()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->j()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0()J

    :cond_1
    return-void
.end method

.method public final I0()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B2:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n2:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->b:Landroidx/media3/container/ObuParser$SequenceHeader;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2:Z

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w2:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n2:Z

    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    monitor-exit p0

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, Lq51;

    invoke-direct {v3, v0, p0, v1}, Lq51;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    return-void

    :catchall_0
    move-exception v2

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    monitor-exit p0

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v3, :cond_1

    new-instance v4, Lq51;

    invoke-direct {v4, v0, p0, v1}, Lq51;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    throw v2
.end method

.method public final L(ZZ)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->e:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v2:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v3, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v3, :cond_3

    new-instance v4, Lq51;

    invoke-direct {v4, v2, p1, v0}, Lq51;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y1:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a2:Ljava/util/List;

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_8

    new-instance p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Landroid/content/Context;

    invoke-direct {p1, v3, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iput-boolean v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->d:Z

    iget-wide v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R1:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    neg-long v5, v3

    :cond_4
    iput-wide v5, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->g:J

    iget-object v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->h:Landroidx/media3/common/util/Clock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->e:Landroidx/media3/common/util/Clock;

    iget-boolean v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->f:Z

    xor-int/2addr v3, v1

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->c:Landroidx/media3/common/VideoGraph$Factory;

    if-nez v3, :cond_5

    new-instance v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;-><init>(Z)V

    iput-object v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->c:Landroidx/media3/common/VideoGraph$Factory;

    :cond_5
    new-instance v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {v3, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V

    iput-boolean v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->f:Z

    iget p1, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->u:I

    if-ge v1, p1, :cond_6

    goto :goto_2

    :cond_6
    iput v1, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->u:I

    :goto_2
    iget-object p1, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->c:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->l(Landroid/util/SparseArray;I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/video/VideoSink;

    goto :goto_3

    :cond_7
    new-instance v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object v5, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a:Landroid/content/Context;

    invoke-direct {v4, v3, v5, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;I)V

    iget-object v3, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v4

    :goto_3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    :cond_8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y1:Z

    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_d

    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroidx/media3/exoplayer/video/VideoSink;->z(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x2:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->i(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    :cond_a
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d2:Landroidx/media3/common/util/Size;

    sget-object v0, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d2:Landroidx/media3/common/util/Size;

    invoke-interface {p1, v0, v2}, Landroidx/media3/exoplayer/video/VideoSink;->r(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    :cond_b
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2:I

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->v(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:F

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->t(F)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a2:Ljava/util/List;

    if-eqz p1, :cond_c

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->l(Ljava/util/List;)V

    :cond_c
    xor-int/lit8 p1, p2, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z1:I

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C1:Z

    return-void

    :cond_d
    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->h:Landroidx/media3/common/util/Clock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    xor-int/lit8 p0, p2, 0x1

    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    return-void
.end method

.method public final M(ZZJ)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->x(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m2:J

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M(ZZJ)V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 p4, 0x0

    if-nez p2, :cond_2

    iget-object p2, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    iput-wide v2, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    iget p2, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    iput-wide v2, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    iput-boolean p4, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->n:Z

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    :cond_3
    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_4

    invoke-interface {p1, p4}, Landroidx/media3/exoplayer/video/VideoSink;->y(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1()V

    iput p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j2:I

    return-void
.end method

.method public final M0(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 14

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    cmp-long v0, v2, v4

    const/4 v4, 0x1

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz v5, :cond_3

    iget-wide v6, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    move-wide v2, v8

    goto :goto_1

    :cond_2
    iget-wide v10, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b:J

    long-to-double v10, v10

    sub-long/2addr v2, v6

    long-to-double v2, v2

    iget-wide v5, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c:D

    mul-double/2addr v2, v5

    add-double/2addr v2, v10

    double-to-long v2, v2

    :goto_1
    cmp-long v5, v2, v8

    if-eqz v5, :cond_3

    iget-wide v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R1:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    return v1

    :cond_5
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    :goto_4
    move v1, v4

    goto/16 :goto_d

    :cond_6
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    if-eqz v2, :cond_15

    iget-object v3, v2, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    const-string v6, "video/av01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_15

    if-nez v0, :cond_8

    iget v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B2:I

    if-gtz v6, :cond_7

    goto :goto_5

    :cond_7
    move v6, v1

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v4

    :goto_6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v3}, Landroidx/media3/container/ObuParser;->a(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    invoke-static {v5}, Landroidx/media3/container/ObuParser;->a(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    move v8, v1

    :goto_7
    if-ltz v7, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/ObuParser$Obu;

    iget v10, v9, Landroidx/media3/container/ObuParser$Obu;->a:I

    const/4 v11, 0x2

    const/4 v12, 0x6

    const/4 v13, 0x3

    if-eq v10, v11, :cond_d

    const/16 v11, 0xf

    if-ne v10, v11, :cond_a

    goto :goto_9

    :cond_a
    if-ne v10, v13, :cond_b

    if-nez v6, :cond_b

    goto :goto_a

    :cond_b
    if-eq v10, v12, :cond_c

    if-ne v10, v13, :cond_10

    :cond_c
    iget-object v10, v2, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->b:Landroidx/media3/container/ObuParser$SequenceHeader;

    if-eqz v10, :cond_10

    :try_start_0
    new-instance v11, Landroidx/media3/container/ObuParser$FrameHeader;

    invoke-direct {v11, v10, v9}, Landroidx/media3/container/ObuParser$FrameHeader;-><init>(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_10

    iget-boolean v9, v11, Landroidx/media3/container/ObuParser$FrameHeader;->a:Z

    if-nez v9, :cond_10

    :cond_d
    :goto_9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/ObuParser$Obu;

    iget v9, v9, Landroidx/media3/container/ObuParser$Obu;->a:I

    if-eq v9, v12, :cond_e

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/ObuParser$Obu;

    iget v9, v9, Landroidx/media3/container/ObuParser$Obu;->a:I

    if-ne v9, v13, :cond_f

    :cond_e
    add-int/lit8 v8, v8, 0x1

    :cond_f
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_10
    :goto_a
    if-gt v8, v4, :cond_13

    add-int/lit8 v2, v7, 0x1

    const/16 v6, 0x8

    if-lt v2, v6, :cond_11

    goto :goto_b

    :cond_11
    if-ltz v7, :cond_12

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/ObuParser$Obu;

    iget-object v2, v2, Landroidx/media3/container/ObuParser$Obu;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v2

    goto :goto_c

    :cond_13
    :goto_b
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v2

    :goto_c
    if-nez v2, :cond_14

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v3

    if-eq v2, v3, :cond_15

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    add-int/2addr v3, v2

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v3, v5, :cond_15

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v3}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    :cond_15
    :goto_d
    if-eqz v1, :cond_17

    if-eqz v0, :cond_16

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    goto :goto_e

    :cond_16
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B2:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B2:I

    :cond_17
    :goto_e
    return v1
.end method

.method public final N()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:Z

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->release()V

    :cond_0
    return-void
.end method

.method public final N0()Z
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/common/Format;

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()J

    move-result-wide v8

    iget-wide v10, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    add-long/2addr v8, v10

    iget-wide v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E1:J

    add-long/2addr v10, v1

    const-wide v1, 0x7fffffffffffffffL

    sub-long/2addr v1, v8

    cmp-long v1, v10, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v7

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v2, v2, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n2:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_3

    iget v0, v0, Landroidx/media3/common/Format;->q:I

    if-gtz v0, :cond_5

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0()J

    move-result-wide v0

    cmp-long p0, v0, v3

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v6

    :cond_5
    :goto_2
    return v7
.end method

.method public final O()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y1:Z

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_0
    return-void

    :catchall_0
    move-exception v4

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y1:Z

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_1
    throw v4
.end method

.method public final O0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public final P()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->h:Landroidx/media3/common/util/Clock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h2:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o2:J

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p2:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->u()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d()V

    return-void
.end method

.method public final P0()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    const-string v1, "c2.mtk.avc.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c2.mtk.hevc.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0()Z

    move-result p0

    return p0
.end method

.method public final Q()V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c1()V

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p2:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o2:J

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v5, v4, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v5, :cond_0

    new-instance v6, Lp51;

    invoke-direct {v6, v4, v2, v3, v0}, Lp51;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o2:J

    iput v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p2:I

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->s()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iput-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->b()V

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a()V

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    :cond_4
    return-void
.end method

.method public final R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {p0, p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    :cond_0
    return-void
.end method

.method public final R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .locals 10

    iget-object v0, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Landroid/content/Context;

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0

    :cond_3
    iget v4, p2, Landroidx/media3/common/Format;->P:I

    if-eqz v4, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v5, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0

    :cond_5
    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v4, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_7

    move v6, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v7, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v1

    move v5, v2

    move-object v4, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_3
    if-eqz v5, :cond_8

    const/4 v6, 0x4

    goto :goto_4

    :cond_8
    const/4 v6, 0x3

    :goto_4
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x10

    goto :goto_5

    :cond_9
    const/16 v7, 0x8

    :goto_5
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x40

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    if-eqz v3, :cond_b

    const/16 v3, 0x80

    goto :goto_7

    :cond_b
    move v3, v1

    :goto_7
    const-string v8, "video/dolby-vision"

    iget-object v9, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->a(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_c

    const/16 v3, 0x100

    :cond_c
    if-eqz v5, :cond_d

    invoke-static {p0, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/e;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    new-instance v2, Landroidx/media3/exoplayer/mediacodec/g;

    invoke-direct {v2, p1}, Landroidx/media3/exoplayer/mediacodec/g;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 v1, 0x20

    :cond_d
    or-int p0, v6, v7

    or-int/2addr p0, v1

    or-int/2addr p0, v4

    or-int/2addr p0, v3

    return p0
.end method

.method public final S()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_0
    return-void
.end method

.method public final W(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 10

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    iget v1, p2, Landroidx/media3/common/Format;->z:F

    iget v2, p3, Landroidx/media3/common/Format;->z:F

    iget v3, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->e:I

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p3, Landroidx/media3/common/Format;->v:I

    iget v6, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->a:I

    if-gt v5, v6, :cond_0

    iget v5, p3, Landroidx/media3/common/Format;->w:I

    iget v6, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->b:I

    if-le v5, v6, :cond_1

    :cond_0
    or-int/lit16 v3, v3, 0x100

    :cond_1
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v5

    iget v4, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    if-le v5, v4, :cond_2

    or-int/lit8 v3, v3, 0x40

    :cond_2
    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2:I

    const/high16 v4, -0x80000000

    if-ne p0, v4, :cond_3

    goto :goto_0

    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge p0, v4, :cond_7

    const/16 v4, 0x1e

    if-ne p0, v4, :cond_4

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MiTV"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float v4, v1, p0

    if-eqz v4, :cond_7

    cmpl-float p0, v2, p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    if-eqz p0, :cond_6

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p4

    div-float/2addr p0, p4

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p0, p4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p4, 0x3c23d70a    # 0.01f

    cmpl-float p0, p0, p4

    if-lez p0, :cond_7

    const/high16 p0, 0x10000

    or-int/2addr v3, p0

    :cond_7
    :goto_0
    move v9, v3

    new-instance v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    if-eqz v9, :cond_8

    const/4 p0, 0x0

    :goto_1
    move v8, p0

    move-object v6, p2

    move-object v7, p3

    goto :goto_2

    :cond_8
    iget p0, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    goto :goto_1

    :goto_2
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v4
.end method

.method public final X(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method public final Z0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->p()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-boolean v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h:Z

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->b:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    if-eq v1, v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_7

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    sget v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->e:I

    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v1, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-direct {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;-><init>()V

    if-eqz p1, :cond_6

    sget v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->e:I

    :cond_6
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->init(I)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_7
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-object p0
.end method

.method public final a1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    iget-boolean v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    sub-long/2addr p0, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p0, v2

    if-gtz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final c0(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x20

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c1()V
    .locals 8

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->h:Landroidx/media3/common/util/Clock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h2:J

    sub-long v2, v0, v2

    iget v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v6, v5, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v6, :cond_0

    new-instance v7, Lp51;

    invoke-direct {v7, v5, v4, v2, v3}, Lp51;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h2:J

    :cond_1
    return-void
.end method

.method public final d0(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 6

    array-length v0, p3

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p3, v2

    iget v4, v4, Landroidx/media3/common/Format;->z:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p3, v3, v1

    if-nez p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    mul-float/2addr v3, p1

    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    if-eqz p1, :cond_9

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    if-eqz p0, :cond_9

    iget p1, p2, Landroidx/media3/common/Format;->v:I

    iget p2, p2, Landroidx/media3/common/Format;->w:I

    iget-boolean p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    const v0, -0x800001

    if-nez p3, :cond_3

    goto :goto_4

    :cond_3
    iget p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->l:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->j:I

    if-ne v0, p1, :cond_4

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->k:I

    if-ne v0, p2, :cond_4

    move v0, p3

    goto :goto_4

    :cond_4
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    invoke-virtual {p0, v4, v5, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(DII)Z

    move-result p3

    const/high16 v0, 0x44800000    # 1024.0f

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    :goto_2
    sub-float v2, v0, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, p3

    float-to-double v4, v2

    invoke-virtual {p0, v4, v5, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(DII)Z

    move-result v4

    if-eqz v4, :cond_6

    move p3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, p3

    :goto_3
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->l:F

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->j:I

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->k:I

    :goto_4
    cmpl-float p0, v3, v1

    if-eqz p0, :cond_8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_8
    return v0

    :cond_9
    return v3
.end method

.method public final d1()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w2:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p0, v1, :cond_2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tunnel-peek"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->b(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final e0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p1

    sget-object p3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/e;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    new-instance p0, Landroidx/media3/exoplayer/mediacodec/g;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/g;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method public final e1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 3

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->m(IJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j2:I

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r2:Landroidx/media3/common/VideoSize;

    sget-object p4, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    invoke-virtual {p2, p4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    if-nez p4, :cond_0

    iget-object p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    invoke-virtual {p2, p4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget p4, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    const/4 v1, 0x3

    if-eq p4, v1, :cond_1

    move p1, p3

    :cond_1
    iput v1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    iget-object p4, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {p4}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz p1, :cond_3

    iget-object p2, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance p4, Lkd0;

    invoke-direct {p4, v0, p1, v1, v2}, Lkd0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2:Z

    :cond_3
    return-void
.end method

.method public final f1(Ljava/lang/Object;)V
    .locals 7

    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    if-eq v0, p1, :cond_a

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    if-nez v0, :cond_1

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g(Landroid/view/Surface;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2:Z

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v4, :cond_5

    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v5, :cond_5

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V1:Z

    if-nez v6, :cond_4

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->j(Landroid/view/Surface;)V

    goto :goto_1

    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v5, v6, :cond_3

    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->g()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    if-eqz p1, :cond_7

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    goto :goto_2

    :cond_6
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->w()V

    :cond_7
    :goto_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->y(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c(Z)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1()V

    return-void

    :cond_a
    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    if-eqz p1, :cond_b

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    :cond_b
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2:Z

    if-eqz p0, :cond_c

    iget-object p0, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz p0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v3, Lkd0;

    invoke-direct {v3, v2, p1, v0, v1}, Lkd0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final g(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->g(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 p2, 0x1b59

    const/4 p3, 0x0

    iget-object p4, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->b:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->J(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g(JJ)V

    return-void
.end method

.method public final g1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-boolean p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecVideoRenderer"

    return-object p0
.end method

.method public final h1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->l(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    return-void
.end method

.method public final i0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c:Ljava/lang/String;

    iget-object v5, v0, Landroidx/media3/exoplayer/BaseRenderer;->k:[Landroidx/media3/common/Format;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v3, Landroidx/media3/common/Format;->v:I

    iget v7, v3, Landroidx/media3/common/Format;->z:F

    iget-object v8, v3, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iget v9, v3, Landroidx/media3/common/Format;->w:I

    invoke-static/range {p1 .. p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v10

    array-length v11, v5

    const/4 v13, -0x1

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1

    if-eq v10, v13, :cond_0

    invoke-static/range {p1 .. p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v5

    if-eq v5, v13, :cond_0

    int-to-float v10, v10

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_0
    new-instance v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v5, v6, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    move-object/from16 v21, v8

    move v13, v9

    goto/16 :goto_f

    :cond_1
    array-length v11, v5

    move v14, v6

    move v12, v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v11, :cond_6

    aget-object v13, v5, v15

    move-object/from16 v18, v5

    if-eqz v8, :cond_2

    iget-object v5, v13, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    if-nez v5, :cond_2

    invoke-virtual {v13}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput-object v8, v5, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    new-instance v13, Landroidx/media3/common/Format;

    invoke-direct {v13, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_2
    invoke-virtual {v1, v3, v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v5

    move/from16 v19, v11

    iget v11, v13, Landroidx/media3/common/Format;->w:I

    iget v5, v5, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    if-eqz v5, :cond_5

    iget v5, v13, Landroidx/media3/common/Format;->v:I

    move/from16 v20, v15

    const/4 v15, -0x1

    if-eq v5, v15, :cond_4

    if-ne v11, v15, :cond_3

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v17, 0x1

    :goto_2
    or-int v16, v16, v17

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v1, v13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v10, v5

    goto :goto_3

    :cond_5
    move/from16 v20, v15

    const/4 v15, -0x1

    :goto_3
    add-int/lit8 v5, v20, 0x1

    move v13, v15

    move/from16 v11, v19

    move v15, v5

    move-object/from16 v5, v18

    goto :goto_0

    :cond_6
    if-eqz v16, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Resolutions unknown. Codec max resolution: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    if-le v9, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_8

    move v13, v9

    goto :goto_5

    :cond_8
    move v13, v6

    :goto_5
    if-eqz v5, :cond_9

    move v15, v6

    :goto_6
    move/from16 v16, v5

    goto :goto_7

    :cond_9
    move v15, v9

    goto :goto_6

    :goto_7
    int-to-float v5, v15

    move/from16 v17, v5

    int-to-float v5, v13

    div-float v5, v17, v5

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_8
    const/16 v18, 0x0

    const/16 v2, 0x9

    if-ge v5, v2, :cond_11

    sget-object v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C2:[I

    aget v2, v2, v5

    move/from16 v19, v5

    int-to-float v5, v2

    mul-float v5, v5, v17

    float-to-int v5, v5

    if-le v2, v13, :cond_11

    if-gt v5, v15, :cond_a

    goto/16 :goto_c

    :cond_a
    move/from16 v20, v2

    if-eqz v16, :cond_b

    move v2, v5

    :cond_b
    if-eqz v16, :cond_c

    move/from16 v5, v20

    :cond_c
    move/from16 v20, v13

    iget-object v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v13, :cond_d

    :goto_9
    move-object/from16 v21, v8

    move/from16 v22, v15

    move-object/from16 v8, v18

    goto :goto_a

    :cond_d
    invoke-virtual {v13}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v13

    if-nez v13, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v13

    move/from16 v22, v15

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v15

    move-object/from16 v21, v8

    new-instance v8, Landroid/graphics/Point;

    invoke-static {v2, v13}, Landroidx/media3/common/util/Util;->g(II)I

    move-result v2

    mul-int/2addr v2, v13

    invoke-static {v5, v15}, Landroidx/media3/common/util/Util;->g(II)I

    move-result v5

    mul-int/2addr v5, v15

    invoke-direct {v8, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_a
    if-eqz v8, :cond_f

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v5, v8, Landroid/graphics/Point;->y:I

    move-object v15, v8

    move v13, v9

    float-to-double v8, v7

    invoke-virtual {v1, v8, v9, v2, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(DII)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_d

    :cond_f
    move v13, v9

    :cond_10
    add-int/lit8 v5, v19, 0x1

    move v9, v13

    move/from16 v13, v20

    move-object/from16 v8, v21

    move/from16 v15, v22

    goto :goto_8

    :goto_b
    move-object/from16 v15, v18

    goto :goto_d

    :cond_11
    :goto_c
    move-object/from16 v21, v8

    move v13, v9

    goto :goto_b

    :goto_d
    if-eqz v15, :cond_13

    iget v2, v15, Landroid/graphics/Point;->x:I

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v2, v15, Landroid/graphics/Point;->y:I

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v3}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iput v14, v2, Landroidx/media3/common/Format$Builder;->u:I

    iput v12, v2, Landroidx/media3/common/Format$Builder;->v:I

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-static {v1, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Codec max resolution adjusted to: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_e

    :cond_12
    move-object/from16 v21, v8

    move v13, v9

    :cond_13
    :goto_e
    new-instance v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v5, v14, v12, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    :goto_f
    iput-object v5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-eqz v2, :cond_14

    iget v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v2:I

    goto :goto_10

    :cond_14
    const/4 v2, 0x0

    :goto_10
    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "width"

    invoke-virtual {v8, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "height"

    invoke-virtual {v8, v4, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v4, v3, Landroidx/media3/common/Format;->r:Ljava/util/List;

    invoke-static {v8, v4}, Landroidx/media3/common/util/MediaFormatUtil;->b(Landroid/media/MediaFormat;Ljava/util/List;)V

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v6, v7, v4

    if-eqz v6, :cond_15

    const-string v6, "frame-rate"

    invoke-virtual {v8, v6, v7}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_15
    const-string v6, "rotation-degrees"

    iget v7, v3, Landroidx/media3/common/Format;->A:I

    invoke-static {v8, v6, v7}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-eqz v21, :cond_16

    const-string v6, "color-transfer"

    move-object/from16 v7, v21

    iget v9, v7, Landroidx/media3/common/ColorInfo;->c:I

    invoke-static {v8, v6, v9}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v6, "color-standard"

    iget v9, v7, Landroidx/media3/common/ColorInfo;->a:I

    invoke-static {v8, v6, v9}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v6, "color-range"

    iget v9, v7, Landroidx/media3/common/ColorInfo;->b:I

    invoke-static {v8, v6, v9}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v6, v7, Landroidx/media3/common/ColorInfo;->d:[B

    if-eqz v6, :cond_16

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v7, "hdr-static-info"

    invoke-virtual {v8, v7, v6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_16
    const-string v6, "video/dolby-vision"

    iget-object v7, v3, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {v3}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "profile"

    invoke-static {v8, v7, v6}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_17
    const-string v6, "max-width"

    iget v7, v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->a:I

    invoke-virtual {v8, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "max-height"

    iget v7, v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->b:I

    invoke-virtual {v8, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "max-input-size"

    iget v5, v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    invoke-static {v8, v6, v5}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v5, "priority"

    const/4 v6, 0x0

    invoke-virtual {v8, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_18

    const-string v4, "operating-rate"

    move/from16 v5, p4

    invoke-virtual {v8, v4, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_18
    iget-boolean v4, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1:Z

    if-eqz v4, :cond_19

    const-string v4, "no-post-process"

    const/4 v5, 0x1

    invoke-virtual {v8, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "auto-frc"

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_11

    :cond_19
    const/4 v5, 0x1

    :goto_11
    if-eqz v2, :cond_1a

    const-string v4, "tunneled-playback"

    invoke-virtual {v8, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    invoke-virtual {v8, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v2, v4, :cond_1b

    iget v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t2:I

    neg-int v2, v2

    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v4, "importance"

    invoke-virtual {v8, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1b
    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U(Landroid/media/MediaFormat;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;

    move-result-object v4

    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v2, :cond_1c

    iget-object v0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->L(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "allow-frame-drop"

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1c
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v6, 0x0

    move-object/from16 v5, p3

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    return-object v0
.end method

.method public final i1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->h:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->h:I

    add-int/2addr p1, p2

    iget p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->g:I

    add-int/2addr p2, p1

    iput p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->g:I

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j2:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j2:I

    iget p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->i:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->i:I

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M1:I

    if-lez p1, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2:I

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c1()V

    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->m(Z)Z

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b(Z)Z

    move-result p0

    return p0
.end method

.method public final j1(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    return-void

    :cond_1
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget-wide v0, p1, Landroidx/media3/common/Timeline$Period;->d:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z2:J

    return-void
.end method

.method public final k1(J)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget-wide v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->k:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->k:J

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->l:I

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o2:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o2:J

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p2:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p2:I

    return-void
.end method

.method public final l0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W1:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_2

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->b(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z1:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->q()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z1:I

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    if-nez v0, :cond_3

    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    :cond_3
    return-void
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v1, 0x7

    if-eq p1, v1, :cond_c

    const/16 v1, 0xa

    if-eq p1, v1, :cond_b

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    const/16 v1, 0xd

    if-eq p1, v1, :cond_4

    const/16 v1, 0xe

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    check-cast p2, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l2:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq p1, v0, :cond_d

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(Landroidx/media3/common/Format;)Z

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-virtual {p2, v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t2:I

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p2, v0, :cond_d

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t2:I

    neg-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const-string v0, "importance"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->b(Landroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/media3/common/util/Size;

    iget p1, p2, Landroidx/media3/common/util/Size;->a:I

    if-eqz p1, :cond_d

    iget p1, p2, Landroidx/media3/common/util/Size;->b:I

    if-eqz p1, :cond_d

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d2:Landroidx/media3/common/util/Size;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_d

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->r(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    sget-object p1, Landroidx/media3/common/VideoFrameProcessor;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->a()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->o()V

    return-void

    :cond_6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a2:Ljava/util/List;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->l(Ljava/util/List;)V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2:I

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->v(I)V

    return-void

    :cond_8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:I

    if-ne p2, p1, :cond_9

    goto :goto_2

    :cond_9
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d(Z)V

    return-void

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f2:I

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->h(I)V

    return-void

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v2:I

    if-eq p2, p1, :cond_d

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v2:I

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    return-void

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x2:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->i(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    :cond_d
    :goto_2
    return-void

    :cond_e
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r0(Landroidx/media3/common/Format;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->n(Landroidx/media3/common/Format;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/16 v1, 0x1b58

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->J(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final s0(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "Video codec error"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lw21;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final t(JJ)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-wide/32 p0, 0x186a0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t0(JJLjava/lang/String;)V
    .locals 9

    iget-object v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v8, v6, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v8, :cond_0

    new-instance v0, Lbc;

    const/4 v1, 0x1

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lbc;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    invoke-static {v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V1:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "video/x-vnd.on2.vp9"

    iget-object p3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez p1, :cond_2

    :cond_1
    new-array p1, p3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_2
    array-length p2, p1

    move p4, p3

    :goto_1
    if-ge p4, p2, :cond_4

    aget-object p5, p1, p4

    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W1:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1()V

    return-void
.end method

.method public final u0(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lw21;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final v(J)Z
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s1:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m2:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A1:J

    cmp-long p0, v4, v2

    const/4 v0, 0x1

    if-nez p0, :cond_2

    return v0

    :cond_2
    cmp-long p0, p1, v4

    if-lez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lw21;

    const/16 v2, 0xc

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final w(JJZZ)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y2:J

    neg-long v0, v0

    sub-long/2addr p3, v0

    :cond_0
    const-wide/32 v0, -0x7a120

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-gez p1, :cond_7

    if-nez p5, :cond_7

    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:J

    sub-long v0, p3, v0

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/source/SampleStream;->b(J)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m2:J

    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    const/4 p4, 0x1

    iget-object p5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1:Ljava/util/PriorityQueue;

    if-eqz p6, :cond_2

    iget p6, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    add-int/2addr p6, p1

    iput p6, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    iget p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    add-int/2addr p1, v0

    iput p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    add-int/2addr p1, p6

    iput p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    goto :goto_0

    :cond_2
    iget p6, p3, Landroidx/media3/exoplayer/DecoderCounters;->j:I

    add-int/2addr p6, p4

    iput p6, p3, Landroidx/media3/exoplayer/DecoderCounters;->j:I

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p3

    add-int/2addr p3, p1

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    invoke-virtual {p0, p3, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1(II)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P0()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N0()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    goto :goto_1

    :cond_5
    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D1:Z

    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_6

    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->x(Z)V

    :cond_6
    return p4

    :cond_7
    :goto_2
    return p2
.end method

.method public final w0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 5

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, Lb5;

    const/16 v4, 0x18

    invoke-direct {v3, v1, p1, v0, v4}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    :cond_1
    return-object v0
.end method

.method public final x0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f2:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->h(I)V

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget p2, p1, Landroidx/media3/common/Format;->v:I

    iget v0, p1, Landroidx/media3/common/Format;->w:I

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v2, p2

    add-int/2addr v2, v6

    move p2, v2

    goto :goto_2

    :cond_4
    const-string v2, "height"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    move v10, v0

    move v0, p2

    move p2, v10

    :goto_3
    iget v2, p1, Landroidx/media3/common/Format;->B:F

    iget v3, p1, Landroidx/media3/common/Format;->A:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    move v10, v0

    move v0, p2

    move p2, v10

    :cond_6
    new-instance v3, Landroidx/media3/common/VideoSize;

    invoke-direct {v3, p2, v0, v2}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r2:Landroidx/media3/common/VideoSize;

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v4, :cond_8

    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A2:Z

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iput p2, p1, Landroidx/media3/common/Format$Builder;->u:I

    iput v0, p1, Landroidx/media3/common/Format$Builder;->v:I

    iput v2, p1, Landroidx/media3/common/Format$Builder;->A:F

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget v8, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z1:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a2:Ljava/util/List;

    if-eqz p1, :cond_7

    :goto_4
    move-object v9, p1

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0()J

    move-result-wide v6

    invoke-interface/range {v4 .. v9}, Landroidx/media3/exoplayer/video/VideoSink;->k(Landroidx/media3/common/Format;JILjava/util/List;)V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z1:I

    goto :goto_6

    :cond_8
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget p1, p1, Landroidx/media3/common/Format;->z:F

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f(F)V

    :goto_6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A2:Z

    return-void
.end method

.method public final z0(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(J)V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u2:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k2:I

    :cond_0
    return-void
.end method
