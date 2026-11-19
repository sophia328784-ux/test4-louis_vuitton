.class public final synthetic Lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lu1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lu1;->e:Ljava/lang/Object;

    iput-object p3, p0, Lu1;->f:Ljava/lang/Object;

    iput-object p4, p0, Lu1;->g:Ljava/lang/Object;

    iput-object p5, p0, Lu1;->h:Ljava/lang/Object;

    iput-object p6, p0, Lu1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    iput p7, p0, Lu1;->b:I

    iput-object p1, p0, Lu1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lu1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lu1;->e:Ljava/lang/Object;

    iput-object p4, p0, Lu1;->f:Ljava/lang/Object;

    iput-object p5, p0, Lu1;->g:Ljava/lang/Object;

    iput-object p6, p0, Lu1;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 21
    iput p8, p0, Lu1;->b:I

    iput-object p1, p0, Lu1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lu1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lu1;->e:Ljava/lang/Object;

    iput-object p4, p0, Lu1;->f:Ljava/lang/Object;

    iput-object p5, p0, Lu1;->g:Ljava/lang/Object;

    iput-object p6, p0, Lu1;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lu1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1;->e:Ljava/lang/Object;

    iput-object p2, p0, Lu1;->f:Ljava/lang/Object;

    iput-object p3, p0, Lu1;->g:Ljava/lang/Object;

    iput-object p4, p0, Lu1;->h:Ljava/lang/Object;

    iput-object p5, p0, Lu1;->c:Ljava/lang/Object;

    iput-object p6, p0, Lu1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lu1;->b:I

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lu1;->h:Ljava/lang/Object;

    iget-object v7, v0, Lu1;->g:Ljava/lang/Object;

    iget-object v8, v0, Lu1;->f:Ljava/lang/Object;

    iget-object v9, v0, Lu1;->e:Ljava/lang/Object;

    iget-object v10, v0, Lu1;->d:Ljava/lang/Object;

    iget-object v0, v0, Lu1;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v11, v0

    check-cast v11, Landroidx/compose/ui/Modifier;

    move-object v12, v10

    check-cast v12, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    move-object v13, v9

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object v15, v7

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v6

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    invoke-static/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move v11, v5

    move-object v5, v7

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move v11, v5

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt;->b(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, v10

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x6001

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCode3DScreenKt;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move v11, v5

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/placesearch/models/PlacesUiModel;

    move-object v2, v10

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, v8

    check-cast v4, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt;->c(Lcom/vuitton/android/presentation/screen/placesearch/models/PlacesUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move v11, v5

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorProductListKt;->a(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move v11, v5

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    move-object v3, v9

    check-cast v3, Ljava/lang/String;

    move-object v4, v8

    check-cast v4, Ljava/lang/String;

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpTraceabilityKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move v11, v5

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    move-object v13, v9

    check-cast v13, Ljava/lang/Integer;

    check-cast v8, Landroidx/paging/compose/LazyPagingItems;

    move-object v15, v7

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v6

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v5, v2, 0x3

    if-eq v5, v3, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    and-int/2addr v2, v11

    invoke-interface {v1, v2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPScreenKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v11, :cond_2

    if-ne v0, v3, :cond_1

    const v0, -0x3e4a27fb

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v8}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v0

    iget-object v0, v0, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of v0, v0, Landroidx/paging/LoadState$Loading;

    xor-int/lit8 v14, v0, 0x1

    sget-object v15, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const/16 v18, 0x6000

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v18}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PSPSearchHeaderKt;->a(Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v0, v17

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    const v1, -0x2029d9c

    invoke-static {v0, v1}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v0, v1

    const v1, -0x3e508caf

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v8}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v1

    iget-object v1, v1, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of v1, v1, Landroidx/paging/LoadState$Loading;

    if-nez v1, :cond_3

    invoke-virtual {v8}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v1

    iget-object v1, v1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of v1, v1, Landroidx/paging/LoadState$Loading;

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v4, v11

    :cond_4
    xor-int/lit8 v14, v4, 0x1

    const/16 v18, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v18}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PSPHeaderKt;->a(Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    move-object/from16 v17, v1

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move v11, v5

    check-cast v0, Ljava/lang/String;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    check-cast v9, Landroidx/paging/compose/LazyPagingItems;

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v3, :cond_6

    move v4, v11

    :cond_6
    and-int/2addr v1, v11

    invoke-interface {v12, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lw4;

    invoke-direct {v1, v9, v8, v7, v6}, Lw4;-><init>(Landroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;)V

    const v2, -0x75e1224e

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/4 v14, 0x0

    const/16 v15, 0xf37

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0xc00000

    move-object v4, v0

    invoke-static/range {v1 .. v15}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_2

    :cond_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move v11, v5

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move v11, v5

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    move-object v2, v10

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function3;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionComposableKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move v11, v5

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move v11, v5

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/compose/NestedScroll;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/search/components/NoResultSearchComposableKt;->a(Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/compose/NestedScroll;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move v11, v5

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object v15, v7

    check-cast v15, Lkotlin/jvm/functions/Function2;

    check-cast v6, Landroidx/compose/ui/layout/ContentScale;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/runtime/MutableState;

    move v1, v11

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    and-int/lit8 v8, v5, 0x3

    if-eq v8, v3, :cond_8

    move v4, v1

    :cond_8
    and-int/2addr v1, v5

    invoke-interface {v11, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v2, :cond_9

    const v1, 0x18fa29c4

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    move-object/from16 p0, v0

    move-object v0, v7

    goto :goto_4

    :cond_9
    const v1, 0x18fa29c5

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, -0x1568b9d6

    const-string v3, "LvVideoPlayer$lambda$22$5"

    invoke-static {v1, v11, v3}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v12, 0x6

    const/16 v13, 0x7f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object/from16 p0, v0

    move-object/from16 v0, v17

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_a
    move-object/from16 p0, v0

    move-object v0, v7

    const v1, -0x1564b905

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    if-nez v14, :cond_b

    const v1, 0x18ffeaa1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_b
    const v1, 0x18ffeaa2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, -0x4d9ad894

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_c
    const v1, -0x4d9a1560

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    if-nez v15, :cond_d

    const v0, 0x19026d27

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_d
    const v1, 0x19026d28

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x4a801e0b    # 4198149.5f

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_e
    const v0, 0x4a80e13f    # 4223135.5f

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    move-object v3, v9

    check-cast v3, Ljava/lang/String;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    check-cast v6, Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleProductTabsViewKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    move-object v3, v9

    check-cast v3, Ljava/lang/String;

    move-object v4, v8

    check-cast v4, Ljava/util/List;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v2, v10

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move v1, v5

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    move-object v3, v9

    check-cast v3, Ljava/lang/String;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairInitiateComponentKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move v1, v5

    check-cast v0, Ljava/util/List;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/options/dispatch/components/DispatchComposableKt;->c(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    check-cast v6, Lcom/sightcall/core/consent/ConsentViewModel;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->c(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_13
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryScreenKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    move v1, v5

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, v10

    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v3, v9

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v4, v8

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Landroidx/compose/material3/SheetState;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xdb1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/BottomSheetScaffoldKt;->b(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsScreenKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    move v1, v5

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/AssessmentReceiveComponentKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function2;

    check-cast v10, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v2, v10

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookScreenKt;->a(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    move-object v4, v8

    check-cast v4, Ljava/util/List;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    move v1, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v10

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    move-object v4, v8

    check-cast v4, Ljava/lang/String;

    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateComposableKt;->i(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    move v1, v5

    check-cast v0, Landroidx/compose/runtime/MutableState;

    check-cast v9, Landroidx/compose/ui/unit/Density;

    move-object v5, v8

    check-cast v5, Landroidx/compose/ui/focus/FocusRequester;

    check-cast v7, Landroidx/compose/ui/geometry/Rect;

    move-object v2, v6

    check-cast v2, Landroidx/compose/runtime/MutableIntState;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v8, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    and-int/lit8 v8, v6, 0x3

    if-eq v8, v3, :cond_10

    move v3, v1

    goto :goto_9

    :cond_10
    move v3, v4

    :goto_9
    and-int/2addr v1, v6

    invoke-interface {v11, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroidx/compose/ui/window/DialogWindowProvider;

    const/4 v6, 0x0

    if-eqz v3, :cond_11

    check-cast v1, Landroidx/compose/ui/window/DialogWindowProvider;

    goto :goto_a

    :cond_11
    move-object v1, v6

    :goto_a
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroidx/compose/ui/window/DialogWindowProvider;->getWindow()Landroid/view/Window;

    move-result-object v6

    :cond_12
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_14

    :cond_13
    new-instance v3, Lw1;

    invoke-direct {v3, v6, v4}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v11}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v12

    new-instance v1, Lo;

    move-object v3, v0

    move-object v6, v7

    move-object v7, v9

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lo;-><init>(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V

    const v0, -0x797d5ac6

    invoke-static {v0, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v12, v0, v11, v1}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
