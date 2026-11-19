.class public final synthetic Li4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 20
    iput p2, p0, Li4;->b:I

    iput-object p3, p0, Li4;->c:Ljava/lang/Object;

    iput-boolean p6, p0, Li4;->d:Z

    iput-object p4, p0, Li4;->f:Ljava/lang/Object;

    iput-object p5, p0, Li4;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZII)V
    .locals 0

    .line 16
    iput p6, p0, Li4;->b:I

    iput-object p1, p0, Li4;->c:Ljava/lang/Object;

    iput-object p2, p0, Li4;->f:Ljava/lang/Object;

    iput-object p3, p0, Li4;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Li4;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZLkotlin/Function;II)V
    .locals 0

    .line 17
    iput p6, p0, Li4;->b:I

    iput-object p1, p0, Li4;->c:Ljava/lang/Object;

    iput-object p2, p0, Li4;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Li4;->d:Z

    iput-object p4, p0, Li4;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 18
    iput p5, p0, Li4;->b:I

    iput-object p1, p0, Li4;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Li4;->d:Z

    iput-object p3, p0, Li4;->f:Ljava/lang/Object;

    iput-object p4, p0, Li4;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 19
    iput p6, p0, Li4;->b:I

    iput-object p1, p0, Li4;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Li4;->d:Z

    iput-object p3, p0, Li4;->e:Ljava/lang/Object;

    iput-object p4, p0, Li4;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    const/16 p5, 0x9

    iput p5, p0, Li4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li4;->d:Z

    iput-object p2, p0, Li4;->c:Ljava/lang/Object;

    iput-object p3, p0, Li4;->e:Ljava/lang/Object;

    iput-object p4, p0, Li4;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 21
    const/16 p5, 0x10

    iput p5, p0, Li4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li4;->d:Z

    iput-object p2, p0, Li4;->e:Ljava/lang/Object;

    iput-object p3, p0, Li4;->c:Ljava/lang/Object;

    iput-object p4, p0, Li4;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 22
    const/16 p5, 0x8

    iput p5, p0, Li4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li4;->d:Z

    iput-object p2, p0, Li4;->c:Ljava/lang/Object;

    iput-object p3, p0, Li4;->f:Ljava/lang/Object;

    iput-object p4, p0, Li4;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Li4;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x1

    iget-object v6, v0, Li4;->e:Ljava/lang/Object;

    iget-object v7, v0, Li4;->f:Ljava/lang/Object;

    iget-object v8, v0, Li4;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    move-object v12, v6

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-boolean v11, v0, Li4;->d:Z

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/SizeUnitSwitchKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v8

    check-cast v1, Ljava/util/List;

    move-object v3, v7

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move v9, v5

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v2, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt;->b(Ljava/util/List;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    move-object v2, v7

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v3, v6

    check-cast v3, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v4, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt;->a(Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move v9, v5

    move-object v2, v6

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v1, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/osa/form/kisa/OsaKisaComposableKt;->a(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move v9, v5

    move-object v1, v8

    check-cast v1, Landroidx/navigationevent/compose/NavigationEventState;

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v2, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->a(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v7

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v4

    move-object v4, v6

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move v9, v5

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v7

    check-cast v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/main/components/MainNavBarKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    move-object v2, v7

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayer;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/livevideo/component/LiveVideoComposableKt;->b(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-object v2, v7

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayer;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/livevideo/component/LiveVideoComposableKt;->a(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionPanelUiModel;

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v2, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleExpansionListViewKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionPanelUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move v9, v5

    move-object v2, v8

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v1, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ImageFilterComponentKt;->b(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object v2, v8

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, v7

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v4, v6

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xc01

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v1, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move v9, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;

    check-cast v7, Landroidx/compose/ui/focus/FocusManager;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr v1, v9

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v1, v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->c:Z

    if-nez v1, :cond_a

    iget-boolean v1, v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->d:Z

    if-nez v1, :cond_a

    const v1, 0x7578a0b4

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f140336

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "BookingInfoFormScreen$lambda$2"

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v10, 0x6

    const/4 v11, 0x3

    invoke-static {v2, v12, v10, v11}, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v10, v11, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v2, v10, v11}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v10, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v12, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v2, v10, v4, v5}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-boolean v0, v0, Li4;->d:Z

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v4

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_2

    if-ne v5, v10, :cond_3

    :cond_2
    new-instance v5, Lka;

    invoke-direct {v5, v0, v1, v9}, Lka;-><init>(ZLjava/lang/Object;I)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v14, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-boolean v1, v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->f:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    move/from16 v20, v9

    goto :goto_2

    :cond_4
    move/from16 v20, v3

    :goto_2
    if-eqz v0, :cond_5

    const v1, -0x616fc789

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    const-string v1, ""

    :goto_3
    move-object/from16 v17, v1

    goto :goto_4

    :cond_5
    const v1, -0x324a221

    const v2, 0x7f14040c

    invoke-static {v12, v1, v2, v12}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :goto_4
    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_6

    move-object/from16 v16, v1

    :cond_6
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v1, v10, :cond_8

    :cond_7
    new-instance v1, Lve;

    invoke-direct {v1, v7, v6, v9}, Lve;-><init>(Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x168

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v10 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_a
    const v0, 0x758fb55a

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move v9, v5

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v7

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move v3, v4

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v7

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideTrackListKt;->b(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move v9, v5

    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    move-object v2, v7

    check-cast v2, Ljava/lang/Integer;

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v4, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/AssessmentInformationKt;->c(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move v9, v5

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v7

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v3, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v7, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v8, v6, 0x3

    if-eq v8, v2, :cond_c

    move v3, v9

    :cond_c
    and-int/lit8 v2, v6, 0x1

    invoke-interface {v5, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    const/4 v6, 0x0

    iget-boolean v2, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;->c(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move v9, v5

    move-object v1, v8

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v3, v7

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v2, v0, Li4;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;->c(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
