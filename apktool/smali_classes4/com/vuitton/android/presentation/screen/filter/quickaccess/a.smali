.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;ZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->s:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v9, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_1

    if-ne v3, v10, :cond_2

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->o:Z

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->a:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_4

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    move-object v12, v2

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->a:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v2, :cond_5

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    :cond_5
    if-nez v5, :cond_6

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_6
    move-object v13, v5

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-boolean v14, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->b:Z

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->q:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_7

    if-ne v3, v10, :cond_8

    :cond_7
    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$2$1;

    const-string v7, "finish()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    const-string v6, "finish"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_8
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_9

    if-ne v3, v10, :cond_a

    :cond_9
    new-instance v3, Lgv;

    const/16 v2, 0xc

    invoke-direct {v3, v4, v11, v2}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_b

    if-ne v3, v10, :cond_c

    :cond_b
    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$4$1;

    const-string v7, "handleFilterClick(Ljava/lang/String;)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    const-string v6, "handleFilterClick"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_c
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x0

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;->c:Z

    move v0, v1

    move-object v7, v11

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt;->b(ZLjava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
