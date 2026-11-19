.class final Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "Landroidx/compose/foundation/pager/PagerState;",
        "pagerState",
        "defaultBringIntoViewSpec",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "<init>",
        "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V",
        "foundation"
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
.field public final b:Landroidx/compose/foundation/pager/PagerState;

.field public final c:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final d:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->c:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->d:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public final a(FFF)F
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->c:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a(FFF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    add-float/2addr p1, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    add-float/2addr p1, p2

    sget-object p2, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a:Landroidx/compose/ui/geometry/Rect;

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->d:Landroidx/compose/ui/unit/LayoutDirection;

    const/high16 v2, -0x40800000    # -1.0f

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->b:Landroidx/compose/foundation/pager/PagerState;

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    if-eqz v3, :cond_6

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->c()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p1

    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, p2, :cond_3

    iget p1, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    neg-int p1, p1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->q()I

    move-result p2

    add-int/2addr p2, p1

    goto :goto_2

    :cond_3
    iget p2, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    :goto_2
    int-to-float p1, p2

    mul-float/2addr p1, v2

    :goto_3
    cmpl-float p2, v0, v1

    if-lez p2, :cond_4

    cmpg-float p2, p1, v0

    if-gez p2, :cond_4

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->q()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    goto :goto_3

    :cond_4
    :goto_4
    cmpg-float p2, v0, v1

    if-gez p2, :cond_5

    cmpl-float p2, p1, v0

    if-lez p2, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->q()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    goto :goto_4

    :cond_5
    return p1

    :cond_6
    :goto_5
    iget p1, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v3, p1

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p1, v3, v5

    if-gez p1, :cond_7

    return v1

    :cond_7
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, p1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->c()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    neg-int v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->q()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_6

    :cond_8
    iget v1, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    :goto_6
    int-to-float v0, v1

    mul-float/2addr v0, v2

    if-ne p2, p1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->c()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p1

    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, p2, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->m()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->q()I

    move-result p0

    :goto_7
    int-to-float p0, p0

    add-float/2addr v0, p0

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->m()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->q()I

    move-result p0

    goto :goto_7

    :cond_b
    :goto_8
    neg-float p0, p3

    invoke-static {v0, p0, p3}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result p0

    return p0
.end method
