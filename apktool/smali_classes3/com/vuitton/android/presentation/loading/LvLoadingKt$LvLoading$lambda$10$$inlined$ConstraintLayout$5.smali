.class public final Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:Lcom/vuitton/android/presentation/loading/LoadingMode;

.field public final synthetic i:Lcom/airbnb/lottie/compose/LottieAnimationState;

.field public final synthetic j:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

.field public final synthetic k:Landroidx/compose/runtime/State;

.field public final synthetic l:Lcom/airbnb/lottie/compose/LottieCompositionResult;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;Lcom/airbnb/lottie/compose/LottieAnimationState;Lcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/State;Lcom/airbnb/lottie/compose/LottieCompositionResult;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->c:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->d:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->f:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->g:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->h:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iput-object p7, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->i:Lcom/airbnb/lottie/compose/LottieAnimationState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->j:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    iput-object p9, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->k:Landroidx/compose/runtime/State;

    iput-object p10, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->l:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    iput-object p11, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->m:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->n:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->i()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v3, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->d:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->d()V

    const v3, 0x5fd1d170

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    new-instance v5, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$1$1;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v5, v1, v3, v4}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->h:Lcom/vuitton/android/presentation/loading/LoadingMode;

    sget-object v5, Lcom/vuitton/android/presentation/loading/LoadingMode;->DarkMode:Lcom/vuitton/android/presentation/loading/LoadingMode;

    if-ne v4, v5, :cond_4

    const v4, 0x5fd353f7

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    const v4, 0x5fd4d4ec

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    sget-object v7, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    iget-object v8, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->g:Landroidx/compose/ui/Modifier;

    invoke-static {v8, v4, v5, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_5

    sget-object v4, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$2$1;->b:Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$2$1;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/16 v14, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v5, -0x3bced2e6

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    const v5, 0xca3d8b5

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_6

    new-instance v7, Landroidx/constraintlayout/compose/Measurer2;

    invoke-direct {v7, v5}, Landroidx/constraintlayout/compose/Measurer2;-><init>(Landroidx/compose/ui/unit/Density;)V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v10, v7

    check-cast v10, Landroidx/constraintlayout/compose/Measurer2;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_7

    new-instance v5, Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-direct {v5}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;-><init>()V

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v5, Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_8

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v13, v7

    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_9

    new-instance v7, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    invoke-direct {v7, v5}, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;-><init>(Landroidx/constraintlayout/compose/ConstraintLayoutScope;)V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v11, v7

    check-cast v11, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_a

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v9, v7

    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v12, 0x101

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_b

    if-ne v7, v6, :cond_c

    :cond_b
    new-instance v8, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$2;

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/Measurer2;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v8

    :cond_c
    check-cast v7, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_d

    new-instance v2, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$3;

    invoke-direct {v2, v13, v11}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_e

    if-ne v8, v6, :cond_f

    :cond_e
    new-instance v8, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$4;

    invoke-direct {v8, v10}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$4;-><init>(Landroidx/constraintlayout/compose/Measurer2;)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v3, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v11, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;

    iget-object v3, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->n:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->f:Lkotlin/jvm/functions/Function0;

    iget-object v15, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->i:Lcom/airbnb/lottie/compose/LottieAnimationState;

    iget-object v6, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->j:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    iget-object v8, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->k:Landroidx/compose/runtime/State;

    iget-object v10, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->l:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    iget-object v12, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->m:Landroidx/compose/runtime/MutableState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;->h:Lcom/vuitton/android/presentation/loading/LoadingMode;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v13, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move-object v12, v9

    invoke-direct/range {v11 .. v22}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlin/jvm/functions/Function0;Lcom/airbnb/lottie/compose/LottieAnimationState;Lcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/State;Lcom/airbnb/lottie/compose/LottieCompositionResult;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/loading/LoadingMode;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x478ef317

    invoke-static {v0, v11, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v3, 0x30

    invoke-static {v2, v0, v7, v1, v3}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
