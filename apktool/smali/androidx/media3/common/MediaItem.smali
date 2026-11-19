.class public final Landroidx/media3/common/MediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$ClippingProperties;,
        Landroidx/media3/common/MediaItem$LocalConfiguration;,
        Landroidx/media3/common/MediaItem$LiveConfiguration;,
        Landroidx/media3/common/MediaItem$RequestMetadata;,
        Landroidx/media3/common/MediaItem$Builder;,
        Landroidx/media3/common/MediaItem$ClippingConfiguration;,
        Landroidx/media3/common/MediaItem$Subtitle;,
        Landroidx/media3/common/MediaItem$SubtitleConfiguration;,
        Landroidx/media3/common/MediaItem$AdsConfiguration;,
        Landroidx/media3/common/MediaItem$DrmConfiguration;
    }
.end annotation


# static fields
.field public static final g:Landroidx/media3/common/MediaItem;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/media3/common/MediaItem$LocalConfiguration;

.field public final c:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public final d:Landroidx/media3/common/MediaMetadata;

.field public final e:Landroidx/media3/common/MediaItem$ClippingProperties;

.field public final f:Landroidx/media3/common/MediaItem$RequestMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->g:Landroidx/media3/common/MediaItem;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->h:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->i:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->j:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->k:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->l:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object p4, p0, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object p5, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iput-object p2, p0, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    iput-object p6, p0, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    return-void
.end method

