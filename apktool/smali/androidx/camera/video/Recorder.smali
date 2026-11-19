.class public final Landroidx/camera/video/Recorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/Recorder$State;,
        Landroidx/camera/video/Recorder$RecordingRecord;,
        Landroidx/camera/video/Recorder$AudioState;,
        Landroidx/camera/video/Recorder$SetupVideoTask;,
        Landroidx/camera/video/Recorder$Builder;
    }
.end annotation


# static fields
.field public static final m0:Ljava/util/Set;

.field public static final n0:Ljava/util/Set;

.field public static final o0:Landroidx/camera/video/VideoSpec;

.field public static final p0:Landroidx/camera/video/MediaSpec;

.field public static final q0:Lno0;

.field public static final r0:Lno0;

.field public static final s0:Ljava/util/concurrent/Executor;

.field public static final t0:I

.field public static final u0:J


# instance fields
.field public A:Landroidx/camera/core/SurfaceRequest;

.field public B:Landroidx/camera/core/impl/Timebase;

.field public C:Landroid/view/Surface;

.field public D:Landroid/view/Surface;

.field public E:Landroid/media/MediaMuxer;

.field public final F:Landroidx/camera/core/impl/MutableStateObservable;

.field public G:Landroidx/camera/video/internal/audio/AudioSource;

.field public H:Landroidx/camera/video/internal/encoder/Encoder;

.field public I:Landroidx/camera/video/internal/encoder/f;

.field public J:Landroidx/camera/video/internal/encoder/Encoder;

.field public K:Landroidx/camera/video/internal/encoder/f;

.field public L:Landroidx/camera/video/Recorder$AudioState;

.field public M:Landroid/net/Uri;

.field public N:J

.field public O:J

.field public P:J

.field public Q:J

.field public R:J

.field public S:J

.field public T:J

.field public U:J

.field public V:J

.field public W:I

.field public X:Landroidx/camera/video/internal/encoder/EncodedData;

.field public final Y:Landroidx/camera/core/internal/utils/ArrayRingBuffer;

.field public Z:Ljava/lang/Throwable;

.field public final a:Landroidx/camera/core/impl/MutableStateObservable;

.field public a0:Z

.field public final b:Landroidx/camera/core/impl/MutableStateObservable;

.field public b0:Landroidx/camera/video/VideoOutput$SourceState;

.field public final c:Ljava/util/concurrent/Executor;

.field public c0:Ljava/util/concurrent/ScheduledFuture;

.field public final d:Ljava/util/concurrent/Executor;

.field public d0:Z

.field public final e:Ljava/util/concurrent/Executor;

.field public e0:Landroidx/camera/video/VideoEncoderSession;

.field public final f:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field public f0:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

.field public final g:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field public g0:Landroidx/camera/video/VideoEncoderSession;

.field public final h:Landroidx/camera/video/internal/OutputStorage$Factory;

.field public h0:D

.field public final i:Ljava/lang/Object;

.field public i0:Landroidx/camera/video/Recorder$SetupVideoTask;

.field public final j:Z

.field public j0:Landroidx/camera/video/internal/OutputStorage;

.field public final k:J

.field public k0:J

.field public final l:Landroidx/camera/core/impl/MutableStateObservable;

.field public l0:Z

.field public m:Landroidx/camera/video/Recorder$State;

.field public n:Landroidx/camera/video/Recorder$State;

.field public o:I

.field public p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

.field public q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

.field public r:J

.field public s:Landroidx/camera/video/Recorder$RecordingRecord;

.field public t:Z

.field public u:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

.field public v:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

.field public w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

.field public final x:Ljava/util/ArrayList;

.field public y:Ljava/lang/Integer;

