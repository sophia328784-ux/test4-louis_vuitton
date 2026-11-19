.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final w:Landroidx/media3/common/MediaItem;


# instance fields
.field public final k:Z

.field public final l:Z

.field public final m:[Landroidx/media3/exoplayer/source/MediaSource;

.field public final n:Ljava/util/ArrayList;

.field public final o:[Landroidx/media3/common/Timeline;

.field public final p:Ljava/util/ArrayList;

.field public final q:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final r:Ljava/util/HashMap;

.field public final s:Lcom/google/common/collect/Multimap;

.field public t:I

.field public u:[[J

.field public v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "MergingMediaSource"

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->w:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->k:Z

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    iput-object p4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->q:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p4

    new-array p2, p2, [Landroidx/media3/common/Timeline;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/Timeline;

    new-array p1, p1, [[J

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->a()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->a()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->c()Lcom/google/common/collect/ListMultimap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/Multimap;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    .line 83
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZLandroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZ[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 12

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->h()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->h()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    if-eq v0, v1, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    array-length v0, v0

    const/4 v1, 0x1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/Timeline;

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    array-length v4, v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v1

    aput v0, v5, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v3, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->k:Z

    if-eqz p1, :cond_5

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move p2, v2

    :goto_1
    iget p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    if-ge p2, p3, :cond_5

    aget-object p3, v3, v2

    invoke-virtual {p3, p2, p1, v2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p3

    iget-wide v4, p3, Landroidx/media3/common/Timeline$Period;->e:J

    neg-long v4, v4

    move p3, v1

    :goto_2
    array-length v0, v3

    if-ge p3, v0, :cond_4

    aget-object v0, v3, p3

    invoke-virtual {v0, p2, p1, v2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-wide v6, v0, Landroidx/media3/common/Timeline$Period;->e:J

    neg-long v6, v6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v0, v0, p2

    sub-long v6, v4, v6

    aput-wide v6, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    aget-object p1, v3, v2

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    if-eqz p2, :cond_c

    new-instance p2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move p3, v2

    :goto_3
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/HashMap;

    if-ge p3, v0, :cond_b

    const-wide/high16 v4, -0x8000000000000000L

    move v0, v2

    move-wide v6, v4

    :goto_4
    array-length v8, v3

    if-ge v0, v8, :cond_9

    aget-object v8, v3, v0

    invoke-virtual {v8, p3, p2, v2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v8

    iget-wide v8, v8, Landroidx/media3/common/Timeline$Period;->d:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    goto :goto_5

    :cond_6
    iget-object v10, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v10, v10, p3

    aget-wide v10, v10, v0

    add-long/2addr v8, v10

    cmp-long v10, v6, v4

    if-eqz v10, :cond_7

    cmp-long v10, v8, v6

    if-gez v10, :cond_8

    :cond_7
    move-wide v6, v8

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    aget-object v0, v3, v2

    invoke-virtual {v0, p3}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->r(JJ)V

    goto :goto_6

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_b
    new-instance p2, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;

    invoke-direct {p2, p1, v1}, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/util/Map;)V

    move-object p1, p2

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->v(Landroidx/media3/common/Timeline;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v3, v2

    new-array v4, v3, [Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v5, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/Timeline;

    const/4 v6, 0x0

    aget-object v7, v5, v6

    iget-object v8, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v7

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v9, v5, v6

    invoke-virtual {v9, v7}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v9

    aget-object v10, v2, v6

    iget-object v11, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v11, v11, v7

    aget-wide v11, v11, v6

    sub-long v11, p3, v11

    move-object/from16 v13, p2

    invoke-interface {v10, v9, v13, v11, v12}, Landroidx/media3/exoplayer/source/MediaSource;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v10

    aput-object v10, v4, v6

    iget-object v10, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    new-instance v11, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    aget-object v12, v4, v6

    invoke-direct {v11, v9, v12}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v1, v1, v7

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->q:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    invoke-direct {v10, v2, v1, v4}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[J[Landroidx/media3/exoplayer/source/MediaPeriod;)V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    if-eqz v1, :cond_1

    new-instance v9, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v9 .. v16}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJZ)V

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, v8, v9}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :cond_1
    return-object v10
.end method

.method public final d()Landroidx/media3/common/MediaItem;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->w:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    :cond_2
    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->c:[Z

    iget-object v5, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->b:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    aget-object v4, v5, v1

    check-cast v4, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    goto :goto_1

    :cond_3
    aget-object v4, v5, v1

    :goto_1
    move v6, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    aget-object v2, v2, v1

    iget-object v3, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->c:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_6

    aget-object v3, v5, v1

    check-cast v3, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    goto :goto_4

    :cond_6
    aget-object v3, v5, v1

    :goto_4
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource;->g(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final k(Landroidx/media3/common/MediaItem;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->k(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->n()V

    return-void

    :cond_0
    throw v0
.end method

.method public final q(Landroidx/media3/common/MediaItem;)Z
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p0, p0, v1

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->q(Landroidx/media3/common/MediaItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final u(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j:Landroidx/media3/datasource/TransferListener;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->B(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->w()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final x(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
