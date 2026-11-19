.class public Landroidx/media3/session/PlayerInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/PlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A:I

.field public B:Landroidx/media3/common/MediaMetadata;

.field public C:J

.field public D:J

.field public E:J

.field public F:Landroidx/media3/common/Tracks;

.field public G:Landroidx/media3/common/TrackSelectionParameters;

.field public a:Landroidx/media3/common/PlaybackException;

.field public b:I

.field public c:Landroidx/media3/session/SessionPositionInfo;

.field public d:Landroidx/media3/common/Player$PositionInfo;

.field public e:Landroidx/media3/common/Player$PositionInfo;

.field public f:I

.field public g:Landroidx/media3/common/PlaybackParameters;

.field public h:I

.field public i:Z

.field public j:Landroidx/media3/common/Timeline;

.field public k:I

.field public l:Landroidx/media3/common/VideoSize;

.field public m:Landroidx/media3/common/MediaMetadata;

.field public n:F

.field public o:F

.field public p:I

.field public q:Landroidx/media3/common/AudioAttributes;

.field public r:Landroidx/media3/common/text/CueGroup;

.field public s:Landroidx/media3/common/DeviceInfo;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/media3/session/PlayerInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->a:Landroidx/media3/common/PlaybackException;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->b:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->b:I

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->d:Landroidx/media3/common/Player$PositionInfo;

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->e:Landroidx/media3/common/Player$PositionInfo;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->f:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->f:I

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->g:Landroidx/media3/common/PlaybackParameters;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->h:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->h:I

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->i:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->i:Z

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->k:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->k:I

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->l:Landroidx/media3/common/VideoSize;

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->m:Landroidx/media3/common/MediaMetadata;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->n:F

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->o:F

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->p:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->p:I

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->q:Landroidx/media3/common/AudioAttributes;

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->r:Landroidx/media3/common/text/CueGroup;

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->s:Landroidx/media3/common/DeviceInfo;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->t:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->t:I

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->u:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->u:Z

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->v:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->v:Z

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->w:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->w:I

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->x:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->x:Z

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->y:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->y:Z

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->z:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->z:I

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->A:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->A:I

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->B:Landroidx/media3/common/MediaMetadata;

    iget-wide v0, p1, Landroidx/media3/session/PlayerInfo;->C:J

    iput-wide v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->C:J

    iget-wide v0, p1, Landroidx/media3/session/PlayerInfo;->D:J

    iput-wide v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->D:J

    iget-wide v0, p1, Landroidx/media3/session/PlayerInfo;->E:J

    iput-wide v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->E:J

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->F:Landroidx/media3/common/Tracks;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->G:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/PlayerInfo;
    .locals 39

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->b:I

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v2, Landroidx/media3/session/PlayerInfo;

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo$Builder;->a:Landroidx/media3/common/PlaybackException;

    iget v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->b:I

    iget-object v5, v0, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v6, v0, Landroidx/media3/session/PlayerInfo$Builder;->d:Landroidx/media3/common/Player$PositionInfo;

    iget-object v7, v0, Landroidx/media3/session/PlayerInfo$Builder;->e:Landroidx/media3/common/Player$PositionInfo;

    iget v8, v0, Landroidx/media3/session/PlayerInfo$Builder;->f:I

    iget-object v9, v0, Landroidx/media3/session/PlayerInfo$Builder;->g:Landroidx/media3/common/PlaybackParameters;

    iget v10, v0, Landroidx/media3/session/PlayerInfo$Builder;->h:I

    iget-boolean v11, v0, Landroidx/media3/session/PlayerInfo$Builder;->i:Z

    iget-object v12, v0, Landroidx/media3/session/PlayerInfo$Builder;->l:Landroidx/media3/common/VideoSize;

    iget-object v13, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    iget v14, v0, Landroidx/media3/session/PlayerInfo$Builder;->k:I

    iget-object v15, v0, Landroidx/media3/session/PlayerInfo$Builder;->m:Landroidx/media3/common/MediaMetadata;

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    move/from16 v16, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->q:Landroidx/media3/common/AudioAttributes;

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->p:I

    move/from16 v19, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->r:Landroidx/media3/common/text/CueGroup;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->s:Landroidx/media3/common/DeviceInfo;

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->v:Z

    move/from16 v24, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->w:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->B:Landroidx/media3/common/MediaMetadata;

    move-object/from16 v31, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->C:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->D:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->E:J

    move-wide/from16 v36, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->F:Landroidx/media3/common/Tracks;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo$Builder;->G:Landroidx/media3/common/TrackSelectionParameters;

    move-object/from16 v38, v0

    move-object/from16 v2, v30

    move-object/from16 v30, v31

    move-wide/from16 v31, v32

    move-wide/from16 v33, v34

    move-wide/from16 v35, v36

    move-object/from16 v37, v1

    invoke-direct/range {v2 .. v38}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FFLandroidx/media3/common/AudioAttributes;ILandroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v2
.end method
