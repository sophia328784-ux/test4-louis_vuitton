.class public final Landroidx/compose/animation/core/ArcAnimationSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B/\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/animation/core/ArcAnimationSpec;",
        "T",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "Landroidx/compose/animation/core/ArcMode;",
        "mode",
        "",
        "durationMillis",
        "delayMillis",
        "Landroidx/compose/animation/core/Easing;",
        "easing",
        "<init>",
        "(IIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroidx/compose/animation/core/Easing;


# direct methods
.method public constructor <init>(IIILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Landroidx/compose/animation/core/ArcMode;->a:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/animation/core/ArcMode;->b:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/16 p2, 0x12c

    :cond_1
    move v2, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    :cond_2
    move v3, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    :cond_3
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/ArcAnimationSpec;-><init>(IIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->a:I

    .line 40
    iput p2, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->b:I

    .line 41
    iput p3, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->c:I

    .line 42
    iput-object p4, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->d:Landroidx/compose/animation/core/Easing;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/ArcAnimationSpec;->a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 8

    new-instance v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    sget-object p1, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    new-instance v1, Landroidx/collection/MutableIntList;

    const/4 p1, 0x2

    invoke-direct {v1, p1}, Landroidx/collection/MutableIntList;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntList;->e(I)V

    iget p1, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->b:I

    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntList;->e(I)V

    sget-object v2, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->a:I

    const/4 v7, 0x0

    iget v3, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->b:I

    iget v4, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->c:I

    iget-object v5, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->d:Landroidx/compose/animation/core/Easing;

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/animation/core/ArcAnimationSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroidx/compose/animation/core/ArcAnimationSpec;

    iget v0, p1, Landroidx/compose/animation/core/ArcAnimationSpec;->a:I

    sget-object v2, Landroidx/compose/animation/core/ArcMode;->a:Landroidx/compose/animation/core/ArcMode$Companion;

    iget v2, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->a:I

    if-ne v2, v0, :cond_4

    iget v0, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->b:I

    iget v2, p1, Landroidx/compose/animation/core/ArcAnimationSpec;->b:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->c:I

    iget v2, p1, Landroidx/compose/animation/core/ArcAnimationSpec;->c:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->d:Landroidx/compose/animation/core/Easing;

    iget-object p1, p1, Landroidx/compose/animation/core/ArcAnimationSpec;->d:Landroidx/compose/animation/core/Easing;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Landroidx/compose/animation/core/ArcMode;->a:Landroidx/compose/animation/core/ArcMode$Companion;

    iget v0, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/animation/core/ArcAnimationSpec;->d:Landroidx/compose/animation/core/Easing;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
