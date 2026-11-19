.class public final Landroidx/compose/animation/core/VectorizedKeyframesSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B;\u0008\u0016\u0012\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u00060\u0004\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBE\u0008\u0000\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\u000f\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u000b\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/animation/core/VectorizedKeyframesSpec;",
        "Landroidx/compose/animation/core/AnimationVector;",
        "V",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/animation/core/Easing;",
        "keyframes",
        "durationMillis",
        "delayMillis",
        "<init>",
        "(Ljava/util/Map;II)V",
        "Landroidx/collection/IntList;",
        "timestamps",
        "Landroidx/collection/IntObjectMap;",
        "Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;",
        "defaultEasing",
        "Landroidx/compose/animation/core/ArcMode;",
        "initialArcMode",
        "(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "animation-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/collection/IntList;

.field public final b:Landroidx/collection/IntObjectMap;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/compose/animation/core/Easing;

.field public final f:I

.field public g:[I

.field public h:[F

.field public i:Landroidx/compose/animation/core/AnimationVector;

.field public j:Landroidx/compose/animation/core/AnimationVector;

.field public k:Landroidx/compose/animation/core/AnimationVector;

.field public l:Landroidx/compose/animation/core/AnimationVector;

.field public m:[F

.field public n:[F

.field public o:Landroidx/compose/animation/core/ArcSpline;


# direct methods
.method public constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/IntList;

    .line 169
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    .line 170
    iput p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    .line 171
    iput p4, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->d:I

    .line 172
    iput-object p5, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->e:Landroidx/compose/animation/core/Easing;

    .line 173
    iput p6, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f:I

    .line 174
    sget-object p1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a:[I

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g:[I

    .line 175
    sget-object p1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->b:[F

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h:[F

    .line 176
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:[F

    .line 177
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->n:[F

    .line 178
    sget-object p1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    .line 179
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lkotlin/Pair<",
            "+TV;+",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;II)V"
        }
    .end annotation

    new-instance v1, Landroidx/collection/MutableIntList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Landroidx/collection/MutableIntList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableIntList;->e(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/collection/MutableIntList;->d()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Landroidx/collection/MutableIntList;->e(I)V

    :cond_2
    iget v2, v1, Landroidx/collection/IntList;->b:I

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v1, Landroidx/collection/IntList;->a:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0, v2}, Ljava/util/Arrays;->sort([III)V

    :goto_1
    new-instance v2, Landroidx/collection/MutableIntObjectMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    new-instance v6, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    iget-object v7, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/animation/core/AnimationVector;

    iget-object v3, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/Easing;

    sget-object v8, Landroidx/compose/animation/core/ArcMode;->a:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v3, v0, v4}, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;-><init>(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v5, v6}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    sget-object p1, Landroidx/compose/animation/core/ArcMode;->a:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 166
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Ljava/util/Map;II)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->d:I

    return p0
.end method

.method public final f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 13

    move-object/from16 v5, p5

    const-wide/32 v6, 0xf4240

    div-long v0, p1, v6

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    return-object v5

    :cond_0
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {p0, v3, v4, v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v10, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->j:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    sget-object v1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    const/4 v11, 0x0

    if-eq v0, v1, :cond_9

    long-to-int v0, v8

    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/IntList;

    invoke-static {v1, v0}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result v1

    const/4 v2, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    :cond_1
    invoke-virtual {p0, v1, v0, v11}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h(IIZ)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->n:[F

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    iget-object p0, p0, Landroidx/compose/animation/core/ArcSpline;->a:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v2, p0, v11

    aget-object v2, v2, v11

    iget v2, v2, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    array-length v3, p0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, p0, v3

    aget-object v3, v3, v11

    iget v3, v3, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    cmpg-float v5, v0, v2

    if-gez v5, :cond_2

    move v0, v2

    :cond_2
    cmpl-float v2, v0, v3

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    array-length v0, v1

    array-length v2, p0

    move v5, v11

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_8

    move v7, v11

    move v8, v7

    :goto_2
    add-int/lit8 v9, v0, -0x1

    if-ge v7, v9, :cond_6

    aget-object v9, p0, v5

    aget-object v9, v9, v8

    iget v12, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    cmpg-float v12, v3, v12

    if-gtz v12, :cond_5

    iget-boolean v6, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->p:Z

    if-eqz v6, :cond_4

    iget v6, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->q:F

    aput v6, v1, v7

    add-int/lit8 v6, v7, 0x1

    iget v9, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->r:F

    aput v9, v1, v6

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v3}, Landroidx/compose/animation/core/ArcSpline$Arc;->c(F)V

    invoke-virtual {v9}, Landroidx/compose/animation/core/ArcSpline$Arc;->a()F

    move-result v6

    aput v6, v1, v7

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v9}, Landroidx/compose/animation/core/ArcSpline$Arc;->b()F

    move-result v9

    aput v9, v1, v6

    :goto_3
    move v6, v4

    :cond_5
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    array-length p0, v1

    :goto_5
    if-ge v11, p0, :cond_a

    aget v0, v1, v11

    invoke-virtual {v10, v0, v11}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    const-wide/16 v0, 0x1

    sub-long v0, v8, v0

    mul-long v1, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v12

    mul-long v1, v8, v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    invoke-virtual {v12}, Landroidx/compose/animation/core/AnimationVector;->b()I

    move-result v0

    :goto_6
    if-ge v11, v0, :cond_a

    invoke-virtual {v12, v11}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v1

    invoke-virtual {p0, v11}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-virtual {v10, v1, v11}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    return-object v10
.end method

.method public final g(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-wide/32 v3, 0xf4240

    div-long v3, p1, v3

    invoke-static {v0, v3, v4}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v5, :cond_0

    iget-object v0, v5, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    return-object v0

    :cond_0
    iget v5, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    if-lt v3, v5, :cond_1

    return-object v2

    :cond_1
    if-gtz v3, :cond_2

    return-object v1

    :cond_2
    move-object/from16 v5, p5

    invoke-virtual {v0, v1, v2, v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    sget-object v7, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    const/4 v8, -0x1

    iget-object v9, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/IntList;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v7, :cond_d

    invoke-static {v9, v3}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result v1

    if-ge v1, v8, :cond_3

    add-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    :cond_3
    invoke-virtual {v0, v1, v3, v10}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h(IIZ)F

    move-result v1

    iget-object v2, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:[F

    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    iget-object v0, v0, Landroidx/compose/animation/core/ArcSpline;->a:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    array-length v3, v0

    sub-int/2addr v3, v11

    aget-object v4, v0, v10

    aget-object v4, v4, v10

    iget v4, v4, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    aget-object v6, v0, v3

    aget-object v6, v6, v10

    iget v6, v6, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    array-length v7, v2

    cmpg-float v8, v1, v4

    if-ltz v8, :cond_9

    cmpl-float v8, v1, v6

    if-lez v8, :cond_4

    goto :goto_3

    :cond_4
    array-length v3, v0

    move v4, v10

    move v6, v4

    :goto_0
    if-ge v4, v3, :cond_c

    move v8, v10

    move v9, v8

    :goto_1
    add-int/lit8 v12, v7, -0x1

    if-ge v8, v12, :cond_7

    aget-object v12, v0, v4

    aget-object v12, v12, v9

    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    cmpg-float v13, v1, v13

    if-gtz v13, :cond_6

    iget-boolean v6, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->p:Z

    if-eqz v6, :cond_5

    iget v6, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    sub-float v13, v1, v6

    iget v14, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->k:F

    mul-float/2addr v13, v14

    iget v15, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->c:F

    iget v10, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->e:F

    invoke-static {v10, v15, v13, v15}, Ltr;->a(FFFF)F

    move-result v10

    aput v10, v2, v8

    add-int/lit8 v10, v8, 0x1

    sub-float v6, v1, v6

    mul-float/2addr v6, v14

    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->d:F

    iget v12, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->f:F

    invoke-static {v12, v13, v6, v13}, Ltr;->a(FFFF)F

    move-result v6

    aput v6, v2, v10

    goto :goto_2

    :cond_5
    invoke-virtual {v12, v1}, Landroidx/compose/animation/core/ArcSpline$Arc;->c(F)V

    iget v6, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->q:F

    iget v10, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->n:F

    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->h:F

    mul-float/2addr v10, v13

    add-float/2addr v10, v6

    aput v10, v2, v8

    add-int/lit8 v6, v8, 0x1

    iget v10, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->r:F

    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->o:F

    iget v12, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->i:F

    mul-float/2addr v13, v12

    add-float/2addr v13, v10

    aput v13, v2, v6

    :goto_2
    move v6, v11

    :cond_6
    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_9
    :goto_3
    cmpl-float v8, v1, v6

    if-lez v8, :cond_a

    move v4, v6

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    sub-float/2addr v1, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v9, v7, -0x1

    if-ge v6, v9, :cond_c

    aget-object v9, v0, v3

    aget-object v9, v9, v8

    iget-boolean v10, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->p:Z

    iget v12, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->r:F

    iget v13, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->q:F

    if-eqz v10, :cond_b

    iget v10, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    sub-float v14, v4, v10

    iget v15, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->k:F

    mul-float/2addr v14, v15

    iget v11, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->c:F

    move-object/from16 p0, v0

    iget v0, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->e:F

    invoke-static {v0, v11, v14, v11}, Ltr;->a(FFFF)F

    move-result v0

    mul-float/2addr v13, v1

    add-float/2addr v13, v0

    aput v13, v2, v6

    add-int/lit8 v0, v6, 0x1

    sub-float v10, v4, v10

    mul-float/2addr v10, v15

    iget v11, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->d:F

    iget v9, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->f:F

    invoke-static {v9, v11, v10, v11}, Ltr;->a(FFFF)F

    move-result v9

    mul-float/2addr v12, v1

    add-float/2addr v12, v9

    aput v12, v2, v0

    goto :goto_6

    :cond_b
    move-object/from16 p0, v0

    invoke-virtual {v9, v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->c(F)V

    iget v0, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->n:F

    iget v10, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->h:F

    mul-float/2addr v0, v10

    add-float/2addr v0, v13

    invoke-virtual {v9}, Landroidx/compose/animation/core/ArcSpline$Arc;->a()F

    move-result v10

    mul-float/2addr v10, v1

    add-float/2addr v10, v0

    aput v10, v2, v6

    add-int/lit8 v0, v6, 0x1

    iget v10, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->o:F

    iget v11, v9, Landroidx/compose/animation/core/ArcSpline$Arc;->i:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v12

    invoke-virtual {v9}, Landroidx/compose/animation/core/ArcSpline$Arc;->b()F

    move-result v9

    mul-float/2addr v9, v1

    add-float/2addr v9, v10

    aput v9, v2, v0

    :goto_6
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_c
    :goto_7
    array-length v0, v2

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v0, :cond_13

    aget v1, v2, v10

    invoke-virtual {v5, v1, v10}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    invoke-static {v9, v3}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result v6

    if-ge v6, v8, :cond_e

    add-int/lit8 v6, v6, 0x2

    neg-int v6, v6

    :cond_e
    const/4 v7, 0x1

    invoke-virtual {v0, v6, v3, v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h(IIZ)F

    move-result v0

    invoke-virtual {v9, v6}, Landroidx/collection/IntList;->b(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v3, :cond_10

    iget-object v3, v3, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    move-object v1, v3

    :cond_10
    :goto_9
    add-int/2addr v6, v7

    invoke-virtual {v9, v6}, Landroidx/collection/IntList;->b(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v3, :cond_12

    iget-object v3, v3, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_11

    goto :goto_a

    :cond_11
    move-object v2, v3

    :cond_12
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/animation/core/AnimationVector;->b()I

    move-result v3

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v3, :cond_13

    invoke-virtual {v1, v10}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v4

    invoke-virtual {v2, v10}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v6, v0

    add-float/2addr v6, v7

    invoke-virtual {v5, v6, v10}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_13
    return-object v5
.end method

.method public final h(IIZ)F
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/IntList;

    iget v1, v0, Landroidx/collection/IntList;->b:I

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x447a0000    # 1000.0f

    if-lt p1, v1, :cond_0

    int-to-float p0, p2

    :goto_0
    div-float/2addr p0, v2

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->b(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->b(I)I

    move-result p1

    if-ne p2, v1, :cond_1

    int-to-float p0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    invoke-virtual {v0, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->b:Landroidx/compose/animation/core/Easing;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->e:Landroidx/compose/animation/core/Easing;

    :cond_3
    sub-int/2addr p2, v1

    int-to-float p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-interface {v0, p0}, Landroidx/compose/animation/core/Easing;->a(F)F

    move-result p0

    if-eqz p3, :cond_4

    return p0

    :cond_4
    mul-float/2addr p1, p0

    int-to-float p0, v1

    add-float/2addr p1, p0

    div-float/2addr p1, v2

    return p1
.end method

.method public final i(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    sget-object v1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i:Landroidx/compose/animation/core/AnimationVector;

    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    iget-object v5, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/IntList;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->j:Landroidx/compose/animation/core/AnimationVector;

    iget p3, v5, Landroidx/collection/IntList;->b:I

    new-array v1, p3, [F

    move v6, v2

    :goto_1
    if-ge v6, p3, :cond_1

    invoke-virtual {v5, v6}, Landroidx/collection/IntList;->b(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h:[F

    iget p3, v5, Landroidx/collection/IntList;->b:I

    new-array v1, p3, [I

    move v6, v2

    :goto_2
    if-ge v6, p3, :cond_4

    invoke-virtual {v5, v6}, Landroidx/collection/IntList;->b(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v7, :cond_2

    iget v7, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->c:I

    goto :goto_3

    :cond_2
    iget v7, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f:I

    :goto_3
    sget-object v8, Landroidx/compose/animation/core/ArcMode;->a:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    move v0, v3

    :goto_4
    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g:[I

    :cond_5
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    sget-object v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    if-eq p3, v0, :cond_8

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->k:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->l:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    return-void

    :cond_8
    :goto_6
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->k:Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->l:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    move-result p3

    rem-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    move-result v0

    add-int/2addr v0, p3

    new-array p3, v0, [F

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:[F

    new-array p3, v0, [F

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->n:[F

    iget p3, v5, Landroidx/collection/IntList;->b:I

    new-array v1, p3, [[F

    move v3, v2

    :goto_7
    if-ge v3, p3, :cond_d

    invoke-virtual {v5, v3}, Landroidx/collection/IntList;->b(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-nez v6, :cond_9

    if-nez v7, :cond_9

    new-array v6, v0, [F

    move v7, v2

    :goto_8
    if-ge v7, v0, :cond_c

    invoke-virtual {p1, v7}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    iget v8, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    if-ne v6, v8, :cond_a

    if-nez v7, :cond_a

    new-array v6, v0, [F

    move v7, v2

    :goto_9
    if-ge v7, v0, :cond_c

    invoke-virtual {p2, v7}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    new-array v7, v0, [F

    move v8, v2

    :goto_a
    if-ge v8, v0, :cond_b

    invoke-virtual {v6, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    move-object v6, v7

    :cond_c
    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    new-instance p1, Landroidx/compose/animation/core/ArcSpline;

    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g:[I

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h:[F

    invoke-direct {p1, p2, p3, v1}, Landroidx/compose/animation/core/ArcSpline;-><init>([I[F[[F)V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->o:Landroidx/compose/animation/core/ArcSpline;

    return-void
.end method
