.class public final Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field public final b:Ljava/lang/String;

.field public c:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

.field public d:J

.field public e:F

.field public f:Ljava/lang/Boolean;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*-.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->d:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->e:F

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->b:Ljava/lang/String;

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->i:J

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/upstream/CmcdData;
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    const-string v2, "m"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->c:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const-string v3, "Track selection must be set"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    const-string v3, "a"

    const/4 v4, -0x1

    const-string v5, "av"

    const-string v6, "v"

    const/4 v8, 0x1

    if-nez v2, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->c:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v2

    iget-object v9, v2, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    iget-object v9, v2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v4, :cond_2

    iget-object v2, v2, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v9

    :cond_2
    if-ne v9, v8, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v9, v2, :cond_4

    move-object v2, v6

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    :cond_5
    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_7

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v9

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v8

    :goto_2
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_a

    iget-wide v12, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->d:J

    cmp-long v3, v12, v10

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_3

    :cond_8
    move v3, v9

    :goto_3
    const-string v5, "Buffered duration must be set"

    invoke-static {v5, v3}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-wide v12, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->i:J

    cmp-long v3, v12, v10

    if-eqz v3, :cond_9

    move v3, v8

    goto :goto_4

    :cond_9
    move v3, v9

    :goto_4
    const-string v5, "Chunk duration must be set"

    invoke-static {v5, v3}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    :cond_a
    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v5, v3, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->c:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    iget-object v12, v3, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->c:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->n()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v5

    iget-object v13, v5, Lcom/google/common/collect/ImmutableMultimap;->f:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v13}, Lcom/google/common/collect/ImmutableMap;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v14

    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/google/common/collect/ImmutableListMultimap;->m(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    sget-object v16, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const-string v8, "="

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    sget-object v8, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/16 v17, 0x0

    const v4, -0x7fffffff

    if-nez v1, :cond_f

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->c:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v14

    iget v14, v14, Landroidx/media3/common/Format;->j:I

    const/16 v15, 0x3e8

    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->g(II)I

    move-result v18

    const-wide/32 v19, -0x7fffffff

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v7

    move v8, v9

    :goto_6
    iget v9, v7, Landroidx/media3/common/TrackGroup;->a:I

    if-ge v8, v9, :cond_d

    iget-object v9, v7, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v9, v9, v8

    iget v9, v9, Landroidx/media3/common/Format;->j:I

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_d
    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->g(II)I

    move-result v7

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->a()J

    move-result-wide v8

    cmp-long v8, v8, v19

    if-eqz v8, :cond_e

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->a()J

    move-result-wide v8

    const-wide/16 v14, 0x3e7

    add-long/2addr v8, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    goto :goto_7

    :cond_e
    move-wide/from16 v8, v19

    :goto_7
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v1, v18

    goto :goto_8

    :cond_f
    const-wide/32 v19, -0x7fffffff

    move v1, v4

    move v7, v1

    move-wide/from16 v8, v19

    :goto_8
    new-instance v14, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    invoke-direct {v14}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v1, :cond_11

    if-ne v1, v4, :cond_10

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v15, 0x1

    :goto_a
    invoke-static {v15}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput v1, v14, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->a:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v7, :cond_13

    if-ne v7, v4, :cond_12

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v1, 0x1

    :goto_c
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput v7, v14, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->b:I

    const-wide/16 v21, 0x0

    if-eqz v2, :cond_16

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v23, v10

    iget-wide v10, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->i:J

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v10

    cmp-long v1, v10, v21

    if-gez v1, :cond_15

    cmp-long v1, v10, v23

    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v1, 0x1

    :goto_e
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v10, v14, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->c:J

    goto :goto_f

    :cond_16
    move-wide/from16 v23, v10

    :goto_f
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    iput-object v1, v14, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->d:Ljava/lang/String;

    const-string v1, "CMCD-Object"

    invoke-virtual {v13, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableListMultimap;->m(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v14, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->e:Lcom/google/common/collect/ImmutableList;

    :cond_17
    new-instance v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;-><init>()V

    const-wide/16 v25, 0x64

    if-eqz v2, :cond_1c

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v27, 0x32

    iget-wide v10, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->d:J

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v10

    cmp-long v2, v10, v23

    if-nez v2, :cond_18

    iput-wide v10, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->a:J

    goto :goto_10

    :cond_18
    cmp-long v2, v10, v21

    if-ltz v2, :cond_1b

    add-long v10, v10, v27

    div-long v10, v10, v25

    mul-long v10, v10, v25

    iput-wide v10, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->a:J

    :goto_10
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v10, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->d:J

    long-to-float v2, v10

    iget v7, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->e:F

    div-float/2addr v2, v7

    float-to-long v10, v2

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v10

    cmp-long v2, v10, v23

    if-nez v2, :cond_19

    iput-wide v10, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->c:J

    goto :goto_11

    :cond_19
    cmp-long v2, v10, v21

    if-ltz v2, :cond_1a

    add-long v10, v10, v27

    div-long v10, v10, v25

    mul-long v10, v10, v25

    iput-wide v10, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->c:J

    goto :goto_11

    :cond_1a
    invoke-static {}, Lct0;->c()V

    return-object v17

    :cond_1b
    invoke-static {}, Lct0;->c()V

    return-object v17

    :cond_1c
    const-wide/16 v27, 0x32

    :goto_11
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v2, v8, v19

    if-nez v2, :cond_1d

    iput-wide v8, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->b:J

    goto :goto_12

    :cond_1d
    cmp-long v2, v8, v21

    if-ltz v2, :cond_2c

    add-long v8, v8, v27

    div-long v8, v8, v25

    mul-long v8, v8, v25

    iput-wide v8, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->b:J

    :goto_12
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->g:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->h:Z

    if-eqz v2, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v2, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v2, 0x1

    :goto_14
    iput-boolean v2, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->d:Z

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->k:Ljava/lang/String;

    if-nez v2, :cond_20

    move-object/from16 v7, v17

    goto :goto_15

    :cond_20
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_15
    iput-object v7, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->e:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->l:Ljava/lang/String;

    iput-object v2, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->f:Ljava/lang/String;

    const-string v2, "CMCD-Request"

    invoke-virtual {v13, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableListMultimap;->m(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->g:Lcom/google/common/collect/ImmutableList;

    :cond_21
    new-instance v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v3, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->b:Ljava/lang/String;

    const/16 v8, 0x40

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v8, :cond_22

    goto :goto_16

    :cond_22
    const/4 v9, 0x0

    goto :goto_17

    :cond_23
    :goto_16
    const/4 v9, 0x1

    :goto_17
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object v7, v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->a:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v3, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->a:Ljava/lang/String;

    if-eqz v7, :cond_25

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v8, :cond_24

    goto :goto_18

    :cond_24
    const/4 v8, 0x0

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v8, 0x1

    :goto_19
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object v7, v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->b:Ljava/lang/String;

    iput-object v7, v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->c:Ljava/lang/String;

    iget-object v7, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->f:Ljava/lang/Boolean;

    if-eqz v7, :cond_27

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->f:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_26

    const-string v6, "l"

    :cond_26
    iput-object v6, v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->d:Ljava/lang/String;

    :cond_27
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->e:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_29

    const v7, -0x800001

    cmpl-float v7, v6, v7

    if-nez v7, :cond_28

    goto :goto_1a

    :cond_28
    const/4 v8, 0x0

    goto :goto_1b

    :cond_29
    :goto_1a
    const/4 v8, 0x1

    :goto_1b
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput v6, v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->e:F

    const-string v6, "CMCD-Session"

    invoke-virtual {v13, v6}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableListMultimap;->m(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->f:Lcom/google/common/collect/ImmutableList;

    :cond_2a
    new-instance v6, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;

    invoke-direct {v6}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v4, v6, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->a:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->g:Z

    iput-boolean v0, v6, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->b:Z

    const-string v0, "CMCD-Status"

    invoke-virtual {v13, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableListMultimap;->m(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v6, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->c:Lcom/google/common/collect/ImmutableList;

    :cond_2b
    new-instance v7, Landroidx/media3/exoplayer/upstream/CmcdData;

    new-instance v8, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;

    invoke-direct {v8, v14}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;)V

    new-instance v9, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;

    invoke-direct {v9, v1}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;)V

    new-instance v10, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;

    invoke-direct {v10, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;)V

    new-instance v11, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;

    invoke-direct {v11, v6}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;)V

    iget v12, v3, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->d:I

    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/upstream/CmcdData;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;I)V

    return-object v7

    :cond_2c
    invoke-static {}, Lct0;->c()V

    return-object v17
.end method