.method public static b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;
    .locals 21

    move-object/from16 v0, p1

    sget-object v1, Landroidx/media3/common/MediaItem;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/MediaItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->f:Landroidx/media3/common/MediaItem$LiveConfiguration;

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->b(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget-object v1, Landroidx/media3/common/MediaItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_1
    move/from16 v2, p0

    invoke-static {v2, v1}, Landroidx/media3/common/MediaMetadata;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    goto :goto_2

    :goto_3
    sget-object v1, Landroidx/media3/common/MediaItem;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingProperties;->r:Landroidx/media3/common/MediaItem$ClippingProperties;

    :goto_4
    move-object v5, v1

    goto/16 :goto_a

    :cond_2
    new-instance v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->j:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->i:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v9, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->a:J

    iget-wide v11, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    iget-wide v13, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    invoke-virtual {v1, v5, v9, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v5, v9, v15

    const/16 v17, 0x1

    if-ltz v5, :cond_3

    move/from16 v5, v17

    goto :goto_5

    :cond_3
    move v5, v2

    :goto_5
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v9, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->a:J

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->k:Ljava/lang/String;

    iget-wide v9, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->c:J

    invoke-virtual {v1, v5, v9, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v9

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v5, v9, v18

    if-eqz v5, :cond_5

    cmp-long v5, v9, v15

    if-ltz v5, :cond_4

    goto :goto_6

    :cond_4
    move v5, v2

    goto :goto_7

    :cond_5
    :goto_6
    move/from16 v5, v17

    :goto_7
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v9, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->b:J

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->l:Ljava/lang/String;

    iget-boolean v9, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->c:Z

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->m:Ljava/lang/String;

    iget-boolean v9, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->d:Z

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->n:Ljava/lang/String;

    iget-boolean v9, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->e:Z

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->q:Ljava/lang/String;

    iget-boolean v6, v6, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->f:Z

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->o:Ljava/lang/String;

    invoke-virtual {v1, v5, v13, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v9, v5, v13

    if-eqz v9, :cond_7

    cmp-long v9, v5, v15

    if-ltz v9, :cond_6

    move/from16 v9, v17

    goto :goto_8

    :cond_6
    move v9, v2

    :goto_8
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v5, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->a:J

    :cond_7
    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v11, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v11

    if-eqz v1, :cond_a

    cmp-long v1, v5, v18

    if-eqz v1, :cond_9

    cmp-long v1, v5, v15

    if-ltz v1, :cond_8

    goto :goto_9

    :cond_8
    move/from16 v17, v2

    :cond_9
    :goto_9
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v5, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->b:J

    :cond_a
    new-instance v1, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v1, v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    goto/16 :goto_4

    :goto_a
    sget-object v1, Landroidx/media3/common/MediaItem;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_b

    sget-object v1, Landroidx/media3/common/MediaItem$RequestMetadata;->d:Landroidx/media3/common/MediaItem$RequestMetadata;

    :goto_b
    move-object v9, v1

    goto :goto_c

    :cond_b
    sget-object v3, Landroidx/media3/common/MediaItem$RequestMetadata;->d:Landroidx/media3/common/MediaItem$RequestMetadata;

    new-instance v3, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    sget-object v6, Landroidx/media3/common/MediaItem$RequestMetadata;->e:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, v3, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->a:Landroid/net/Uri;

    sget-object v6, Landroidx/media3/common/MediaItem$RequestMetadata;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->b:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/MediaItem$RequestMetadata;->g:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v3, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->c:Landroid/os/Bundle;

    new-instance v1, Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-direct {v1, v3}, Landroidx/media3/common/MediaItem$RequestMetadata;-><init>(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)V

    goto :goto_b

    :goto_c
    sget-object v1, Landroidx/media3/common/MediaItem;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v6, 0x0

    goto/16 :goto_19

    :cond_c
    sget-object v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_d

    const/4 v13, 0x0

    goto/16 :goto_12

    :cond_d
    sget-object v6, Landroidx/media3/common/MediaItem$DrmConfiguration;->i:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    sget-object v10, Landroidx/media3/common/MediaItem$DrmConfiguration;->j:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    sget-object v11, Landroidx/media3/common/MediaItem$DrmConfiguration;->k:Ljava/lang/String;

    sget-object v12, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_e

    goto :goto_d

    :cond_e
    move-object v11, v12

    :goto_d
    if-ne v11, v12, :cond_f

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v11

    goto :goto_10

    :cond_f
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    if-ne v11, v12, :cond_10

    goto :goto_f

    :cond_10
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_12
    :goto_f
    invoke-static {v13}, Lcom/google/common/collect/ImmutableMap;->c(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v11

    :goto_10
    sget-object v12, Landroidx/media3/common/MediaItem$DrmConfiguration;->l:Ljava/lang/String;

    invoke-virtual {v3, v12, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v13, Landroidx/media3/common/MediaItem$DrmConfiguration;->m:Ljava/lang/String;

    invoke-virtual {v3, v13, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    sget-object v14, Landroidx/media3/common/MediaItem$DrmConfiguration;->n:Ljava/lang/String;

    invoke-virtual {v3, v14, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    sget-object v15, Landroidx/media3/common/MediaItem$DrmConfiguration;->o:Ljava/lang/String;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_13

    move-object/from16 v16, v15

    :cond_13
    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    sget-object v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->p:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v3, v6}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    iput-object v10, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->b:Landroid/net/Uri;

    invoke-static {v11}, Lcom/google/common/collect/ImmutableMap;->c(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->c:Lcom/google/common/collect/ImmutableMap;

    iput-boolean v12, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->d:Z

    iput-boolean v14, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->f:Z

    iput-boolean v13, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->e:Z

    invoke-static {v15}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->g:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_14

    array-length v6, v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    :goto_11
    iput-object v1, v3, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->h:[B

    new-instance v1, Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-direct {v1, v3}, Landroidx/media3/common/MediaItem$DrmConfiguration;-><init>(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)V

    move-object v13, v1

    :goto_12
    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v14, 0x0

    goto :goto_13

    :cond_15
    sget-object v3, Landroidx/media3/common/MediaItem$AdsConfiguration;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v3, v1}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    new-instance v1, Landroidx/media3/common/MediaItem$AdsConfiguration;

    invoke-direct {v1, v3}, Landroidx/media3/common/MediaItem$AdsConfiguration;-><init>(Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;)V

    move-object v14, v1

    :goto_13
    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_14
    move-object v15, v1

    goto :goto_16

    :cond_16
    sget-object v3, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v6, v2

    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_17

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/media3/common/StreamKey;

    sget-object v12, Landroidx/media3/common/StreamKey;->e:Ljava/lang/String;

    invoke-virtual {v10, v12, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v15, Landroidx/media3/common/StreamKey;->f:Ljava/lang/String;

    invoke-virtual {v10, v15, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 p0, v1

    sget-object v1, Landroidx/media3/common/StreamKey;->g:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v11, v12, v15, v1}, Landroidx/media3/common/StreamKey;-><init>(III)V

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_15

    :cond_17
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_14

    :goto_16
    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_17
    move-object/from16 v17, v1

    goto :goto_18

    :cond_18
    new-instance v2, Luh;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Luh;-><init>(I)V

    invoke-static {v2, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->a(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_17

    :goto_18
    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->q:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    new-instance v10, Landroidx/media3/common/MediaItem$LocalConfiguration;

    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v20}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Landroidx/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;J)V

    move-object v6, v10

    :goto_19
    new-instance v3, Landroidx/media3/common/MediaItem;

    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    return-object v3
.end method


# virtual methods
.method public final a()Landroidx/media3/common/MediaItem$Builder;
    .locals 5

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-wide v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    iput-wide v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->a:J

    iget-wide v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    iput-wide v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->b:J

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    iput-boolean v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->c:Z

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    iput-boolean v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->d:Z

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    iput-boolean v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->e:Z

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    iput-boolean v2, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->f:Z

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->d:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->a()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->m:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->n:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->f:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->g:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->c:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->e:Ljava/util/List;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->g:Lcom/google/common/collect/ImmutableList;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->h:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->h:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->j:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->c:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->a:Ljava/util/UUID;

    iput-object v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->a:Ljava/util/UUID;

    iget-object v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->b:Landroid/net/Uri;

    iput-object v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->b:Landroid/net/Uri;

    iget-object v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->c:Lcom/google/common/collect/ImmutableMap;

    iput-object v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->c:Lcom/google/common/collect/ImmutableMap;

    iget-boolean v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->d:Z

    iput-boolean v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->d:Z

    iget-boolean v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->e:Z

    iput-boolean v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->e:Z

    iget-boolean v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->f:Z

    iput-boolean v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->f:Z

    iget-object v3, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->g:Lcom/google/common/collect/ImmutableList;

    iput-object v3, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->g:Lcom/google/common/collect/ImmutableList;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$DrmConfiguration;->h:[B

    iput-object v1, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->h:[B

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>()V

    :goto_0
    iput-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->e:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->d:Landroidx/media3/common/MediaItem$AdsConfiguration;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->i:Landroidx/media3/common/MediaItem$AdsConfiguration;

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    iput-wide v1, v0, Landroidx/media3/common/MediaItem$Builder;->k:J

    :cond_1
    return-object v0
.end method

.method public final c(IZ)Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ""

    iget-object v2, p0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/media3/common/MediaItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->f:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v2, p0, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroidx/media3/common/MediaItem;->i:Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    sget-object v1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iget-object v2, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/media3/common/MediaItem;->j:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/media3/common/MediaMetadata;->c(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    sget-object p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->i:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->a:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->a:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-wide v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->c:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->c:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->k:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-wide v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->o:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget-wide v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_6

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->p:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    iget-boolean v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    iget-boolean v4, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    if-eq v3, v4, :cond_7

    sget-object v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->l:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-boolean v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    iget-boolean v4, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    if-eq v3, v4, :cond_8

    sget-object v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->m:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-boolean v3, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    iget-boolean v4, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    if-eq v3, v4, :cond_9

    sget-object v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->n:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iget-boolean v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    if-eq v1, p1, :cond_a

    sget-object p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->q:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    sget-object p1, Landroidx/media3/common/MediaItem;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    sget-object p1, Landroidx/media3/common/MediaItem$RequestMetadata;->d:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$RequestMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroid/net/Uri;

    if-eqz v2, :cond_c

    sget-object v3, Landroidx/media3/common/MediaItem$RequestMetadata;->e:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    iget-object v2, v1, Landroidx/media3/common/MediaItem$RequestMetadata;->b:Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v3, Landroidx/media3/common/MediaItem$RequestMetadata;->f:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v1, v1, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_e

    sget-object v2, Landroidx/media3/common/MediaItem$RequestMetadata;->g:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_e
    sget-object v1, Landroidx/media3/common/MediaItem;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    if-eqz p2, :cond_1f

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p0, :cond_1f

    iget-object p1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->g:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->e:Ljava/util/List;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->j:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->b:Ljava/lang/String;

    if-eqz v2, :cond_10

    sget-object v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->k:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->c:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v2, :cond_19

    sget-object v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->l:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->g:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->c:Lcom/google/common/collect/ImmutableMap;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Landroidx/media3/common/MediaItem$DrmConfiguration;->i:Ljava/lang/String;

    iget-object v8, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->a:Ljava/util/UUID;

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->b:Landroid/net/Uri;

    if-eqz v7, :cond_11

    sget-object v8, Landroidx/media3/common/MediaItem$DrmConfiguration;->j:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_11
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    sget-object v7, Landroidx/media3/common/MediaItem$DrmConfiguration;->k:Ljava/lang/String;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_13
    iget-boolean v5, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->d:Z

    if-eqz v5, :cond_14

    sget-object v7, Landroidx/media3/common/MediaItem$DrmConfiguration;->l:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-boolean v5, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->e:Z

    if-eqz v5, :cond_15

    sget-object v7, Landroidx/media3/common/MediaItem$DrmConfiguration;->m:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-boolean v5, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->f:Z

    if-eqz v5, :cond_16

    sget-object v7, Landroidx/media3/common/MediaItem$DrmConfiguration;->n:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Landroidx/media3/common/MediaItem$DrmConfiguration;->o:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_17
    iget-object v2, v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->h:[B

    if-eqz v2, :cond_18

    sget-object v4, Landroidx/media3/common/MediaItem$DrmConfiguration;->p:Ljava/lang/String;

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_18
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_19
    iget-object v2, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->d:Landroidx/media3/common/MediaItem$AdsConfiguration;

    if-eqz v2, :cond_1a

    sget-object v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->m:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Landroidx/media3/common/MediaItem$AdsConfiguration;->b:Ljava/lang/String;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$AdsConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->n:Ljava/lang/String;

    new-instance v3, Luh;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Luh;-><init>(I)V

    invoke-static {p2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->b(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1b
    iget-object p2, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->f:Ljava/lang/String;

    if-eqz p2, :cond_1c

    sget-object v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1d

    sget-object p2, Landroidx/media3/common/MediaItem$LocalConfiguration;->p:Ljava/lang/String;

    new-instance v2, Luh;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Luh;-><init>(I)V

    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->b(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1d
    iget-wide p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p0, v2

    if-eqz p2, :cond_1e

    sget-object p2, Landroidx/media3/common/MediaItem$LocalConfiguration;->q:Ljava/lang/String;

    invoke-virtual {v1, p2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    sget-object p0, Landroidx/media3/common/MediaItem;->m:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1f
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/MediaItem;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem;

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LocalConfiguration;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$RequestMetadata;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