.field public z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    sget-object v2, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    sget-object v2, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    sget-object v3, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    sget-object v4, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    sget-object v5, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/Recorder;->n0:Ljava/util/Set;

    sget-object v1, Landroidx/camera/video/VideoSpec;->b:Landroidx/camera/video/QualitySelector;

    invoke-static {}, Landroidx/camera/video/VideoSpec;->a()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/video/AutoValue_VideoSpec$Builder;

    if-eqz v1, :cond_0

    iput-object v1, v3, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a:Landroidx/camera/video/QualitySelector;

    check-cast v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;

    iput-object v0, v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a()Landroidx/camera/video/VideoSpec;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/Recorder;->o0:Landroidx/camera/video/VideoSpec;

    new-instance v2, Landroidx/camera/video/AutoValue_MediaSpec$Builder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->c:Ljava/lang/Integer;

    invoke-static {}, Landroidx/camera/video/AudioSpec;->a()Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/video/AudioSpec$Builder;->a()Landroidx/camera/video/AudioSpec;

    move-result-object v3

    iput-object v3, v2, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->b:Landroidx/camera/video/AudioSpec;

    invoke-static {}, Landroidx/camera/video/VideoSpec;->a()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/video/VideoSpec$Builder;->a()Landroidx/camera/video/VideoSpec;

    iput-object v0, v2, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->c:Ljava/lang/Integer;

    iput-object v1, v2, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v2}, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a()Landroidx/camera/video/MediaSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->p0:Landroidx/camera/video/MediaSpec;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The video frame producer became inactive before any data was received."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lno0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lno0;-><init>(I)V

    sput-object v0, Landroidx/camera/video/Recorder;->q0:Lno0;

    new-instance v0, Lno0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lno0;-><init>(I)V

    sput-object v0, Landroidx/camera/video/Recorder;->r0:Lno0;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->e(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->s0:Ljava/util/concurrent/Executor;

    const/4 v0, 0x3

    sput v0, Landroidx/camera/video/Recorder;->t0:I

    const-wide/16 v0, 0x3e8

    sput-wide v0, Landroidx/camera/video/Recorder;->u0:J

    return-void

    :cond_0
    const-string v0, "Null qualitySelector"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/OutputStorage$Factory;J)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    const-class v0, Landroidx/camera/video/internal/compat/quirk/EncoderNotUsePersistentInputSurfaceQuirk;

    sget-object v1, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/camera/video/Recorder;->j:Z

    new-instance v0, Landroidx/camera/core/impl/MutableStateObservable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroidx/camera/core/impl/StateObservable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->l:Landroidx/camera/core/impl/MutableStateObservable;

    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    iput v2, p0, Landroidx/camera/video/Recorder;->o:I

    iput-object v3, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->r:J

    iput-object v3, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->t:Z

    iput-object v3, p0, Landroidx/camera/video/Recorder;->u:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->v:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->x:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->y:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->z:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->C:Landroid/view/Surface;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->D:Landroid/view/Surface;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->I:Landroidx/camera/video/internal/encoder/f;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->K:Landroidx/camera/video/internal/encoder/f;

    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->M:Landroid/net/Uri;

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->N:J

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->O:J

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->P:J

    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Landroidx/camera/video/Recorder;->Q:J

    iput-wide v6, p0, Landroidx/camera/video/Recorder;->R:J

    iput-wide v6, p0, Landroidx/camera/video/Recorder;->S:J

    iput-wide v6, p0, Landroidx/camera/video/Recorder;->T:J

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->U:J

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->V:J

    iput v1, p0, Landroidx/camera/video/Recorder;->W:I

    iput-object v3, p0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    new-instance v0, Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->Y:Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->Z:Ljava/lang/Throwable;

    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->a0:Z

    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->b0:Landroidx/camera/video/VideoOutput$SourceState;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->c0:Ljava/util/concurrent/ScheduledFuture;

    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->d0:Z

    iput-object v3, p0, Landroidx/camera/video/Recorder;->f0:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->g0:Landroidx/camera/video/VideoEncoderSession;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/camera/video/Recorder;->h0:D

    iput-object v3, p0, Landroidx/camera/video/Recorder;->i0:Landroidx/camera/video/Recorder$SetupVideoTask;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    iput-wide v6, p0, Landroidx/camera/video/Recorder;->k0:J

    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->l0:Z

    iput-object p1, p0, Landroidx/camera/video/Recorder;->c:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroidx/camera/video/Recorder;->d:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->e(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    check-cast p2, Landroidx/camera/video/AutoValue_MediaSpec;

    new-instance v1, Landroidx/camera/video/AutoValue_MediaSpec$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p2, Landroidx/camera/video/AutoValue_MediaSpec;->a:Landroidx/camera/video/VideoSpec;

    iput-object v2, v1, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    iget-object v2, p2, Landroidx/camera/video/AutoValue_MediaSpec;->b:Landroidx/camera/video/AudioSpec;

    iput-object v2, v1, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->b:Landroidx/camera/video/AudioSpec;

    iget v2, p2, Landroidx/camera/video/AutoValue_MediaSpec;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->c:Ljava/lang/Integer;

    iget-object p2, p2, Landroidx/camera/video/AutoValue_MediaSpec;->a:Landroidx/camera/video/VideoSpec;

    check-cast p2, Landroidx/camera/video/AutoValue_VideoSpec;

    iget p2, p2, Landroidx/camera/video/AutoValue_VideoSpec;->f:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    if-eqz p2, :cond_2

    check-cast p2, Landroidx/camera/video/AutoValue_VideoSpec;

    new-instance v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v4, p2, Landroidx/camera/video/AutoValue_VideoSpec;->c:Landroidx/camera/video/QualitySelector;

    iput-object v4, v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a:Landroidx/camera/video/QualitySelector;

    iget v4, p2, Landroidx/camera/video/AutoValue_VideoSpec;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->b:Ljava/lang/Integer;

    iget-object v4, p2, Landroidx/camera/video/AutoValue_VideoSpec;->e:Landroid/util/Range;

    iput-object v4, v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->c:Landroid/util/Range;

    iget p2, p2, Landroidx/camera/video/AutoValue_VideoSpec;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->d:Ljava/lang/Integer;

    sget-object p2, Landroidx/camera/video/Recorder;->o0:Landroidx/camera/video/VideoSpec;

    check-cast p2, Landroidx/camera/video/AutoValue_VideoSpec;

    iget p2, p2, Landroidx/camera/video/AutoValue_VideoSpec;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v2, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a()Landroidx/camera/video/VideoSpec;

    move-result-object p2

    iput-object p2, v1, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    goto :goto_2

    :cond_2
    const-string p0, "Property \"videoSpec\" has not been set"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a()Landroidx/camera/video/MediaSpec;

    move-result-object p2

    new-instance v1, Landroidx/camera/core/impl/MutableStateObservable;

    invoke-direct {v1, p2}, Landroidx/camera/core/impl/StateObservable;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/camera/video/Recorder;->F:Landroidx/camera/core/impl/MutableStateObservable;

    iget p2, p0, Landroidx/camera/video/Recorder;->o:I

    iget-object v1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {v1}, Landroidx/camera/video/Recorder;->m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    new-instance v2, Landroidx/camera/video/AutoValue_StreamInfo;

    invoke-direct {v2, p2, v1, v3}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    new-instance p2, Landroidx/camera/core/impl/MutableStateObservable;

    invoke-direct {p2, v2}, Landroidx/camera/core/impl/StateObservable;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/video/Recorder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Landroidx/camera/core/impl/MutableStateObservable;

    invoke-direct {v1, p2}, Landroidx/camera/core/impl/StateObservable;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/camera/video/Recorder;->b:Landroidx/camera/core/impl/MutableStateObservable;

    iput-object p3, p0, Landroidx/camera/video/Recorder;->f:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iput-object p4, p0, Landroidx/camera/video/Recorder;->g:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iput-object p5, p0, Landroidx/camera/video/Recorder;->h:Landroidx/camera/video/internal/OutputStorage$Factory;

    new-instance p2, Landroidx/camera/video/VideoEncoderSession;

    invoke-direct {p2, p3, v0, p1}, Landroidx/camera/video/VideoEncoderSession;-><init>(Landroidx/camera/video/internal/encoder/EncoderFactory;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    const-wide/16 p1, -0x1

    cmp-long p1, p6, p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const-wide/32 p6, 0x3200000

    :goto_3
    iput-wide p6, p0, Landroidx/camera/video/Recorder;->k:J

    invoke-static {p6, p7}, Landroidx/camera/video/internal/utils/StorageUtil;->a(J)V

    const/4 p0, 0x3

    const-string p1, "Recorder"

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void
.end method

.method public static l(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/impl/StateObservable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;
    .locals 2

    const-class v0, Landroidx/camera/video/internal/compat/quirk/DeactivateEncoderSurfaceBeforeStopEncoderQuirk;

    sget-object v1, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/compat/quirk/DeactivateEncoderSurfaceBeforeStopEncoderQuirk;

    sget-object v1, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    if-eq p0, v1, :cond_1

    sget-object v1, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    if-ne p0, v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/camera/video/StreamInfo$StreamState;->INACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/camera/video/StreamInfo$StreamState;->ACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    return-object p0
.end method

.method public static p(Landroidx/camera/video/Recording;Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/camera/video/Recording;->d:J

    iget-wide p0, p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->m:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 3

    instance-of v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lgw;

    invoke-direct {v2, p0, v1}, Lgw;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/Recorder;->C:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->C:Landroid/view/Surface;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->C(I)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final B(Landroidx/camera/video/Recorder$State;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    if-eq v0, p1, :cond_4

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "Recorder"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget-object v0, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/camera/video/Recorder;->n0:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    invoke-static {v1}, Landroidx/camera/video/Recorder;->m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string p0, "Invalid state transition. Should not be transitioning to a PENDING state from state "

    invoke-static {v1, p0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    if-eqz v0, :cond_2

    iput-object v2, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    if-nez v2, :cond_3

    invoke-static {p1}, Landroidx/camera/video/Recorder;->m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v2

    :cond_3
    iget p1, p0, Landroidx/camera/video/Recorder;->o:I

    iget-object v0, p0, Landroidx/camera/video/Recorder;->u:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    sget-object v1, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    new-instance v1, Landroidx/camera/video/AutoValue_StreamInfo;

    invoke-direct {v1, p1, v2, v0}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/StateObservable;->f(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to transition to state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but Recorder is already in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final C(I)V
    .locals 3

    iget v0, p0, Landroidx/camera/video/Recorder;->o:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Recorder"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iput p1, p0, Landroidx/camera/video/Recorder;->o:I

    iget-object v0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {v0}, Landroidx/camera/video/Recorder;->m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/Recorder;->u:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    sget-object v2, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    new-instance v2, Landroidx/camera/video/AutoValue_StreamInfo;

    invoke-direct {v2, p1, v0, v1}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/StateObservable;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final D(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 10

    iget-object v0, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->n()Z

    move-result v0

    iget-object v1, p0, Landroidx/camera/video/Recorder;->Y:Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Audio is enabled but no audio sample is ready. Cannot start media muxer."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->y0()J

    move-result-wide v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->c()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/video/internal/encoder/EncodedData;

    invoke-interface {v6}, Landroidx/camera/video/internal/encoder/EncodedData;->y0()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-ltz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/video/internal/encoder/EncodedData;

    invoke-interface {v6}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v6

    add-long/2addr v3, v6

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_4
    iget-wide v6, p0, Landroidx/camera/video/Recorder;->U:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v1, :cond_5

    cmp-long v1, v3, v6

    if-lez v1, :cond_5

    const-string v1, "Recorder"

    const-string v5, "Initial data exceeds file size limit %d > %d"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v6, p0, Landroidx/camera/video/Recorder;->U:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v9, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p0, p1, v8, v2}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Landroidx/camera/video/Recorder;->F:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-static {v3}, Landroidx/camera/video/Recorder;->l(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/video/MediaSpec;

    move-object v4, v3

    check-cast v4, Landroidx/camera/video/AutoValue_MediaSpec;

    iget v4, v4, Landroidx/camera/video/AutoValue_MediaSpec;->c:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_a

    iget-object v3, p0, Landroidx/camera/video/Recorder;->w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    sget-object v4, Landroidx/camera/video/Recorder;->p0:Landroidx/camera/video/MediaSpec;

    check-cast v4, Landroidx/camera/video/AutoValue_MediaSpec;

    iget v4, v4, Landroidx/camera/video/AutoValue_MediaSpec;->c:I

    if-eq v4, v2, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy;->c()I

    move-result v3

    if-eq v3, v2, :cond_b

    if-eq v3, v8, :cond_8

    const/16 v6, 0x9

    if-eq v3, v6, :cond_7

    goto :goto_5

    :cond_7
    move v8, v2

    goto :goto_6

    :cond_8
    :goto_4
    move v8, v1

    goto :goto_6

    :catch_0
    move-exception v3

    goto/16 :goto_9

    :cond_9
    :goto_5
    move v8, v4

    goto :goto_6

    :cond_a
    check-cast v3, Landroidx/camera/video/AutoValue_MediaSpec;

    iget v3, v3, Landroidx/camera/video/AutoValue_MediaSpec;->c:I

    if-eq v3, v2, :cond_7

    goto :goto_4

    :cond_b
    :goto_6
    new-instance v3, Lir0;

    invoke-direct {v3, p0, v1}, Lir0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v8, v3}, Landroidx/camera/video/Recorder$RecordingRecord;->g(ILir0;)Landroid/media/MediaMuxer;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Landroidx/camera/video/Recorder;->v:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-eqz v3, :cond_c

    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->z(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    invoke-virtual {v3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_c
    move-object v3, p1

    check-cast v3, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v3, v3, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    iget-object v3, v3, Landroidx/camera/video/OutputOptions;->a:Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->I:Landroidx/camera/video/internal/encoder/f;

    invoke-virtual {v3}, Landroidx/camera/video/internal/encoder/f;->a()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/video/Recorder;->z:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->n()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroidx/camera/video/Recorder;->K:Landroidx/camera/video/internal/encoder/f;

    invoke-virtual {v3}, Landroidx/camera/video/internal/encoder/f;->a()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/video/Recorder;->y:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v1, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    invoke-virtual {p0, v0, p1}, Landroidx/camera/video/Recorder;->L(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/internal/encoder/EncodedData;

    invoke-virtual {p0, v2, p1}, Landroidx/camera/video/Recorder;->K(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_e
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :catch_1
    move-exception v1

    :try_start_5
    iget-object v3, p0, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Landroidx/camera/video/internal/OutputStorage;->a()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/camera/video/Recorder;->k:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_f

    goto :goto_8

    :cond_f
    move v9, v2

    :goto_8
    invoke-virtual {p0, p1, v9, v1}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :goto_9
    :try_start_6
    instance-of v4, v3, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v5, "No space left on device"

    invoke-static {v4, v5, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v2, :cond_10

    goto :goto_a

    :cond_10
    const/4 v9, 0x5

    :goto_a
    invoke-virtual {p0, p1, v9, v3}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :goto_b
    :try_start_7
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p0

    :cond_11
    const-string p0, "Media muxer cannot be started without an encoded video frame."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_12
    const-string p0, "Unable to set up media muxer when one already exists."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 9

    iget-object v0, p0, Landroidx/camera/video/Recorder;->F:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-static {v0}, Landroidx/camera/video/Recorder;->l(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/MediaSpec;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    invoke-static {v0, v1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->a(Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo;

    move-result-object v1

    sget-object v5, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->f0:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->e()I

    move-result v3

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->g()I

    move-result v4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    new-instance v3, Landroid/util/Rational;

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->e()I

    move-result v4

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->g()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    check-cast v0, Landroidx/camera/video/AutoValue_MediaSpec;

    iget-object v2, v0, Landroidx/camera/video/AutoValue_MediaSpec;->b:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/AudioMimeInfo;->c()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v7, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;

    invoke-direct {v7, v2, v4, v3}, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;-><init>(Landroidx/camera/video/AudioSpec;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroid/util/Rational;)V

    goto :goto_1

    :cond_1
    new-instance v7, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;

    invoke-direct {v7, v2, v3}, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;-><init>(Landroidx/camera/video/AudioSpec;Landroid/util/Rational;)V

    :goto_1
    invoke-interface {v7}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/camera/video/internal/audio/AudioSettings;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->t()V

    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-boolean v2, v2, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroidx/camera/video/Recorder$RecordingRecord;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/Recorder$RecordingRecord$AudioSourceSupplier;

    if-eqz v2, :cond_5

    sget-object p1, Landroidx/camera/video/Recorder;->s0:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v7, p1}, Landroidx/camera/video/Recorder$RecordingRecord$AudioSourceSupplier;->a(Landroidx/camera/video/internal/audio/AudioSettings;Ljava/util/concurrent/Executor;)Landroidx/camera/video/internal/audio/AudioSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Set up new audio source: 0x%x"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x3

    const-string v2, "Recorder"

    invoke-static {p1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v6, v0, Landroidx/camera/video/AutoValue_MediaSpec;->b:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/AudioMimeInfo;->c()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v2, Landroidx/camera/video/internal/config/AudioEncoderConfigAudioProfileResolver;

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/MimeInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/MimeInfo;->b()I

    move-result v4

    invoke-direct/range {v2 .. v8}, Landroidx/camera/video/internal/config/AudioEncoderConfigAudioProfileResolver;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/MimeInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/MimeInfo;->b()I

    move-result v4

    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;)V

    :goto_2
    invoke-interface {v2}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Landroidx/camera/core/SurfaceRequest;->g:I

    iget-object v1, p0, Landroidx/camera/video/Recorder;->g:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, p1, v0}, Landroidx/camera/video/internal/encoder/EncoderFactory;->c(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderConfig;I)Landroidx/camera/video/internal/encoder/EncoderImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->g:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    instance-of v0, p1, Landroidx/camera/video/internal/encoder/Encoder$ByteBufferInput;

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    check-cast p1, Landroidx/camera/video/internal/encoder/Encoder$ByteBufferInput;

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lr6;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    const-string p0, "The EncoderInput of audio isn\'t a ByteBufferInput."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p0, "One-time audio source creation has already occurred for recording "

    invoke-static {p1, p0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "Recording does not have audio enabled. Unable to create audio source for recording "

    invoke-static {p1, p0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final F(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 12

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-nez v0, :cond_d

    iput-object p1, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    move-object v0, p1

    check-cast v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v1, v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->h:Landroidx/camera/video/internal/OutputStorage$Factory;

    invoke-interface {v2, v1}, Landroidx/camera/video/internal/OutputStorage$Factory;->d(Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/internal/OutputStorageImpl;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    invoke-virtual {v2}, Landroidx/camera/video/internal/OutputStorageImpl;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/camera/video/internal/utils/StorageUtil;->a(J)V

    const/4 v4, 0x3

    const-string v5, "Recorder"

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-wide v6, p0, Landroidx/camera/video/Recorder;->k:J

    cmp-long v8, v2, v6

    const/4 v9, 0x1

    if-gez v8, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Insufficient storage space. The available storage (%d bytes) is below the required threshold of %d bytes."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroidx/camera/video/Recorder;->i(I)V

    goto/16 :goto_5

    :cond_0
    sub-long/2addr v2, v6

    iput-wide v2, p0, Landroidx/camera/video/Recorder;->k0:J

    iget-boolean v0, v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    iget-object v2, v1, Landroidx/camera/video/OutputOptions;->a:Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;

    iget-wide v2, v2, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;->a:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    long-to-double v2, v2

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/camera/video/Recorder;->U:J

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    iput-wide v6, p0, Landroidx/camera/video/Recorder;->U:J

    :goto_0
    iget-object v1, v1, Landroidx/camera/video/OutputOptions;->a:Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;

    iget-wide v1, v1, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;->b:J

    cmp-long v3, v1, v6

    if-lez v3, :cond_2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/camera/video/Recorder;->V:J

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_1

    :cond_2
    iput-wide v6, p0, Landroidx/camera/video/Recorder;->V:J

    :goto_1
    iget-object v1, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v9, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    goto :goto_4

    :cond_3
    const-string p1, "Incorrectly invoke startInternal in audio state "

    iget-object p0, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    invoke-static {p0, p1}, Lbm;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    goto :goto_2

    :cond_5
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->DISABLED:Landroidx/camera/video/Recorder$AudioState;

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->y(Landroidx/camera/video/Recorder$AudioState;)V

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    check-cast v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->E(Landroidx/camera/video/Recorder$RecordingRecord;)V

    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->y(Landroidx/camera/video/Recorder$AudioState;)V
    :try_end_0
    .catch Landroidx/camera/video/internal/audio/AudioSourceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v5}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    instance-of v1, v0, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    goto :goto_3

    :cond_7
    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    :goto_3
    invoke-virtual {p0, v1}, Landroidx/camera/video/Recorder;->y(Landroidx/camera/video/Recorder$AudioState;)V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->Z:Ljava/lang/Throwable;

    goto :goto_4

    :cond_8
    const-string p0, "The Recorder doesn\'t support recording with audio"

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/video/Recorder;->H(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->n()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v2, p1, Landroidx/camera/video/Recorder$RecordingRecord;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object v3, v1, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/camera/video/internal/audio/b;

    invoke-direct {v4, v1, v2, v0}, Landroidx/camera/video/internal/audio/b;-><init>(Landroidx/camera/video/internal/audio/AudioSource;ZI)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    :cond_a
    iget-object v0, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    move-object v1, v0

    check-cast v1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v1, v1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->k()Landroidx/camera/video/RecordingStats;

    move-result-object v2

    new-instance v3, Landroidx/camera/video/VideoRecordEvent$Start;

    invoke-direct {v3, v1, v2}, Landroidx/camera/video/VideoRecordEvent;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)V

    invoke-virtual {v0, v3, v9}, Landroidx/camera/video/Recorder$RecordingRecord;->h(Landroidx/camera/video/VideoRecordEvent;Z)V

    :goto_5
    if-eqz p2, :cond_c

    iget-object p2, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-ne p2, p1, :cond_c

    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->t:Z

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->n()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->pause()V

    :cond_b
    iget-object p1, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->pause()V

    iget-object p1, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    move-object p2, p1

    check-cast p2, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object p2, p2, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->k()Landroidx/camera/video/RecordingStats;

    move-result-object p0

    new-instance v0, Landroidx/camera/video/VideoRecordEvent$Pause;

    invoke-direct {v0, p2, p0}, Landroidx/camera/video/VideoRecordEvent;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)V

    invoke-virtual {p1, v0, v9}, Landroidx/camera/video/Recorder$RecordingRecord;->h(Landroidx/camera/video/VideoRecordEvent;Z)V

    :cond_c
    return-void

    :cond_d
    const-string p0, "Attempted to start a new recording while another was in progress."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final G(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V
    .locals 2

    iget-object p5, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-ne p5, p1, :cond_4

    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->t:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->t:Z

    iput p4, p0, Landroidx/camera/video/Recorder;->W:I

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->Y:Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    invoke-virtual {p1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->c()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->a()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p1, p2, p3}, Landroidx/camera/video/internal/encoder/Encoder;->b(J)V

    :cond_1
    iget-object p1, p0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    :cond_2
    iget-object p1, p0, Landroidx/camera/video/Recorder;->b0:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object p4, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    iget-object p5, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    if-eq p1, p4, :cond_3

    new-instance p1, Lhn0;

    const/16 p4, 0xd

    invoke-direct {p1, p5, p4}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p4

    new-instance p5, Laa0;

    const/16 v0, 0x14

    iget-object v1, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    invoke-direct {p5, v1, p1, v0}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x3e8

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, p5, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/Recorder;->c0:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_3
    invoke-static {p5}, Landroidx/camera/video/Recorder;->r(Landroidx/camera/video/internal/encoder/Encoder;)V

    :goto_1
    iget-object p0, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p0, p2, p3}, Landroidx/camera/video/internal/encoder/Encoder;->b(J)V

    :cond_4
    return-void
.end method

.method public final H(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 4

    iget-object v0, p0, Landroidx/camera/video/Recorder;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->b(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    new-instance v1, Landroidx/camera/video/d;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroidx/camera/video/d;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    new-instance p2, Landroidx/camera/video/d;

    invoke-direct {p2, p0, p1, v2}, Landroidx/camera/video/d;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V

    invoke-static {p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->b(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/video/Recorder$6;

    invoke-direct {p2, p0}, Landroidx/camera/video/Recorder$6;-><init>(Landroidx/camera/video/Recorder;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final I(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v1, v1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->k()Landroidx/camera/video/RecordingStats;

    move-result-object p0

    new-instance v2, Landroidx/camera/video/VideoRecordEvent$Status;

    invoke-direct {v2, v1, p0}, Landroidx/camera/video/VideoRecordEvent;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)V

    invoke-virtual {v0, v2, p1}, Landroidx/camera/video/Recorder$RecordingRecord;->h(Landroidx/camera/video/VideoRecordEvent;Z)V

    :cond_0
    return-void
.end method

.method public final J(Landroidx/camera/video/Recorder$State;)V
    .locals 3

    sget-object v0, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/camera/video/Recorder;->n0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    iget v0, p0, Landroidx/camera/video/Recorder;->o:I

    invoke-static {p1}, Landroidx/camera/video/Recorder;->m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/video/Recorder;->u:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    sget-object v2, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    new-instance v2, Landroidx/camera/video/AutoValue_StreamInfo;

    invoke-direct {v2, v0, p1, v1}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/StateObservable;->f(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "Invalid state transition. State is not a valid non-pending state while in a pending state: "

    invoke-static {p1, p0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Can only updated non-pending state from a pending state, but state is "

    iget-object p0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {p0, p1}, Lbm;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final K(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-wide v3, v1, Landroidx/camera/video/Recorder;->N:J

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-wide v3, v1, Landroidx/camera/video/Recorder;->U:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    const/4 v9, 0x0

    const-string v10, "Recorder"

    const/4 v11, 0x3

    if-eqz v0, :cond_0

    cmp-long v0, v5, v3

    if-lez v0, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, v1, Landroidx/camera/video/Recorder;->U:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Reach file size limit %d > %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v11, v10}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v0, 0x2

    invoke-virtual {v1, v2, v0, v9}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->y0()J

    move-result-wide v3

    iget-wide v12, v1, Landroidx/camera/video/Recorder;->R:J

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v0, v12, v14

    const/16 v16, 0x1

    if-nez v0, :cond_1

    iput-wide v3, v1, Landroidx/camera/video/Recorder;->R:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v7, v1, Landroidx/camera/video/Recorder;->R:J

    invoke-static {v7, v8}, Landroidx/camera/video/internal/DebugUtils;->b(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "First audio time: %d (%s)"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v11, v10}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v7

    iget-wide v7, v1, Landroidx/camera/video/Recorder;->Q:J

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long v7, v3, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    iget-wide v12, v1, Landroidx/camera/video/Recorder;->T:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    move/from16 v12, v16

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    const-string v13, "There should be a previous data for adjusting the duration."

    invoke-static {v13, v12}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-wide v12, v1, Landroidx/camera/video/Recorder;->T:J

    sub-long v12, v3, v12

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    add-long/2addr v12, v7

    iget-wide v7, v1, Landroidx/camera/video/Recorder;->V:J

    cmp-long v0, v7, v17

    if-eqz v0, :cond_3

    cmp-long v0, v12, v7

    if-lez v0, :cond_3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, v1, Landroidx/camera/video/Recorder;->V:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Audio data reaches duration limit %d > %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v11, v10}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/16 v0, 0x9

    invoke-virtual {v1, v2, v0, v9}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void

    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, v1, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    iget-object v7, v1, Landroidx/camera/video/Recorder;->y:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->N()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->Y()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide v5, v1, Landroidx/camera/video/Recorder;->N:J

    iget-wide v5, v1, Landroidx/camera/video/Recorder;->O:J

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, v1, Landroidx/camera/video/Recorder;->O:J

    iput-wide v3, v1, Landroidx/camera/video/Recorder;->T:J

    return-void

    :catch_0
    move-exception v0

    iget-object v3, v1, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Landroidx/camera/video/internal/OutputStorage;->a()J

    move-result-wide v3

    iget-wide v5, v1, Landroidx/camera/video/Recorder;->k:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v11, v16

    :goto_2
    invoke-virtual {v1, v2, v11, v0}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void
.end method

.method public final L(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-wide v3, v1, Landroidx/camera/video/Recorder;->k:J

    iget-object v0, v1, Landroidx/camera/video/Recorder;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-wide v5, v1, Landroidx/camera/video/Recorder;->N:J

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-wide v5, v1, Landroidx/camera/video/Recorder;->U:J

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    const/4 v11, 0x0

    const-string v12, "Recorder"

    const/4 v13, 0x3

    if-eqz v0, :cond_0

    cmp-long v0, v7, v5

    if-lez v0, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, v1, Landroidx/camera/video/Recorder;->U:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Reach file size limit %d > %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v13, v12}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v0, 0x2

    invoke-virtual {v1, v2, v0, v11}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->y0()J

    move-result-wide v5

    iget-wide v14, v1, Landroidx/camera/video/Recorder;->Q:J

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v0, v14, v16

    const/16 v18, 0x1

    if-nez v0, :cond_1

    iput-wide v5, v1, Landroidx/camera/video/Recorder;->Q:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v14, v1, Landroidx/camera/video/Recorder;->Q:J

    invoke-static {v14, v15}, Landroidx/camera/video/internal/DebugUtils;->b(J)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v11, "First video time: %d (%s)"

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v13, v12}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-object v0, v12

    goto :goto_1

    :cond_1
    move-wide/from16 v19, v9

    iget-wide v9, v1, Landroidx/camera/video/Recorder;->R:J

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    sub-long v9, v5, v9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    iget-wide v14, v1, Landroidx/camera/video/Recorder;->S:J

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    move/from16 v14, v18

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    const-string v15, "There should be a previous data for adjusting the duration."

    invoke-static {v15, v14}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-wide v14, v1, Landroidx/camera/video/Recorder;->S:J

    sub-long v14, v5, v14

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    add-long/2addr v14, v9

    move-object v0, v12

    iget-wide v11, v1, Landroidx/camera/video/Recorder;->V:J

    cmp-long v17, v11, v19

    if-eqz v17, :cond_3

    cmp-long v11, v14, v11

    if-lez v11, :cond_3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Landroidx/camera/video/Recorder;->V:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Video data reaches duration limit %d > %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v13, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/16 v0, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void

    :cond_3
    :goto_1
    :try_start_0
    iget-object v11, v1, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    iget-object v12, v1, Landroidx/camera/video/Recorder;->z:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->N()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->Y()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v15

    invoke-virtual {v11, v12, v14, v15}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide v7, v1, Landroidx/camera/video/Recorder;->N:J

    iput-wide v9, v1, Landroidx/camera/video/Recorder;->P:J

    iput-wide v5, v1, Landroidx/camera/video/Recorder;->S:J

    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->c0()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/camera/video/Recorder;->I(Z)V

    iget-wide v5, v1, Landroidx/camera/video/Recorder;->k0:J

    cmp-long v5, v7, v5

    if-lez v5, :cond_5

    iget-object v5, v1, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/camera/video/internal/OutputStorage;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/camera/video/internal/utils/StorageUtil;->a(J)V

    invoke-static {v13, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Insufficient storage space. The available storage (%d bytes) is below the required threshold of %d bytes."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v13, v0}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void

    :cond_4
    sub-long/2addr v5, v3

    iput-wide v5, v1, Landroidx/camera/video/Recorder;->k0:J

    :cond_5
    return-void

    :catch_0
    move-exception v0

    iget-object v5, v1, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/camera/video/internal/OutputStorage;->a()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-gez v3, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v13, v18

    :goto_2
    invoke-virtual {v1, v2, v13, v0}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    return-void

    :cond_7
    const-string v0, "Video data comes before the track is added to MediaMuxer."

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    sget-object v0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/video/Recorder;->g(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method

.method public final b()Landroidx/camera/core/impl/Observable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder;->F:Landroidx/camera/core/impl/MutableStateObservable;

    return-object p0
.end method

.method public final c()Landroidx/camera/core/impl/Observable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    return-object p0
.end method

.method public final d(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 2

    new-instance v0, Landroidx/camera/video/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/video/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const/4 p0, 0x2

    :cond_0
    new-instance p2, Landroidx/camera/video/RecorderVideoCapabilities;

    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-direct {p2, p1, p0}, Landroidx/camera/video/RecorderVideoCapabilities;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;I)V

    return-object p2
.end method

.method public final f()Landroidx/camera/core/impl/Observable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder;->b:Landroidx/camera/core/impl/MutableStateObservable;

    return-object p0
.end method

.method public final g(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 7

    iget-object v1, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Recorder"

    iget-object v2, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    sget-object v2, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    if-ne v0, v2, :cond_0

    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lgr0;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lgr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 10

    iget-object v0, p1, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v6, "Recorder"

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :cond_0
    new-instance v0, Lhr0;

    invoke-direct {v0, p0}, Lhr0;-><init>(Landroidx/camera/video/Recorder;)V

    iget-object v7, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v7, v0}, Landroidx/camera/core/SurfaceRequest;->b(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    iget-object v0, p1, Landroidx/camera/core/SurfaceRequest;->b:Landroid/util/Size;

    iget-object v3, p1, Landroidx/camera/core/SurfaceRequest;->c:Landroidx/camera/core/DynamicRange;

    iget-object v4, p1, Landroidx/camera/core/SurfaceRequest;->e:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v4}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v4

    iget v5, p1, Landroidx/camera/core/SurfaceRequest;->g:I

    invoke-virtual {p0, v4, v5}, Landroidx/camera/video/Recorder;->e(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    move-result-object v4

    check-cast v4, Landroidx/camera/video/RecorderVideoCapabilities;

    invoke-virtual {v4, v3}, Landroidx/camera/video/RecorderVideoCapabilities;->e(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object v5

    const/4 v8, 0x0

    if-nez v5, :cond_1

    sget-object v5, Landroidx/camera/video/Quality;->g:Landroidx/camera/video/Quality;

    goto :goto_1

    :cond_1
    iget-object v5, v5, Landroidx/camera/video/CapabilitiesByQuality;->b:Ljava/util/TreeMap;

    sget-object v9, Landroidx/camera/core/internal/utils/SizeUtil;->a:Landroid/util/Size;

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v8

    :goto_0
    check-cast v5, Landroidx/camera/video/Quality;

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v5, Landroidx/camera/video/Quality;->g:Landroidx/camera/video/Quality;

    :goto_1
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v9, 0x3

    invoke-static {v9, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget-object v0, Landroidx/camera/video/Quality;->g:Landroidx/camera/video/Quality;

    if-eq v5, v0, :cond_7

    invoke-virtual {v4, v3}, Landroidx/camera/video/RecorderVideoCapabilities;->e(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v8

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Landroidx/camera/video/CapabilitiesByQuality;->a(Landroidx/camera/video/Quality;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroidx/camera/video/Recorder;->w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "Camera advertised available quality but did not produce EncoderProfiles  for advertised quality."

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/camera/video/Recorder;->w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v9, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->i0:Landroidx/camera/video/Recorder$SetupVideoTask;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    iget-boolean v4, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->d:Z

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->d:Z

    iget-object v4, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_9

    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v8, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_9
    :goto_4
    new-instance v0, Landroidx/camera/video/Recorder$SetupVideoTask;

    iget-boolean v4, p0, Landroidx/camera/video/Recorder;->l0:Z

    if-eqz p3, :cond_a

    sget v3, Landroidx/camera/video/Recorder;->t0:I

    :cond_a
    move-object v1, p0

    move-object v2, p1

    move v5, v3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/Recorder$SetupVideoTask;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;ZI)V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->i0:Landroidx/camera/video/Recorder$SetupVideoTask;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v9, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v1, p0, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession;->a()V

    iget-object v1, v1, Landroidx/camera/video/VideoEncoderSession;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v3, Landroidx/camera/video/g;

    invoke-direct {v3, v0, p1, p2}, Landroidx/camera/video/g;-><init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    invoke-interface {v1, v3, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final i(I)V
    .locals 11

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "Recorder"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v7}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/video/internal/OutputStorage;->a()J

    move-result-wide v7

    iget-wide v9, p0, Landroidx/camera/video/Recorder;->k:J

    cmp-long p1, v7, v9

    if-gez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Landroidx/camera/video/Recorder;->O:J

    cmp-long p1, v7, v4

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :cond_2
    :goto_0
    iput-object v6, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    move p1, v1

    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->M:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder$RecordingRecord;->c(Landroid/net/Uri;)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    check-cast v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v0, v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->k()Landroidx/camera/video/RecordingStats;

    move-result-object v1

    iget-object v7, p0, Landroidx/camera/video/Recorder;->M:Landroid/net/Uri;

    const-string v8, "OutputUri cannot be null."

    invoke-static {v7, v8}, Landroidx/core/util/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroidx/camera/video/AutoValue_OutputResults;

    invoke-direct {v8, v7}, Landroidx/camera/video/AutoValue_OutputResults;-><init>(Landroid/net/Uri;)V

    iget-object v7, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    const/4 v8, 0x0

    if-nez p1, :cond_5

    new-instance p1, Landroidx/camera/video/VideoRecordEvent$Finalize;

    invoke-direct {p1, v0, v1, v8}, Landroidx/camera/video/VideoRecordEvent$Finalize;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;I)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    move v9, v3

    goto :goto_2

    :cond_6
    move v9, v8

    :goto_2
    const-string v10, "An error type is required."

    invoke-static {v9, v10}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    new-instance v9, Landroidx/camera/video/VideoRecordEvent$Finalize;

    invoke-direct {v9, v0, v1, p1}, Landroidx/camera/video/VideoRecordEvent$Finalize;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;I)V

    move-object p1, v9

    :goto_3
    invoke-virtual {v7, p1, v3}, Landroidx/camera/video/Recorder$RecordingRecord;->h(Landroidx/camera/video/VideoRecordEvent;Z)V

    iget-object p1, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-object v6, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-boolean v8, p0, Landroidx/camera/video/Recorder;->t:Z

    iput-object v6, p0, Landroidx/camera/video/Recorder;->y:Ljava/lang/Integer;

    iput-object v6, p0, Landroidx/camera/video/Recorder;->z:Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->M:Landroid/net/Uri;

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->N:J

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->O:J

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->P:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/camera/video/Recorder;->Q:J

    iput-wide v0, p0, Landroidx/camera/video/Recorder;->R:J

    iput-wide v0, p0, Landroidx/camera/video/Recorder;->S:J

    iput-wide v0, p0, Landroidx/camera/video/Recorder;->T:J

    iput v3, p0, Landroidx/camera/video/Recorder;->W:I

    iput-object v6, p0, Landroidx/camera/video/Recorder;->Z:Ljava/lang/Throwable;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/camera/video/Recorder;->h0:D

    iput-object v6, p0, Landroidx/camera/video/Recorder;->j0:Landroidx/camera/video/internal/OutputStorage;

    iput-wide v0, p0, Landroidx/camera/video/Recorder;->k0:J

    iget-object v0, p0, Landroidx/camera/video/Recorder;->Y:Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    :goto_4
    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->c()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->a()Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v6}, Landroidx/camera/video/Recorder;->z(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x4

    if-eq v0, v1, :cond_9

    if-eq v0, v2, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    goto :goto_5

    :cond_8
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->y(Landroidx/camera/video/Recorder$AudioState;)V

    goto :goto_5

    :cond_9
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->IDLING:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->y(Landroidx/camera/video/Recorder$AudioState;)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/video/internal/audio/a;

    invoke-direct {v2, v0}, Landroidx/camera/video/internal/audio/a;-><init>(Landroidx/camera/video/internal/audio/AudioSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_5
    const-string v0, "Unexpected state on finalize of recording: "

    iget-object v1, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-ne v2, p1, :cond_16

    iget-object p1, v2, Landroidx/camera/video/Recorder$RecordingRecord;->h:Landroidx/camera/core/impl/MutableStateObservable;

    iget-object v2, p1, Landroidx/camera/core/impl/StateObservable;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/util/HashSet;

    iget-object v7, p1, Landroidx/camera/core/impl/StateObservable;->e:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/Observable$Observer;

    invoke-virtual {p1, v7}, Landroidx/camera/core/impl/StateObservable;->c(Landroidx/camera/core/impl/Observable$Observer;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_10

    :cond_a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v6, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object p1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    move v0, v3

    move-object v2, v6

    move p1, v8

    move v3, p1

    :goto_7
    move v4, v3

    goto/16 :goto_e

    :pswitch_1
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->j:Z

    if-eqz p1, :cond_c

    iput-object v6, p0, Landroidx/camera/video/Recorder;->D:Landroid/view/Surface;

    iget-object p1, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_8

    :cond_b
    move v3, v8

    :goto_8
    sget-object p1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    move-object v2, v6

    move p1, v8

    move v0, p1

    :goto_9
    move v4, v0

    goto/16 :goto_e

    :catchall_1
    move-exception p0

    goto/16 :goto_11

    :cond_c
    sget-object p1, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    :goto_a
    move-object v2, v6

    move p1, v8

    move v0, p1

    :goto_b
    move v3, v0

    goto :goto_7

    :pswitch_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_3
    move p1, v3

    goto :goto_c

    :pswitch_4
    move p1, v8

    :goto_c
    iget-object v0, p0, Landroidx/camera/video/Recorder;->b0:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v2, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iput-object v6, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    sget-object v2, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    move-object v2, v0

    move v0, v8

    move v3, v0

    goto :goto_e

    :cond_d
    iget-boolean v0, p0, Landroidx/camera/video/Recorder;->j:Z

    if-eqz v0, :cond_f

    iput-object v6, p0, Landroidx/camera/video/Recorder;->D:Landroid/view/Surface;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_d

    :cond_e
    move v3, v8

    :goto_d
    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->J(Landroidx/camera/video/Recorder$State;)V

    move-object v2, v6

    move v0, v8

    goto :goto_9

    :cond_f
    iget-object v0, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->q(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;

    move-result-object v0

    move-object v2, v6

    move v3, v8

    move v4, v3

    move-object v6, v0

    move v0, v4

    goto :goto_e

    :cond_10
    move-object v2, v6

    move v0, v8

    goto :goto_b

    :goto_e
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_11

    iget-object p1, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->B:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {p0, p1, v0, v8}, Landroidx/camera/video/Recorder;->h(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    goto :goto_f

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->v()V

    goto :goto_f

    :cond_12
    if-eqz v6, :cond_14

    iget-boolean v0, p0, Landroidx/camera/video/Recorder;->j:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, v6, p1}, Landroidx/camera/video/Recorder;->F(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    goto :goto_f

    :cond_13
    const-string p0, "Attempt to start a pending recording while the Recorder is waiting for a new surface request."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {p0, v2, v4}, Landroidx/camera/video/Recorder;->j(Landroidx/camera/video/Recorder$RecordingRecord;I)V

    :cond_15
    :goto_f
    return-void

    :goto_10
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Active recording did not match finalized recording on finalize."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :goto_11
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_17
    const-string p0, "Attempted to finalize in-progress recording, but no recording is in progress."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Landroidx/camera/video/Recorder$RecordingRecord;I)V
    .locals 9

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->c(Landroid/net/Uri;)V

    move-object v1, p1

    check-cast v1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v1, v1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    iget-object v8, p0, Landroidx/camera/video/Recorder;->Z:Ljava/lang/Throwable;

    sget-object p0, Landroidx/camera/video/AudioStats;->a:Ljava/util/Set;

    new-instance v2, Landroidx/camera/video/AutoValue_AudioStats;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/camera/video/AutoValue_AudioStats;-><init>(IDJLjava/lang/Throwable;)V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v3, v4, v2}, Landroidx/camera/video/RecordingStats;->a(JJLandroidx/camera/video/AudioStats;)Landroidx/camera/video/RecordingStats;

    move-result-object p0

    const-string v2, "OutputUri cannot be null."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/camera/video/AutoValue_OutputResults;

    invoke-direct {v2, v0}, Landroidx/camera/video/AutoValue_OutputResults;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "An error type is required."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    new-instance v2, Landroidx/camera/video/VideoRecordEvent$Finalize;

    invoke-direct {v2, v1, p0, p2}, Landroidx/camera/video/VideoRecordEvent$Finalize;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;I)V

    invoke-virtual {p1, v2, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->h(Landroidx/camera/video/VideoRecordEvent;Z)V

    return-void
.end method

.method public final k()Landroidx/camera/video/RecordingStats;
    .locals 14

    iget-wide v0, p0, Landroidx/camera/video/Recorder;->P:J

    iget-wide v2, p0, Landroidx/camera/video/Recorder;->N:J

    iget-object v4, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v6, 0x5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v7, 0x4

    if-eq v5, v7, :cond_5

    if-ne v5, v6, :cond_0

    :goto_0
    move v8, v7

    goto :goto_2

    :cond_0
    const-string p0, "Invalid internal audio state: "

    invoke-static {v4, p0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v4, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v4, :cond_3

    iget-object v4, v4, Landroidx/camera/video/Recorder$RecordingRecord;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    move v8, v6

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Landroidx/camera/video/Recorder;->a0:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v13, p0, Landroidx/camera/video/Recorder;->Z:Ljava/lang/Throwable;

    iget-wide v9, p0, Landroidx/camera/video/Recorder;->h0:D

    iget-wide v11, p0, Landroidx/camera/video/Recorder;->O:J

    sget-object p0, Landroidx/camera/video/AudioStats;->a:Ljava/util/Set;

    new-instance v7, Landroidx/camera/video/AutoValue_AudioStats;

    invoke-direct/range {v7 .. v13}, Landroidx/camera/video/AutoValue_AudioStats;-><init>(IDJLjava/lang/Throwable;)V

    invoke-static {v0, v1, v2, v3, v7}, Landroidx/camera/video/RecordingStats;->a(JJLandroidx/camera/video/AudioStats;)Landroidx/camera/video/RecordingStats;

    move-result-object p0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-object p0, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder;->F:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-static {p0}, Landroidx/camera/video/Recorder;->l(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/MediaSpec;

    check-cast p0, Landroidx/camera/video/AutoValue_MediaSpec;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_MediaSpec;->b:Landroidx/camera/video/AudioSpec;

    check-cast p0, Landroidx/camera/video/AutoValue_AudioSpec;

    iget p0, p0, Landroidx/camera/video/AutoValue_AudioSpec;->g:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;
    .locals 5

    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-eqz v0, :cond_2

    iput-object v0, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v2, v0, Landroidx/camera/video/Recorder$RecordingRecord;->h:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/video/Recorder$7;

    invoke-direct {v4, p0}, Landroidx/camera/video/Recorder$7;-><init>(Landroidx/camera/video/Recorder;)V

    invoke-virtual {v2, v3, v4}, Landroidx/camera/core/impl/StateObservable;->b(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    iput-object v1, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/camera/video/Recorder$State;->PAUSED:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    return-object v0

    :cond_1
    sget-object p1, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    return-object v0

    :cond_2
    const-string p0, "Pending recording should exist when in a PENDING state."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    const-string p0, "Cannot make pending recording active because another recording is already active."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-object v1

    :cond_4
    const-string p0, "makePendingRecordingActiveLocked() can only be called from a pending state."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V
    .locals 10

    const-string v0, "In-progress recording error occurred while in unexpected state: "

    iget-object v1, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_0
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-ne p1, v0, :cond_1

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const-wide/16 v6, -0x1

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroidx/camera/video/Recorder;->G(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Internal error occurred for recording but it is not the active recording."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_2
    move-object v4, p0

    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v4, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const-string p0, "Internal error occurred on recording that is not the current in-progress recording."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Releasing audio source: 0x%x"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x3

    const-string v1, "Recorder"

    invoke-static {p0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance p0, Ls3;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v1, Landroidx/camera/video/Recorder$2;

    invoke-direct {v1, v0}, Landroidx/camera/video/Recorder$2;-><init>(Landroidx/camera/video/internal/audio/AudioSource;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    const-string p0, "Cannot release null audio source."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Z)V
    .locals 12

    const-string v0, "In-progress recording shouldn\'t be null when in state "

    iget-object v1, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    :goto_0
    move v3, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-ne v0, v2, :cond_1

    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "In-progress recording does not match the active recording. Unable to reset encoder."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_3
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->J(Landroidx/camera/video/Recorder$State;)V

    :goto_2
    :pswitch_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->w()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->v()V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    const-wide/16 v7, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroidx/camera/video/Recorder;->G(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    :cond_4
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v0, :cond_0

    const-string v0, "Recorder"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->K:Landroidx/camera/video/internal/encoder/f;

    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->t()V

    :cond_1
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->y(Landroidx/camera/video/Recorder$AudioState;)V

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->w()V

    return-void
.end method

.method public final w()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "Recorder"

    const/4 v2, 0x3

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->g0:Landroidx/camera/video/VideoEncoderSession;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/camera/video/VideoEncoderSession;->d:Landroidx/camera/video/internal/encoder/Encoder;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    const-string v0, "Recorder"

    iget-object v4, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->g0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->b()V

    iput-object v3, p0, Landroidx/camera/video/Recorder;->g0:Landroidx/camera/video/VideoEncoderSession;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    iput-object v3, p0, Landroidx/camera/video/Recorder;->I:Landroidx/camera/video/internal/encoder/f;

    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->A(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    const-string v0, "Recorder"

    iget-object v3, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->a()V

    iget-object v0, v0, Landroidx/camera/video/VideoEncoderSession;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v2, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :pswitch_1
    sget-object v2, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->J(Landroidx/camera/video/Recorder$State;)V

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->d0:Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->B:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/camera/video/Recorder;->h(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final x()V
    .locals 2

    sget-object v0, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/Recorder;->n:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    return-void

    :cond_0
    const-string v0, "Cannot restore non-pending state when in state "

    iget-object p0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {p0, v0}, Lbm;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final y(Landroidx/camera/video/Recorder$AudioState;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "Recorder"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iput-object p1, p0, Landroidx/camera/video/Recorder;->L:Landroidx/camera/video/Recorder$AudioState;

    return-void
.end method

.method public final z(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 4

    const-string v0, "Recorder"

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iput-object p1, p0, Landroidx/camera/video/Recorder;->u:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    iget v2, p0, Landroidx/camera/video/Recorder;->o:I

    iget-object p0, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {p0}, Landroidx/camera/video/Recorder;->m(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object p0

    sget-object v3, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    new-instance v3, Landroidx/camera/video/AutoValue_StreamInfo;

    invoke-direct {v3, v2, p0, p1}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/StateObservable;->f(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
