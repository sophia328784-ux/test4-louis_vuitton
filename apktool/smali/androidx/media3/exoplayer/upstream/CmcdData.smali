.class public final Landroidx/media3/exoplayer/upstream/CmcdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;,
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;,
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;,
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;,
        Landroidx/media3/exoplayer/upstream/CmcdData$ObjectType;,
        Landroidx/media3/exoplayer/upstream/CmcdData$StreamType;,
        Landroidx/media3/exoplayer/upstream/CmcdData$StreamingFormat;,
        Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    }
.end annotation


# static fields
.field public static final f:Lcom/google/common/base/Joiner;


# instance fields
.field public final a:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;

.field public final b:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;

.field public final c:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;

.field public final d:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/base/Joiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/CmcdData;->f:Lcom/google/common/base/Joiner;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData;->a:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdData;->b:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CmcdData;->c:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;

    iput-object p4, p0, Landroidx/media3/exoplayer/upstream/CmcdData;->d:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;

    iput p5, p0, Landroidx/media3/exoplayer/upstream/CmcdData;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v2}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/CmcdData;->a:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;

    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->d:Ljava/lang/String;

    iget-wide v5, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->c:J

    iget v7, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->b:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v9, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->a:I

    const v10, -0x7fffffff

    if-eq v9, v10, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "br="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eq v7, v10, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "tb="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v11

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "d="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ot="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CMCD-Object"

    invoke-virtual {v2, v3, v8}, Lcom/google/common/collect/ArrayListMultimap;->q(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_4
    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/CmcdData;->b:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;

    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->f:Ljava/lang/String;

    iget-object v5, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->e:Ljava/lang/String;

    iget-wide v6, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->c:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->b:J

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-wide v14, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->a:J

    cmp-long v16, v14, v11

    if-eqz v16, :cond_5

    move-wide/from16 v16, v11

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bl="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-wide/from16 v16, v11

    :goto_0
    const-wide/32 v11, -0x7fffffff

    cmp-long v11, v8, v11

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mtp="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    cmp-long v8, v6, v16

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dl="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v6, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->d:Z

    if-eqz v6, :cond_8

    const-string v6, "su"

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "\""

    if-nez v6, :cond_9

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "nor=\""

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nrr=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v3, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "CMCD-Request"

    invoke-virtual {v2, v3, v13}, Lcom/google/common/collect/ArrayListMultimap;->q(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_b
    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/CmcdData;->c:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;

    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->d:Ljava/lang/String;

    iget-object v5, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->c:Ljava/lang/String;

    iget-object v6, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->b:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->a:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cid=\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    sget-object v9, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "sid=\""

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sf="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "st="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v4, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->e:F

    const v5, -0x800001

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_10

    const-string v5, "pr"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%.2f"

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v3, v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "CMCD-Session"

    invoke-virtual {v2, v3, v8}, Lcom/google/common/collect/ArrayListMultimap;->q(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Landroidx/media3/exoplayer/upstream/CmcdData;->d:Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;

    iget v5, v4, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;->a:I

    if-eq v5, v10, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rtp="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-boolean v5, v4, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;->b:Z

    if-eqz v5, :cond_13

    const-string v5, "bs"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v4, v4, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "CMCD-Status"

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/ArrayListMultimap;->q(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_14
    iget v0, v0, Landroidx/media3/exoplayer/upstream/CmcdData;->e:I

    sget-object v3, Landroidx/media3/exoplayer/upstream/CmcdData;->f:Lcom/google/common/base/Joiner;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/common/collect/ArrayListMultimap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/google/common/base/Joiner;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1

    :cond_15
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    iget-object v2, v1, Landroidx/media3/datasource/DataSpec;->e:Ljava/util/Map;

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Landroidx/media3/datasource/DataSpec;

    iget-object v2, v1, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    iget-wide v3, v1, Landroidx/media3/datasource/DataSpec;->b:J

    iget v5, v1, Landroidx/media3/datasource/DataSpec;->c:I

    iget-object v6, v1, Landroidx/media3/datasource/DataSpec;->d:[B

    iget-wide v8, v1, Landroidx/media3/datasource/DataSpec;->f:J

    iget-wide v10, v1, Landroidx/media3/datasource/DataSpec;->g:J

    iget-object v12, v1, Landroidx/media3/datasource/DataSpec;->h:Ljava/lang/String;

    iget v13, v1, Landroidx/media3/datasource/DataSpec;->i:I

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;I)V

    return-object v1

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/common/collect/ArrayListMultimap;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_17
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, v1, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "CMCD"

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    return-object v0
.end method
