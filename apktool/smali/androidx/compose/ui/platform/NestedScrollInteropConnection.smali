.class public final Landroidx/compose/ui/platform/NestedScrollInteropConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/platform/NestedScrollInteropConnection;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "Landroid/view/View;",
        "view",
        "",
        "minFlingVelocity",
        "<init>",
        "(Landroid/view/View;F)V",
        "ui"
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
.field public final b:Landroid/view/View;

.field public final c:Landroidx/core/view/NestedScrollingChildHelper;

.field public final d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->b:Landroid/view/View;

    new-instance p2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p2, p1}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/NestedScrollingChildHelper;->g(Z)V

    iput-object p2, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->d:[I

    sget-object p0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final A0(IJJ)J
    .locals 13

    move-wide/from16 v0, p4

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->a(J)I

    move-result v2

    invoke-static {p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v4, v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->h(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->d:[I

    invoke-static {v3, v3, v2, v4}, Lkotlin/collections/ArraysKt;->s(III[I)V

    const/16 v2, 0x20

    shr-long v5, v0, v2

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)I

    move-result v8

    const-wide v5, 0xffffffffL

    and-long v9, v0, v5

    long-to-int v3, v9

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)I

    move-result v9

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)I

    move-result v2

    and-long/2addr v5, p2

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)I

    move-result v7

    invoke-static {p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    move-result v11

    iget-object v12, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->d:[I

    const/4 v10, 0x0

    iget-object v5, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    move v6, v2

    invoke-virtual/range {v5 .. v12}, Landroidx/core/view/NestedScrollingChildHelper;->d(IIII[II[I)Z

    invoke-static {v8, v0, v1, v4, v9}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->b(IJ[II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final P(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->f(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->f(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)V

    :cond_1
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/unit/Velocity;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p0
.end method

.method public final l0(IJ)J
    .locals 9

    invoke-static {p2, p3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->a(J)I

    move-result v0

    invoke-static {p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v2, v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->h(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->d:[I

    invoke-static {v1, v1, v0, v2}, Lkotlin/collections/ArraysKt;->s(III[I)V

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)I

    move-result v4

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    move-result v8

    iget-object v3, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v6, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->d:[I

    invoke-virtual/range {v3 .. v8}, Landroidx/core/view/NestedScrollingChildHelper;->c(II[I[II)Z

    invoke-static {v4, p2, p3, v2, v5}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->b(IJ[II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final y1(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    move-result p3

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p3, v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object p0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->c:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p3, v1}, Landroidx/core/view/NestedScrollingChildHelper;->b(FF)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    move-result p3

    mul-float/2addr p3, v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    move-result v1

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p1, 0x0

    :cond_1
    :goto_0
    new-instance p0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p0
.end method
