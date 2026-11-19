.class Landroidx/media3/session/PlayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/PlayerInfo$Builder;,
        Landroidx/media3/session/PlayerInfo$InProcessBinder;,
        Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    }
.end annotation


# static fields
.field public static final H:Landroidx/media3/session/PlayerInfo;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;

.field public static final R:Ljava/lang/String;

.field public static final S:Ljava/lang/String;

.field public static final T:Ljava/lang/String;

.field public static final U:Ljava/lang/String;

.field public static final V:Ljava/lang/String;

.field public static final W:Ljava/lang/String;

.field public static final X:Ljava/lang/String;

.field public static final Y:Ljava/lang/String;

.field public static final Z:Ljava/lang/String;

.field public static final a0:Ljava/lang/String;

.field public static final b0:Ljava/lang/String;

.field public static final c0:Ljava/lang/String;

.field public static final d0:Ljava/lang/String;

.field public static final e0:Ljava/lang/String;

.field public static final f0:Ljava/lang/String;

.field public static final g0:Ljava/lang/String;

.field public static final h0:Ljava/lang/String;

.field public static final i0:Ljava/lang/String;

.field public static final j0:Ljava/lang/String;

.field public static final k0:Ljava/lang/String;

.field public static final l0:Ljava/lang/String;

.field public static final m0:Ljava/lang/String;

.field public static final n0:Ljava/lang/String;

.field public static final o0:Ljava/lang/String;

.field public static final p0:Ljava/lang/String;


# instance fields
.field public final A:I

.field public final B:Landroidx/media3/common/MediaMetadata;

.field public final C:J

.field public final D:J

.field public final E:J

.field public final F:Landroidx/media3/common/Tracks;

.field public final G:Landroidx/media3/common/TrackSelectionParameters;

.field public final a:Landroidx/media3/common/PlaybackException;

.field public final b:I

.field public final c:Landroidx/media3/session/SessionPositionInfo;

.field public final d:Landroidx/media3/common/Player$PositionInfo;

.field public final e:Landroidx/media3/common/Player$PositionInfo;

.field public final f:I

.field public final g:Landroidx/media3/common/PlaybackParameters;

.field public final h:I

.field public final i:Z

.field public final j:Landroidx/media3/common/Timeline;

.field public final k:I

.field public final l:Landroidx/media3/common/VideoSize;

.field public final m:Landroidx/media3/common/MediaMetadata;

.field public final n:F

.field public final o:F

.field public final p:I

.field public final q:Landroidx/media3/common/AudioAttributes;

.field public final r:Landroidx/media3/common/text/CueGroup;

.field public final s:Landroidx/media3/common/DeviceInfo;

.field public final t:I

.field public final u:Z

.field public final v:Z

.field public final w:I

.field public final x:Z

.field public final y:Z

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v0, Landroidx/media3/session/PlayerInfo;

    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->l:Landroidx/media3/session/SessionPositionInfo;

    sget-object v4, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    sget-object v7, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    sget-object v10, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    sget-object v11, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    sget-object v13, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    sget-object v16, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    sget-object v18, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    sget-object v19, Landroidx/media3/common/DeviceInfo;->e:Landroidx/media3/common/DeviceInfo;

    sget-object v35, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    sget-object v36, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v29, 0x1388

    const-wide/16 v31, 0x3a98

    const-wide/16 v33, 0xbb8

    move-object v5, v4

    move-object/from16 v28, v13

    invoke-direct/range {v0 .. v36}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FFLandroidx/media3/common/AudioAttributes;ILandroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    sput-object v0, Landroidx/media3/session/PlayerInfo;->H:Landroidx/media3/session/PlayerInfo;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->I:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->J:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->K:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->L:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->M:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->N:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->O:Ljava/lang/String;

    const/16 v0, 0x21

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->P:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->Q:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->R:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->S:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->T:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->U:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->V:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->W:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->X:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->Y:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->Z:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->a0:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->b0:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->c0:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->d0:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->e0:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->f0:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->g0:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->h0:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->i0:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->j0:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->k0:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->l0:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->m0:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->n0:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->o0:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->p0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FFLandroidx/media3/common/AudioAttributes;ILandroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    iput p2, p0, Landroidx/media3/session/PlayerInfo;->b:I

    iput-object p3, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iput-object p4, p0, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    iput-object p5, p0, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    iput p6, p0, Landroidx/media3/session/PlayerInfo;->f:I

    iput-object p7, p0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    iput p8, p0, Landroidx/media3/session/PlayerInfo;->h:I

    iput-boolean p9, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    iput-object p10, p0, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    iput-object p11, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    iput p12, p0, Landroidx/media3/session/PlayerInfo;->k:I

    iput-object p13, p0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    iput p14, p0, Landroidx/media3/session/PlayerInfo;->n:F

    iput p15, p0, Landroidx/media3/session/PlayerInfo;->o:F

    move/from16 p1, p17

    iput p1, p0, Landroidx/media3/session/PlayerInfo;->p:I

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    move/from16 p1, p20

    iput p1, p0, Landroidx/media3/session/PlayerInfo;->t:I

    move/from16 p1, p21

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    move/from16 p1, p23

    iput p1, p0, Landroidx/media3/session/PlayerInfo;->w:I

    move/from16 p1, p24

    iput p1, p0, Landroidx/media3/session/PlayerInfo;->z:I

    move/from16 p1, p25

    iput p1, p0, Landroidx/media3/session/PlayerInfo;->A:I

    move/from16 p1, p26

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo;->x:Z

    move/from16 p1, p27

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo;->y:Z

    move-object/from16 p1, p28

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    move-wide/from16 p1, p29

    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo;->C:J

    move-wide/from16 p1, p31

    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo;->D:J

    move-wide/from16 p1, p33

    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo;->E:J

    move-object/from16 p1, p35

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    move-object/from16 p1, p36

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method

