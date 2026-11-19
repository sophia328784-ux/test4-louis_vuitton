.class final Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/PlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrentMediaItemOnlyTimeline"
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final e:Landroidx/media3/common/MediaItem;

.field public final f:Z

.field public final g:Z

.field public final h:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/PlayerWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->O0()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->e:Landroidx/media3/common/MediaItem;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->U0()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->f:Z

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->S0()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->g:Z

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->f:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->m0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->i:J

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x0

    sget-object v1, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->i:J

    const-wide/16 v6, 0x0

    move-object v2, v1

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    return-object v0
.end method

.method public final h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 21

    move-object/from16 v0, p0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    sget-object v1, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->j:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->e:Landroidx/media3/common/MediaItem;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v10, v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->f:Z

    iget-boolean v11, v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->g:Z

    iget-object v12, v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    const-wide/16 v13, 0x0

    iget-wide v3, v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;->i:J

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-wide v15, v3

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->b(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/common/Timeline$Window;->k:Z

    return-object v0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
