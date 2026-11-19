.class public final synthetic Landroidx/compose/foundation/lazy/layout/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic g:Z

.field public final synthetic h:F

.field public final synthetic i:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;IFLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;IILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/d;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/d;->c:I

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/d;->d:F

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/d;->e:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/layout/d;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/layout/d;->g:Z

    iput p7, p0, Landroidx/compose/foundation/lazy/layout/d;->h:F

    iput-object p8, p0, Landroidx/compose/foundation/lazy/layout/d;->i:Lkotlin/jvm/internal/Ref$IntRef;

    iput p9, p0, Landroidx/compose/foundation/lazy/layout/d;->j:I

    iput p10, p0, Landroidx/compose/foundation/lazy/layout/d;->k:I

    iput-object p11, p0, Landroidx/compose/foundation/lazy/layout/d;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/d;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/d;->c:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/d;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/layout/d;->g:Z

    iget v5, p0, Landroidx/compose/foundation/lazy/layout/d;->k:I

    const/4 v6, 0x0

    if-nez v2, :cond_7

    const/4 v2, 0x0

    iget v7, p0, Landroidx/compose/foundation/lazy/layout/d;->d:F

    cmpl-float v2, v7, v2

    if-lez v2, :cond_1

    iget-object v2, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v8, v2, v7

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move v7, v2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v8, v2, v7

    if-gez v8, :cond_0

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/d;->e:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v8, v2, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sub-float/2addr v7, v8

    invoke-interface {v0, v7}, Landroidx/compose/foundation/gestures/ScrollScope;->e(F)F

    move-result v8

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {v4, v0, v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->b(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;II)Z

    move-result v9

    if-nez v9, :cond_7

    cmpg-float v8, v7, v8

    if-nez v8, :cond_6

    iget v8, v2, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    add-float/2addr v8, v7

    iput v8, v2, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/d;->h:F

    if-eqz v4, :cond_3

    iget-object v7, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v2, v7, v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    goto :goto_1

    :cond_3
    iget-object v7, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    neg-float v2, v2

    cmpg-float v2, v7, v2

    if-gez v2, :cond_4

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/d;->i:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget v7, p0, Landroidx/compose/foundation/lazy/layout/d;->j:I

    const/4 v8, 0x2

    if-eqz v4, :cond_5

    if-lt v2, v8, :cond_7

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->a()I

    move-result v2

    sub-int v2, v1, v2

    if-le v2, v7, :cond_7

    sub-int v2, v1, v7

    invoke-interface {v0, v2, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    goto :goto_2

    :cond_5
    if-lt v2, v8, :cond_7

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v2, v7, :cond_7

    add-int/2addr v7, v1

    invoke-interface {v0, v7, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    :goto_2
    invoke-static {v4, v0, v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->b(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;II)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0, v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_9
    invoke-interface {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->d(I)I

    move-result p1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/d;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/AnimationState;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    throw v0
.end method