.method public static h(ILandroid/os/Bundle;)Landroidx/media3/session/PlayerInfo;
    .locals 43

    move/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/media3/session/PlayerInfo;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    instance-of v3, v2, Landroidx/media3/session/PlayerInfo$InProcessBinder;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/media3/session/PlayerInfo$InProcessBinder;

    iget-object v0, v2, Landroidx/media3/session/PlayerInfo$InProcessBinder;->a:Landroidx/media3/session/PlayerInfo;

    return-object v0

    :cond_0
    sget-object v2, Landroidx/media3/session/PlayerInfo;->a0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move-object v7, v3

    goto/16 :goto_4

    :cond_1
    new-instance v5, Landroidx/media3/common/PlaybackException;

    sget-object v6, Landroidx/media3/common/PlaybackException;->g:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/PlaybackException;->h:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroidx/media3/common/PlaybackException;->i:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    :try_start_0
    const-class v9, Landroidx/media3/common/PlaybackException;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v4, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object v7, v3

    goto :goto_1

    :catchall_0
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    sget-object v3, Landroidx/media3/common/PlaybackException;->e:Ljava/lang/String;

    const/16 v8, 0x3e8

    invoke-virtual {v2, v3, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v3, Landroidx/media3/common/PlaybackException;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    :goto_2
    move-object v9, v3

    goto :goto_3

    :cond_4
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_2

    :goto_3
    sget-object v3, Landroidx/media3/common/PlaybackException;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    move-object v7, v5

    :goto_4
    sget-object v2, Landroidx/media3/session/PlayerInfo;->c0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v2, Landroidx/media3/session/PlayerInfo;->b0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->l:Landroidx/media3/session/SessionPositionInfo;

    :goto_5
    move-object v9, v2

    goto :goto_6

    :cond_5
    invoke-static {v0, v2}, Landroidx/media3/session/SessionPositionInfo;->b(ILandroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v2

    goto :goto_5

    :goto_6
    sget-object v2, Landroidx/media3/session/PlayerInfo;->d0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    :goto_7
    move-object v10, v2

    goto :goto_8

    :cond_6
    invoke-static {v0, v2}, Landroidx/media3/common/Player$PositionInfo;->c(ILandroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v2

    goto :goto_7

    :goto_8
    sget-object v2, Landroidx/media3/session/PlayerInfo;->e0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_7

    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    :goto_9
    move-object v11, v2

    goto :goto_a

    :cond_7
    invoke-static {v0, v2}, Landroidx/media3/common/Player$PositionInfo;->c(ILandroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v2

    goto :goto_9

    :goto_a
    sget-object v2, Landroidx/media3/session/PlayerInfo;->f0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v2, Landroidx/media3/session/PlayerInfo;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_8

    sget-object v2, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    move-object v13, v2

    goto :goto_b

    :cond_8
    sget-object v6, Landroidx/media3/common/PlaybackParameters;->e:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    sget-object v13, Landroidx/media3/common/PlaybackParameters;->f:Ljava/lang/String;

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    new-instance v13, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v13, v6, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    :goto_b
    sget-object v2, Landroidx/media3/session/PlayerInfo;->J:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    sget-object v2, Landroidx/media3/session/PlayerInfo;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    sget-object v2, Landroidx/media3/session/PlayerInfo;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v2, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    goto :goto_f

    :cond_9
    new-instance v6, Lnw;

    invoke-direct {v6, v0, v4}, Lnw;-><init>(II)V

    sget-object v4, Landroidx/media3/common/Timeline;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_c

    :cond_a
    invoke-static {v4}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/media3/common/util/BundleCollectionUtil;->a(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    :goto_c
    new-instance v6, Lnw;

    const/4 v5, 0x2

    invoke-direct {v6, v0, v5}, Lnw;-><init>(II)V

    sget-object v5, Landroidx/media3/common/Timeline;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    goto :goto_d

    :cond_b
    invoke-static {v5}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/media3/common/util/BundleCollectionUtil;->a(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    :goto_d
    sget-object v6, Landroidx/media3/common/Timeline;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    new-instance v6, Landroidx/media3/common/Timeline$RemotableTimeline;

    if-nez v2, :cond_d

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    new-array v3, v2, [I

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_c

    aput v3, v19, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_c
    move-object/from16 v2, v19

    :cond_d
    invoke-direct {v6, v4, v5, v2}, Landroidx/media3/common/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    move-object v2, v6

    :goto_f
    sget-object v3, Landroidx/media3/session/PlayerInfo;->n0:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, Landroidx/media3/session/PlayerInfo;->M:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_e

    sget-object v5, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    move-object/from16 v19, v2

    move/from16 v20, v3

    goto :goto_10

    :cond_e
    sget-object v6, Landroidx/media3/common/VideoSize;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v19, v2

    sget-object v2, Landroidx/media3/common/VideoSize;->f:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Landroidx/media3/common/VideoSize;->g:Ljava/lang/String;

    move/from16 v20, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    new-instance v5, Landroidx/media3/common/VideoSize;

    invoke-direct {v5, v6, v2, v4}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    :goto_10
    sget-object v2, Landroidx/media3/session/PlayerInfo;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_f

    sget-object v2, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    goto :goto_11

    :cond_f
    invoke-static {v0, v2}, Landroidx/media3/common/MediaMetadata;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    :goto_11
    sget-object v3, Landroidx/media3/session/PlayerInfo;->O:Ljava/lang/String;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    sget-object v6, Landroidx/media3/session/PlayerInfo;->P:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v21

    sget-object v4, Landroidx/media3/session/PlayerInfo;->p0:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    sget-object v4, Landroidx/media3/session/PlayerInfo;->Q:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_10

    sget-object v4, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    :goto_12
    move-object/from16 v22, v4

    goto :goto_13

    :cond_10
    invoke-static {v4}, Landroidx/media3/common/AudioAttributes;->a(Landroid/os/Bundle;)Landroidx/media3/common/AudioAttributes;

    move-result-object v4

    goto :goto_12

    :goto_13
    sget-object v4, Landroidx/media3/session/PlayerInfo;->g0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_11

    sget-object v4, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    move-object/from16 v17, v2

    move/from16 v24, v3

    move-object/from16 v25, v5

    goto :goto_16

    :cond_11
    sget-object v6, Landroidx/media3/common/text/CueGroup;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_12

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move-object/from16 v17, v2

    move/from16 v24, v3

    move-object/from16 v25, v5

    goto :goto_15

    :cond_12
    sget-object v17, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    move-object/from16 v17, v2

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move/from16 v24, v3

    move-object/from16 v25, v5

    const/4 v3, 0x0

    :goto_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_13

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/media3/common/text/Cue;->b(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_13
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_15
    sget-object v2, Landroidx/media3/common/text/CueGroup;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Landroidx/media3/common/text/CueGroup;

    invoke-direct {v4, v6, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    :goto_16
    sget-object v2, Landroidx/media3/session/PlayerInfo;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_14

    sget-object v2, Landroidx/media3/common/DeviceInfo;->e:Landroidx/media3/common/DeviceInfo;

    move-object/from16 v26, v4

    goto :goto_19

    :cond_14
    sget-object v3, Landroidx/media3/common/DeviceInfo;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, Landroidx/media3/common/DeviceInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v26, v4

    sget-object v4, Landroidx/media3/common/DeviceInfo;->h:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v6, Landroidx/media3/common/DeviceInfo;->i:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v6, v3}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    iput v5, v6, Landroidx/media3/common/DeviceInfo$Builder;->b:I

    iput v4, v6, Landroidx/media3/common/DeviceInfo$Builder;->c:I

    iget v3, v6, Landroidx/media3/common/DeviceInfo$Builder;->a:I

    if-nez v3, :cond_16

    if-nez v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v4, 0x0

    goto :goto_18

    :cond_16
    :goto_17
    const/4 v4, 0x1

    :goto_18
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object v2, v6, Landroidx/media3/common/DeviceInfo$Builder;->d:Ljava/lang/String;

    invoke-virtual {v6}, Landroidx/media3/common/DeviceInfo$Builder;->a()Landroidx/media3/common/DeviceInfo;

    move-result-object v2

    :goto_19
    sget-object v3, Landroidx/media3/session/PlayerInfo;->S:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroidx/media3/session/PlayerInfo;->T:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    sget-object v4, Landroidx/media3/session/PlayerInfo;->U:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    sget-object v4, Landroidx/media3/session/PlayerInfo;->V:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    sget-object v4, Landroidx/media3/session/PlayerInfo;->W:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    sget-object v4, Landroidx/media3/session/PlayerInfo;->X:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    sget-object v4, Landroidx/media3/session/PlayerInfo;->Y:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sget-object v4, Landroidx/media3/session/PlayerInfo;->Z:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    sget-object v4, Landroidx/media3/session/PlayerInfo;->h0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_17

    sget-object v4, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    :goto_1a
    move-object/from16 v34, v4

    goto :goto_1b

    :cond_17
    invoke-static {v0, v4}, Landroidx/media3/common/MediaMetadata;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    goto :goto_1a

    :goto_1b
    const/4 v6, 0x4

    if-ge v0, v6, :cond_18

    const-wide/16 v4, 0x0

    :goto_1c
    move-object/from16 v16, v2

    goto :goto_1d

    :cond_18
    const-wide/16 v35, 0x1388

    move-wide/from16 v4, v35

    goto :goto_1c

    :goto_1d
    sget-object v2, Landroidx/media3/session/PlayerInfo;->i0:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v35

    if-ge v0, v6, :cond_19

    const-wide/16 v4, 0x0

    goto :goto_1e

    :cond_19
    const-wide/16 v4, 0x3a98

    :goto_1e
    sget-object v2, Landroidx/media3/session/PlayerInfo;->j0:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    if-ge v0, v6, :cond_1a

    move v0, v3

    const-wide/16 v2, 0x0

    goto :goto_1f

    :cond_1a
    const-wide/16 v37, 0xbb8

    move v0, v3

    move-wide/from16 v2, v37

    :goto_1f
    sget-object v6, Landroidx/media3/session/PlayerInfo;->k0:Ljava/lang/String;

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v39

    sget-object v2, Landroidx/media3/session/PlayerInfo;->m0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1b

    sget-object v2, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    move-object/from16 v41, v2

    goto :goto_21

    :cond_1b
    sget-object v3, Landroidx/media3/common/Tracks;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_20

    :cond_1c
    new-instance v3, Luh;

    const/16 v6, 0x11

    invoke-direct {v3, v6}, Luh;-><init>(I)V

    invoke-static {v3, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->a(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_20
    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-direct {v3, v2}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    move-object/from16 v41, v3

    :goto_21
    sget-object v2, Landroidx/media3/session/PlayerInfo;->l0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1d

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    :goto_22
    move-object/from16 v42, v1

    goto :goto_23

    :cond_1d
    invoke-static {v1}, Landroidx/media3/common/TrackSelectionParameters;->b(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    goto :goto_22

    :goto_23
    new-instance v6, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v18, v25

    move-object/from16 v25, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v18

    move-wide/from16 v37, v4

    move/from16 v18, v20

    move/from16 v20, v24

    move-object/from16 v24, v26

    move/from16 v26, v0

    invoke-direct/range {v6 .. v42}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FFLandroidx/media3/common/AudioAttributes;ILandroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v6
.end method


# virtual methods
.method public final a(IZ)Landroidx/media3/session/PlayerInfo;
    .locals 1

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->t:I

    iput-boolean p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->u:Z

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final b(IIZ)Landroidx/media3/session/PlayerInfo;
    .locals 1

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-boolean p3, v0, Landroidx/media3/session/PlayerInfo$Builder;->v:Z

    iput p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->w:I

    iput p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->z:I

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->x:Z

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->g:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->a:Landroidx/media3/common/PlaybackException;

    iput p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->A:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    if-eqz p1, :cond_0

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->z:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->x:Z

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroidx/media3/common/Timeline;I)Landroidx/media3/session/PlayerInfo;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    move-object/from16 v2, p1

    iput-object v2, v1, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/media3/session/PlayerInfo$Builder;->k:I

    new-instance v3, Landroidx/media3/session/SessionPositionInfo;

    new-instance v4, Landroidx/media3/common/Player$PositionInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-object v5, v2, Landroidx/media3/common/Player$PositionInfo;->a:Ljava/lang/Object;

    iget-object v7, v2, Landroidx/media3/common/Player$PositionInfo;->c:Landroidx/media3/common/MediaItem;

    iget-object v8, v2, Landroidx/media3/common/Player$PositionInfo;->d:Ljava/lang/Object;

    iget v9, v2, Landroidx/media3/common/Player$PositionInfo;->e:I

    iget-wide v10, v2, Landroidx/media3/common/Player$PositionInfo;->f:J

    iget-wide v12, v2, Landroidx/media3/common/Player$PositionInfo;->g:J

    iget v14, v2, Landroidx/media3/common/Player$PositionInfo;->h:I

    iget v15, v2, Landroidx/media3/common/Player$PositionInfo;->i:I

    move/from16 v6, p2

    invoke-direct/range {v4 .. v15}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    iget-boolean v5, v0, Landroidx/media3/session/SessionPositionInfo;->b:Z

    iget-wide v6, v0, Landroidx/media3/session/SessionPositionInfo;->c:J

    iget-wide v8, v0, Landroidx/media3/session/SessionPositionInfo;->d:J

    iget-wide v10, v0, Landroidx/media3/session/SessionPositionInfo;->e:J

    iget v12, v0, Landroidx/media3/session/SessionPositionInfo;->f:I

    iget-wide v13, v0, Landroidx/media3/session/SessionPositionInfo;->g:J

    move-object/from16 p1, v3

    iget-wide v2, v0, Landroidx/media3/session/SessionPositionInfo;->h:J

    move-wide v15, v2

    iget-wide v2, v0, Landroidx/media3/session/SessionPositionInfo;->i:J

    move-wide/from16 v17, v2

    iget-wide v2, v0, Landroidx/media3/session/SessionPositionInfo;->j:J

    move-wide/from16 v19, v2

    move-object/from16 v3, p1

    invoke-direct/range {v3 .. v20}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    iput-object v3, v1, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;
    .locals 7

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/SessionPositionInfo;->a(ZZ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, p0, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Player$PositionInfo;->b(ZZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->d:Landroidx/media3/common/Player$PositionInfo;

    iget-object v4, p0, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Player$PositionInfo;->b(ZZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->e:Landroidx/media3/common/Player$PositionInfo;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p2, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p2, p2, Landroidx/media3/common/Player$PositionInfo;->b:I

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v5, 0x0

    invoke-virtual {p0, p2, v1, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget v3, p2, Landroidx/media3/common/Timeline$Window;->n:I

    :goto_0
    iget v5, p2, Landroidx/media3/common/Timeline$Window;->o:I

    if-gt v3, v5, :cond_1

    new-instance v5, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {p0, v3, v5, v2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    iput v4, v5, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget p0, p2, Landroidx/media3/common/Timeline$Window;->n:I

    sub-int/2addr v5, p0

    iput v5, p2, Landroidx/media3/common/Timeline$Window;->o:I

    iput v4, p2, Landroidx/media3/common/Timeline$Window;->n:I

    new-instance p0, Landroidx/media3/common/Timeline$RemotableTimeline;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    filled-new-array {v4}, [I

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Landroidx/media3/common/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    :goto_1
    iput-object p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    if-nez v2, :cond_4

    :cond_3
    sget-object p0, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    iput-object p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    :cond_4
    :goto_2
    const/16 p0, 0x12

    invoke-virtual {p1, p0}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iput-object p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->m:Landroidx/media3/common/MediaMetadata;

    :cond_5
    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p2

    if-nez p2, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    iput p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    :cond_6
    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iput-object p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->q:Landroidx/media3/common/AudioAttributes;

    :cond_7
    const/16 p2, 0x1c

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    iput-object p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->r:Landroidx/media3/common/text/CueGroup;

    :cond_8
    const/16 p2, 0x17

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p2

    if-nez p2, :cond_9

    iput v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->t:I

    iput-boolean v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->u:Z

    :cond_9
    invoke-virtual {p1, p0}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iput-object p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->B:Landroidx/media3/common/MediaMetadata;

    :cond_a
    if-nez p3, :cond_b

    const/16 p0, 0x1e

    invoke-virtual {p1, p0}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    if-nez p0, :cond_c

    :cond_b
    sget-object p0, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    iput-object p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->F:Landroidx/media3/common/Tracks;

    :cond_c
    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroidx/media3/common/MediaItem;
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->b:I

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final j(I)Landroid/os/Bundle;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    if-eqz v3, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Landroidx/media3/common/PlaybackException;->e:Ljava/lang/String;

    iget v6, v3, Landroidx/media3/common/PlaybackException;->b:I

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v5, Landroidx/media3/common/PlaybackException;->f:Ljava/lang/String;

    iget-wide v6, v3, Landroidx/media3/common/PlaybackException;->c:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v5, Landroidx/media3/common/PlaybackException;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroidx/media3/common/PlaybackException;->j:Ljava/lang/String;

    iget-object v6, v3, Landroidx/media3/common/PlaybackException;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v5, Landroidx/media3/common/PlaybackException;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroidx/media3/common/PlaybackException;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v3, Landroidx/media3/session/PlayerInfo;->a0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->b:I

    if-eqz v3, :cond_2

    sget-object v4, Landroidx/media3/session/PlayerInfo;->c0:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    sget-object v5, Landroidx/media3/session/SessionPositionInfo;->l:Landroidx/media3/session/SessionPositionInfo;

    invoke-virtual {v3, v5}, Landroidx/media3/session/SessionPositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v5, Landroidx/media3/session/PlayerInfo;->b0:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroidx/media3/session/SessionPositionInfo;->c(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    if-lt v1, v4, :cond_5

    sget-object v5, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v5, v3}, Landroidx/media3/common/Player$PositionInfo;->a(Landroidx/media3/common/Player$PositionInfo;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    sget-object v5, Landroidx/media3/session/PlayerInfo;->d0:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroidx/media3/common/Player$PositionInfo;->d(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    if-lt v1, v4, :cond_7

    sget-object v4, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v4, v3}, Landroidx/media3/common/Player$PositionInfo;->a(Landroidx/media3/common/Player$PositionInfo;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    sget-object v4, Landroidx/media3/session/PlayerInfo;->e0:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroidx/media3/common/Player$PositionInfo;->d(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->f:I

    if-eqz v3, :cond_9

    sget-object v4, Landroidx/media3/session/PlayerInfo;->f0:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    sget-object v3, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v4, v3}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Landroidx/media3/common/PlaybackParameters;->e:Ljava/lang/String;

    iget v6, v4, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v5, Landroidx/media3/common/PlaybackParameters;->f:Ljava/lang/String;

    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v4, Landroidx/media3/session/PlayerInfo;->I:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->h:I

    if-eqz v3, :cond_b

    sget-object v4, Landroidx/media3/session/PlayerInfo;->J:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget-boolean v3, v0, Landroidx/media3/session/PlayerInfo;->i:Z

    if-eqz v3, :cond_c

    sget-object v4, Landroidx/media3/session/PlayerInfo;->K:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    sget-object v3, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    if-nez v3, :cond_2c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->o()I

    move-result v9

    new-instance v10, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move v11, v5

    :goto_0
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v11, v9, :cond_1a

    invoke-virtual {v4, v11, v10, v7, v8}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-wide/from16 v16, v7

    sget-object v7, Landroidx/media3/common/MediaItem;->g:Landroidx/media3/common/MediaItem;

    iget-object v8, v14, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    invoke-virtual {v7, v8}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Landroidx/media3/common/Timeline$Window;->t:Ljava/lang/String;

    iget-object v8, v14, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    invoke-virtual {v8, v1, v5}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    iget-wide v7, v14, Landroidx/media3/common/Timeline$Window;->e:J

    cmp-long v18, v7, v12

    if-eqz v18, :cond_e

    move-wide/from16 v18, v12

    sget-object v12, Landroidx/media3/common/Timeline$Window;->u:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_e
    move-wide/from16 v18, v12

    :goto_1
    iget-wide v7, v14, Landroidx/media3/common/Timeline$Window;->f:J

    cmp-long v12, v7, v18

    if-eqz v12, :cond_f

    sget-object v12, Landroidx/media3/common/Timeline$Window;->v:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    iget-wide v7, v14, Landroidx/media3/common/Timeline$Window;->g:J

    cmp-long v12, v7, v18

    if-eqz v12, :cond_10

    sget-object v12, Landroidx/media3/common/Timeline$Window;->w:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    iget-boolean v7, v14, Landroidx/media3/common/Timeline$Window;->h:Z

    if-eqz v7, :cond_11

    sget-object v8, Landroidx/media3/common/Timeline$Window;->x:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    iget-boolean v7, v14, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz v7, :cond_12

    sget-object v8, Landroidx/media3/common/Timeline$Window;->y:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_12
    iget-object v7, v14, Landroidx/media3/common/Timeline$Window;->j:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-eqz v7, :cond_13

    sget-object v8, Landroidx/media3/common/Timeline$Window;->z:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/media3/common/MediaItem$LiveConfiguration;->c()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v15, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_13
    iget-boolean v7, v14, Landroidx/media3/common/Timeline$Window;->k:Z

    if-eqz v7, :cond_14

    sget-object v8, Landroidx/media3/common/Timeline$Window;->A:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-wide v7, v14, Landroidx/media3/common/Timeline$Window;->l:J

    cmp-long v12, v7, v16

    if-eqz v12, :cond_15

    sget-object v12, Landroidx/media3/common/Timeline$Window;->B:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    iget-wide v7, v14, Landroidx/media3/common/Timeline$Window;->m:J

    cmp-long v12, v7, v18

    if-eqz v12, :cond_16

    sget-object v12, Landroidx/media3/common/Timeline$Window;->C:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_16
    iget v7, v14, Landroidx/media3/common/Timeline$Window;->n:I

    if-eqz v7, :cond_17

    sget-object v8, Landroidx/media3/common/Timeline$Window;->D:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    iget v7, v14, Landroidx/media3/common/Timeline$Window;->o:I

    if-eqz v7, :cond_18

    sget-object v8, Landroidx/media3/common/Timeline$Window;->E:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget-wide v7, v14, Landroidx/media3/common/Timeline$Window;->p:J

    cmp-long v12, v7, v16

    if-eqz v12, :cond_19

    sget-object v12, Landroidx/media3/common/Timeline$Window;->F:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_19
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v16

    goto/16 :goto_0

    :cond_1a
    move-wide/from16 v16, v7

    move-wide/from16 v18, v12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->h()I

    move-result v8

    new-instance v10, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move v11, v5

    :goto_2
    if-ge v11, v8, :cond_29

    invoke-virtual {v4, v11, v10, v5}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iget v14, v12, Landroidx/media3/common/Timeline$Period;->c:I

    if-eqz v14, :cond_1b

    sget-object v15, Landroidx/media3/common/Timeline$Period;->h:Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    iget-wide v14, v12, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v20, v14, v18

    if-eqz v20, :cond_1c

    move/from16 v20, v5

    sget-object v5, Landroidx/media3/common/Timeline$Period;->i:Ljava/lang/String;

    invoke-virtual {v13, v5, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_1c
    move/from16 v20, v5

    :goto_3
    iget-wide v14, v12, Landroidx/media3/common/Timeline$Period;->e:J

    cmp-long v5, v14, v16

    if-eqz v5, :cond_1d

    sget-object v5, Landroidx/media3/common/Timeline$Period;->j:Ljava/lang/String;

    invoke-virtual {v13, v5, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1d
    iget-boolean v5, v12, Landroidx/media3/common/Timeline$Period;->f:Z

    if-eqz v5, :cond_1e

    sget-object v14, Landroidx/media3/common/Timeline$Period;->k:Ljava/lang/String;

    invoke-virtual {v13, v14, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    iget-object v5, v12, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    sget-object v14, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v5, v14}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    sget-object v5, Landroidx/media3/common/Timeline$Period;->l:Ljava/lang/String;

    iget-object v12, v12, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v12, Landroidx/media3/common/AdPlaybackState;->f:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    move/from16 v21, v8

    array-length v8, v6

    move-object/from16 v22, v6

    move/from16 v6, v20

    :goto_4
    if-ge v6, v8, :cond_23

    move/from16 v23, v6

    aget-object v6, v22, v23

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v24, v8

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v25, v10

    sget-object v10, Landroidx/media3/common/AdPlaybackState$AdGroup;->m:Ljava/lang/String;

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    iget-wide v2, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:J

    invoke-virtual {v8, v10, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->n:Ljava/lang/String;

    iget v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->b:I

    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->t:Ljava/lang/String;

    iget v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->c:I

    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->o:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->d:[Landroid/net/Uri;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->u:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->e:[Landroidx/media3/common/MediaItem;

    move/from16 v28, v11

    array-length v11, v10

    move-object/from16 v29, v10

    move/from16 v10, v20

    :goto_5
    const/16 v30, 0x0

    if-ge v10, v11, :cond_20

    move/from16 v31, v10

    aget-object v10, v29, v31

    if-nez v10, :cond_1f

    move/from16 v32, v11

    :goto_6
    move-object/from16 v10, v30

    goto :goto_7

    :cond_1f
    move/from16 v32, v11

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v11}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v30

    goto :goto_6

    :goto_7
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v31, 0x1

    move/from16 v11, v32

    goto :goto_5

    :cond_20
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->p:Ljava/lang/String;

    iget-object v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->f:[I

    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->q:Ljava/lang/String;

    iget-object v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->g:[J

    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->r:Ljava/lang/String;

    iget-wide v10, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->j:J

    invoke-virtual {v8, v2, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->s:Ljava/lang/String;

    iget-boolean v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->k:Z

    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->v:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->h:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->x:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->i:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    array-length v11, v10

    move-object/from16 v29, v10

    move/from16 v10, v20

    :goto_8
    if-ge v10, v11, :cond_22

    move/from16 v31, v10

    aget-object v10, v29, v31

    if-nez v10, :cond_21

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v32, v11

    move-object/from16 v11, v30

    goto :goto_9

    :cond_21
    move/from16 v32, v11

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->d:Ljava/lang/String;

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    iget-wide v4, v10, Landroidx/media3/common/AdPlaybackState$SkipInfo;->a:J

    invoke-virtual {v11, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->e:Ljava/lang/String;

    iget-wide v4, v10, Landroidx/media3/common/AdPlaybackState$SkipInfo;->b:J

    invoke-virtual {v11, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->f:Ljava/lang/String;

    iget-object v4, v10, Landroidx/media3/common/AdPlaybackState$SkipInfo;->c:Ljava/lang/String;

    invoke-virtual {v11, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v31, 0x1

    move/from16 v1, p1

    move/from16 v11, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    goto :goto_8

    :cond_22
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->w:Ljava/lang/String;

    iget-boolean v2, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->l:Z

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v23, 0x1

    move/from16 v1, p1

    move/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v11, v28

    goto/16 :goto_4

    :cond_23
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v25, v10

    move/from16 v28, v11

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Landroidx/media3/common/AdPlaybackState;->i:Ljava/lang/String;

    invoke-virtual {v14, v1, v15}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_24
    iget-wide v1, v12, Landroidx/media3/common/AdPlaybackState;->c:J

    cmp-long v3, v1, v16

    if-eqz v3, :cond_25

    sget-object v3, Landroidx/media3/common/AdPlaybackState;->j:Ljava/lang/String;

    invoke-virtual {v14, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_25
    iget-wide v1, v12, Landroidx/media3/common/AdPlaybackState;->d:J

    cmp-long v3, v1, v18

    if-eqz v3, :cond_26

    sget-object v3, Landroidx/media3/common/AdPlaybackState;->k:Ljava/lang/String;

    invoke-virtual {v14, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_26
    iget v1, v12, Landroidx/media3/common/AdPlaybackState;->e:I

    if-eqz v1, :cond_27

    sget-object v2, Landroidx/media3/common/AdPlaybackState;->l:Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_27
    move-object/from16 v1, v34

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    :cond_28
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v33, v4

    move/from16 v21, v8

    move-object/from16 v25, v10

    move/from16 v28, v11

    :goto_a
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v28, 0x1

    move/from16 v1, p1

    move/from16 v5, v20

    move/from16 v8, v21

    move-object/from16 v10, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v33

    goto/16 :goto_2

    :cond_29
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v33, v4

    move/from16 v20, v5

    new-array v1, v9, [I

    move-object/from16 v2, v33

    const/4 v11, 0x1

    if-lez v9, :cond_2a

    invoke-virtual {v2, v11}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result v3

    aput v3, v1, v20

    :cond_2a
    move v3, v11

    :goto_b
    if-ge v3, v9, :cond_2b

    add-int/lit8 v4, v3, -0x1

    aget v4, v1, v4

    move/from16 v5, v20

    invoke-virtual {v2, v4, v5, v11}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x1

    const/16 v20, 0x0

    goto :goto_b

    :cond_2b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Landroidx/media3/common/Timeline;->b:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/BundleListRetriever;

    move-object/from16 v5, v27

    invoke-direct {v4, v5}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Landroidx/media3/common/Timeline;->c:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/BundleListRetriever;

    invoke-direct {v4, v7}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Landroidx/media3/common/Timeline;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v1, Landroidx/media3/session/PlayerInfo;->L:Ljava/lang/String;

    move-object/from16 v3, v26

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_c

    :cond_2c
    move-object v3, v2

    move-wide/from16 v16, v7

    :goto_c
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->k:I

    if-eqz v1, :cond_2d

    sget-object v2, Landroidx/media3/session/PlayerInfo;->n0:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2d
    sget-object v1, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2, v1}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_31

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v5, v2, Landroidx/media3/common/VideoSize;->a:I

    if-eqz v5, :cond_2e

    sget-object v6, Landroidx/media3/common/VideoSize;->e:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2e
    iget v5, v2, Landroidx/media3/common/VideoSize;->b:I

    if-eqz v5, :cond_2f

    sget-object v6, Landroidx/media3/common/VideoSize;->f:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2f
    iget v2, v2, Landroidx/media3/common/VideoSize;->c:F

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_30

    sget-object v5, Landroidx/media3/common/VideoSize;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_30
    sget-object v2, Landroidx/media3/session/PlayerInfo;->M:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_31
    sget-object v1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, Landroidx/media3/session/PlayerInfo;->N:Ljava/lang/String;

    move/from16 v5, p1

    invoke-virtual {v2, v5}, Landroidx/media3/common/MediaMetadata;->c(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_d

    :cond_32
    move/from16 v5, p1

    :goto_d
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->n:F

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_33

    sget-object v2, Landroidx/media3/session/PlayerInfo;->O:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_33
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->o:F

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_34

    sget-object v2, Landroidx/media3/session/PlayerInfo;->P:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_34
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->p:I

    if-eqz v1, :cond_35

    sget-object v2, Landroidx/media3/session/PlayerInfo;->p0:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_35
    sget-object v1, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2, v1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Landroidx/media3/session/PlayerInfo;->Q:Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_36
    sget-object v1, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Landroidx/media3/common/text/CueGroup;->e:Ljava/lang/String;

    iget-object v6, v2, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    sget-object v7, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v7, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v7}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v8, 0x0

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_38

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/text/Cue;

    iget-object v9, v9, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_37

    goto :goto_f

    :cond_37
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/text/Cue;

    invoke-virtual {v7, v9}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_38
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/google/common/collect/ImmutableList;->v(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/text/Cue;

    invoke-virtual {v8}, Landroidx/media3/common/text/Cue;->c()Landroid/os/Bundle;

    move-result-object v9

    iget-object v8, v8, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_39

    sget-object v10, Landroidx/media3/common/text/Cue;->w:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_39
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_3a
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v4, Landroidx/media3/common/text/CueGroup;->f:Ljava/lang/String;

    iget-wide v6, v2, Landroidx/media3/common/text/CueGroup;->b:J

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Landroidx/media3/session/PlayerInfo;->g0:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3b
    sget-object v1, Landroidx/media3/common/DeviceInfo;->e:Landroidx/media3/common/DeviceInfo;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v2, v1}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v4, v2, Landroidx/media3/common/DeviceInfo;->a:I

    if-eqz v4, :cond_3c

    sget-object v6, Landroidx/media3/common/DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3c
    iget v4, v2, Landroidx/media3/common/DeviceInfo;->b:I

    if-eqz v4, :cond_3d

    sget-object v6, Landroidx/media3/common/DeviceInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3d
    iget v4, v2, Landroidx/media3/common/DeviceInfo;->c:I

    if-eqz v4, :cond_3e

    sget-object v6, Landroidx/media3/common/DeviceInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3e
    iget-object v2, v2, Landroidx/media3/common/DeviceInfo;->d:Ljava/lang/String;

    if-eqz v2, :cond_3f

    sget-object v4, Landroidx/media3/common/DeviceInfo;->i:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    sget-object v2, Landroidx/media3/session/PlayerInfo;->R:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_40
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->t:I

    if-eqz v1, :cond_41

    sget-object v2, Landroidx/media3/session/PlayerInfo;->S:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_41
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    if-eqz v1, :cond_42

    sget-object v2, Landroidx/media3/session/PlayerInfo;->T:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_42
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->v:Z

    if-eqz v1, :cond_43

    sget-object v2, Landroidx/media3/session/PlayerInfo;->U:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_43
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->w:I

    const/4 v11, 0x1

    if-eq v1, v11, :cond_44

    sget-object v2, Landroidx/media3/session/PlayerInfo;->V:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_44
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->z:I

    if-eqz v1, :cond_45

    sget-object v2, Landroidx/media3/session/PlayerInfo;->W:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_45
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v11, 0x1

    if-eq v1, v11, :cond_46

    sget-object v2, Landroidx/media3/session/PlayerInfo;->X:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_46
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->x:Z

    if-eqz v1, :cond_47

    sget-object v2, Landroidx/media3/session/PlayerInfo;->Y:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_47
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->y:Z

    if-eqz v1, :cond_48

    sget-object v2, Landroidx/media3/session/PlayerInfo;->Z:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_48
    sget-object v1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    sget-object v1, Landroidx/media3/session/PlayerInfo;->h0:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroidx/media3/common/MediaMetadata;->c(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_49
    const/4 v1, 0x6

    if-ge v5, v1, :cond_4a

    move-wide/from16 v6, v16

    goto :goto_11

    :cond_4a
    const-wide/16 v6, 0x1388

    :goto_11
    iget-wide v8, v0, Landroidx/media3/session/PlayerInfo;->C:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_4b

    sget-object v2, Landroidx/media3/session/PlayerInfo;->i0:Ljava/lang/String;

    invoke-virtual {v3, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4b
    if-ge v5, v1, :cond_4c

    move-wide/from16 v6, v16

    goto :goto_12

    :cond_4c
    const-wide/16 v6, 0x3a98

    :goto_12
    iget-wide v8, v0, Landroidx/media3/session/PlayerInfo;->D:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_4d

    sget-object v2, Landroidx/media3/session/PlayerInfo;->j0:Ljava/lang/String;

    invoke-virtual {v3, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4d
    if-ge v5, v1, :cond_4e

    move-wide/from16 v7, v16

    goto :goto_13

    :cond_4e
    const-wide/16 v7, 0xbb8

    :goto_13
    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo;->E:J

    cmp-long v4, v1, v7

    if-eqz v4, :cond_4f

    sget-object v4, Landroidx/media3/session/PlayerInfo;->k0:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4f
    sget-object v1, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    invoke-virtual {v2, v1}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Landroidx/media3/common/Tracks;->c:Ljava/lang/String;

    iget-object v2, v2, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    new-instance v5, Luh;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Luh;-><init>(I)V

    invoke-static {v2, v5}, Landroidx/media3/common/util/BundleCollectionUtil;->b(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v2, Landroidx/media3/session/PlayerInfo;->m0:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_50
    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    sget-object v1, Landroidx/media3/session/PlayerInfo;->l0:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_51
    return-object v3
.end method
