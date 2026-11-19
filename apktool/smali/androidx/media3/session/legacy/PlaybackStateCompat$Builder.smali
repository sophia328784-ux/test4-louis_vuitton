.class public final Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:J

.field public d:J

.field public e:F

.field public f:J

.field public g:I

.field public h:Ljava/lang/CharSequence;

.field public i:J

.field public j:J

.field public k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->j:J

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->j:J

    iget v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    iput v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->b:I

    iget-wide v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->c:J

    iput-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->c:J

    iget v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->e:F

    iput v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->e:F

    iget-wide v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->i:J

    iput-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->i:J

    iget-wide v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->d:J

    iput-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->d:J

    iget-wide v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->f:J

    iput-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->f:J

    iget v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->g:I

    iput v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->g:I

    iget-object v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->h:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->h:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-wide v0, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->k:J

    iput-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->j:J

    iget-object p1, p1, Landroidx/media3/session/legacy/PlaybackStateCompat;->l:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->k:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-object v2, v1

    iget v1, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->b:I

    move-object v4, v2

    iget-wide v2, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->c:J

    move-object v6, v4

    iget-wide v4, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->d:J

    move-object v7, v6

    iget v6, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->e:F

    move-object v9, v7

    iget-wide v7, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->f:J

    move-object v10, v9

    iget v9, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->g:I

    move-object v11, v10

    iget-object v10, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->h:Ljava/lang/CharSequence;

    move-object v13, v11

    iget-wide v11, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->i:J

    iget-wide v14, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->j:J

    move/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->k:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a:Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v0, v17

    move/from16 v17, v16

    move-object/from16 v16, v1

    move/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Landroidx/media3/session/legacy/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    return-object v0
.end method
