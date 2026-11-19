.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;,
        Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;,
        Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0008\tB\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;",
        "",
        "Landroidx/compose/foundation/pager/PagerState;",
        "pagerState",
        "",
        "position",
        "<init>",
        "(Landroidx/compose/foundation/pager/PagerState;I)V",
        "Placement",
        "State",
        "system"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/compose/foundation/pager/PagerState;

.field public final b:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public final b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v3

    add-float/2addr v3, v1

    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Current:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_d

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->c(Landroidx/compose/foundation/pager/PagerState;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, 0x40200000    # 2.5f

    if-eq v1, v3, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    const/high16 v6, 0x3fc00000    # 1.5f

    if-eq v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Small:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_3

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Mini:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Invisible:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_7

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->c(Landroidx/compose/foundation/pager/PagerState;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->First:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    if-eq v1, v3, :cond_6

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->c(Landroidx/compose/foundation/pager/PagerState;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->Last:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    if-ne v0, v1, :cond_7

    :cond_6
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_8

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Small:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_8
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Invisible:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_a

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_b

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Small:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result p0

    const/high16 v0, 0x40900000    # 4.5f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_c

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Mini:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_c
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Invisible:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0

    :cond_d
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0
.end method

.method public final c()F
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-gt v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result p0

    const/high16 v0, 0x41e00000    # 28.0f

    mul-float/2addr p0, v0

    neg-float p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
