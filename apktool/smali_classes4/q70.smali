.class public final synthetic Lq70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p7, 0x0

    iput p7, p0, Lq70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq70;->e:Ljava/lang/Object;

    iput-object p2, p0, Lq70;->f:Ljava/lang/Object;

    iput-object p3, p0, Lq70;->g:Ljava/lang/Object;

    iput-boolean p4, p0, Lq70;->c:Z

    iput-boolean p5, p0, Lq70;->d:Z

    iput-object p6, p0, Lq70;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;)V
    .locals 1

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lq70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lq70;->c:Z

    iput-boolean p2, p0, Lq70;->d:Z

    iput-object p3, p0, Lq70;->e:Ljava/lang/Object;

    iput-object p4, p0, Lq70;->f:Ljava/lang/Object;

    iput-object p5, p0, Lq70;->g:Ljava/lang/Object;

    iput-object p6, p0, Lq70;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lq70;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lq70;->h:Ljava/lang/Object;

    iget-object v3, p0, Lq70;->g:Ljava/lang/Object;

    iget-object v4, p0, Lq70;->f:Ljava/lang/Object;

    iget-object v5, p0, Lq70;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function3;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v10, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p1, p0, Lq70;->c:Z

    if-nez p1, :cond_3

    const p1, 0xb413e71

    const-string p2, "NativeCartComposable$lambda$31"

    invoke-static {p1, v10, p2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p1

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, p2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    sget-object p2, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {p1, v6, v7, p2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iget-boolean p0, p0, Lq70;->d:Z

    xor-int/2addr p0, v1

    new-instance p2, Ln50;

    const/16 v0, 0x11

    invoke-direct {p2, v0}, Ln50;-><init>(I)V

    invoke-static {p1, p0, p2, v10, v5}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, p0, :cond_2

    :cond_1
    new-instance p1, Lpp;

    const/16 p0, 0x18

    invoke-direct {p1, v2, v4, v3, p0}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_3
    const p0, 0xb54e0ec

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v5

    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    check-cast v4, Landroidx/compose/ui/Modifier;

    check-cast v3, Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    move-object v2, v3

    iget-boolean v3, p0, Lq70;->c:Z

    iget-boolean p0, p0, Lq70;->d:Z

    move-object v1, v4

    move v4, p0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt;->b(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
