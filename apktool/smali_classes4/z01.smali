.class public final synthetic Lz01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Ljava/util/Set;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz01;->b:Ljava/util/List;

    iput-object p2, p0, Lz01;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lz01;->d:Ljava/util/Set;

    iput-object p4, p0, Lz01;->e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iput-object p5, p0, Lz01;->f:Lkotlin/jvm/functions/Function1;

    iput-boolean p6, p0, Lz01;->g:Z

    iput-object p7, p0, Lz01;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lz01;->i:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lz01;->b:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const v3, -0x4f634aae

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "SpotlightList$lambda$2"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->h:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    iget v8, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->d:F

    iget-object v7, v0, Lz01;->i:Landroidx/compose/runtime/State;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ne v2, v7, :cond_0

    iget-object v2, v0, Lz01;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v2, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v2}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v9, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    iget-object v2, v0, Lz01;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v1, v0, Lz01;->e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v11, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    const/4 v15, 0x6

    const/16 v16, 0x0

    iget-object v7, v0, Lz01;->f:Lkotlin/jvm/functions/Function1;

    iget-boolean v12, v0, Lz01;->g:Z

    iget-object v13, v0, Lz01;->h:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;FZZZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_1
    const v0, -0x4f56c117

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
