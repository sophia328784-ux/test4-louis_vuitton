.class public final synthetic Lrp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lrp0;->b:I

    iput-object p1, p0, Lrp0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lrp0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lrp0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x799532c4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;->c:Ljava/util/List;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel3ScreenKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel3ScreenKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel3ScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v5, v0, p0, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0, v4, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v2, v7, v3, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->c:Ljava/util/List;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel2ScreenKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel2ScreenKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel2ScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt$StoreModeLevel2Screen$lambda$4$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt$StoreModeLevel2Screen$lambda$4$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt$StoreModeLevel2Screen$lambda$4$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v5, v0, p0, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt$StoreModeLevel2Screen$lambda$4$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0, v4, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v2, v7, v3, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    const-string v1, ""

    const-string v2, "SEARCH_QUERY"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p1, Landroidx/activity/result/ActivityResult;->b:I

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-nez v4, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    if-nez v8, :cond_1

    move-object v8, v1

    :cond_1
    invoke-interface {v0, v8, v5}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->mb(Ljava/lang/String;Z)V

    :cond_2
    if-ne v4, v3, :cond_7

    sget-object v3, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->STORE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-interface {p0, v3}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->Z(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v7

    :goto_1
    if-nez v3, :cond_4

    move-object v3, v1

    :cond_4
    invoke-interface {p0, v3}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->X0(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v7

    :goto_2
    invoke-interface {v0, v1, v6}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->mb(Ljava/lang/String;Z)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget v1, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getPlayer()Lcom/linkplay/core/device/ILPDevicePlayer;

    move-result-object p1

    if-eqz p1, :cond_8

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-interface {p1, v1, v2}, Lcom/linkplay/core/device/ILPDevicePlayer;->setProgress(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v3, :cond_9

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->g7(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->z8()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;

    check-cast p1, Landroid/widget/ImageView;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->d:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;->zc(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;

    invoke-direct {v0, p1, v7, v2, v7}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-static {v0, p0, p1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->b(Lcom/sightcall/pratik/livedata/SingleLiveEvent;Landroidx/lifecycle/Observer;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;

    check-cast p1, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;

    invoke-static {v0, p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->l(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/savedstate/serialization/SavedStateConfiguration;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/savedstate/serialization/SavedStateDecoder;

    invoke-direct {v1, p1, p0}, Landroidx/savedstate/serialization/SavedStateDecoder;-><init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    invoke-virtual {v1, v0}, Landroidx/savedstate/serialization/SavedStateDecoder;->D(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/State;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    :cond_a
    invoke-interface {v0, p1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->X1(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_b

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/NestedScrollScope;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->b:Z

    if-eqz v3, :cond_c

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_4

    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    iget-wide v4, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->a:J

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, p1, :cond_d

    invoke-static {v4, v5, v6, v1}, Landroidx/compose/ui/geometry/Offset;->a(JIF)J

    move-result-wide p0

    goto :goto_5

    :cond_d
    invoke-static {v4, v5, v2, v1}, Landroidx/compose/ui/geometry/Offset;->a(JIF)J

    move-result-wide p0

    :goto_5
    invoke-static {v3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->g(FJ)J

    move-result-wide p0

    sget-object v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->a:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->b:I

    invoke-interface {v0, v1, p0, p1}, Landroidx/compose/foundation/gestures/NestedScrollScope;->a(IJ)J

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p1, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotListenerKt$ScreenshotListener$lambda$3$0$$inlined$onDispose$1;

    invoke-direct {p1, v0, p0}, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotListenerKt$ScreenshotListener$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;)V

    return-object p1

    :pswitch_10
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/internal/MutableWindowInsets;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    sget v1, Landroidx/compose/material3/ScaffoldKt;->a:F

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->g(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    iget-object p1, v0, Landroidx/compose/material3/internal/MutableWindowInsets;->a:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/linkplay/core/device/LPDevice;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/linkplay/core/app/LPDeviceManager;->getSlaveDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    if-lez p1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lst0;

    invoke-direct {p1, p0, v5}, Lst0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;I)V

    new-instance v2, Ltt0;

    invoke-direct {v2, p0, v0, v5}, Ltt0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;Lcom/linkplay/core/device/LPDevice;I)V

    invoke-static {}, Lcom/linkplay/core/group/LPMultiroomManager;->getInstance()Lcom/linkplay/core/group/LPMultiroomManager;

    move-result-object p0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteMasterFromRoom$1;

    invoke-direct {v4, p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteMasterFromRoom$1;-><init>(Lst0;Ltt0;Lcom/linkplay/core/device/LPDevice;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;)V

    invoke-virtual {p0, v3, v4}, Lcom/linkplay/core/group/LPMultiroomManager;->deviceMultiroomWithDeviceList(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lst0;

    invoke-direct {p1, p0, v6}, Lst0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;I)V

    new-instance v2, Ltt0;

    invoke-direct {v2, p0, v0, v6}, Ltt0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;Lcom/linkplay/core/device/LPDevice;I)V

    invoke-static {}, Lcom/linkplay/core/group/LPMultiroomManager;->getInstance()Lcom/linkplay/core/group/LPMultiroomManager;

    move-result-object p0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;

    invoke-direct {v4, p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;-><init>(Lst0;Ltt0;Lcom/linkplay/core/device/LPDevice;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;)V

    invoke-virtual {p0, v3, v7, v4}, Lcom/linkplay/core/group/LPMultiroomManager;->deviceMultiroomWithSlaveDeviceList(Ljava/util/List;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_f
    const-string p0, "trunkSpeakerRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :pswitch_13
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    sget-object p1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ProviderMarkerKey;->a:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ProviderMarkerKey;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->a(Ljava/lang/Object;)Landroidx/lifecycle/viewmodel/b;

    move-result-object p1

    new-instance v1, Landroidx/lifecycle/viewmodel/compose/RememberViewModelStoreProviderKt$rememberViewModelStoreProvider$lambda$3$0$$inlined$onDispose$1;

    invoke-direct {v1, p1, p0, v0}, Landroidx/lifecycle/viewmodel/compose/RememberViewModelStoreProviderKt$rememberViewModelStoreProvider$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ReferenceToken;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V

    return-object v1

    :pswitch_15
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->a(Ljava/lang/Object;)Landroidx/lifecycle/viewmodel/b;

    move-result-object p0

    new-instance p1, Landroidx/lifecycle/viewmodel/compose/RememberViewModelStoreOwnerKt$rememberViewModelStoreOwner$lambda$2$0$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/lifecycle/viewmodel/compose/RememberViewModelStoreOwnerKt$rememberViewModelStoreOwner$lambda$2$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ReferenceToken;)V

    return-object p1

    :pswitch_16
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ControlledComposition;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableScatterSet;

    sget-object v1, Landroidx/compose/runtime/Recomposer;->z:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/ControlledComposition;->t(Ljava/lang/Object;)V

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    :cond_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_13

    if-eqz p1, :cond_12

    :try_start_0
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_11

    move-object v7, p1

    :cond_11
    if-eqz v7, :cond_12

    invoke-static {p0, v7}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_12
    :goto_7
    move-object v7, p0

    :cond_13
    iput-object v7, v0, Landroidx/compose/runtime/Recomposer;->e:Ljava/lang/Throwable;

    iget-object p0, v0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_8
    monitor-exit v1

    throw p0

    :pswitch_18
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/State;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/State;

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget p1, Landroidx/compose/material3/RadioButtonKt;->c:F

    invoke-interface {v2, p1}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v4

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide v11, p1, Landroidx/compose/ui/graphics/Color;->a:J

    sget p1, Landroidx/compose/material3/tokens/RadioButtonTokens;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v2, p1}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p1

    div-float v13, v4, v3

    sub-float/2addr p1, v13

    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v9, 0x6c

    const-wide/16 v6, 0x0

    move v5, p1

    move-object v8, v3

    move-wide v3, v11

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/Dp;

    iget p1, p1, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result p1

    if-lez p1, :cond_14

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, p1, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v2, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    sub-float v5, p0, v13

    sget-object v8, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    const/16 v9, 0x6c

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    :cond_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->a(Ljava/util/HashMap;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1a
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_9

    :cond_15
    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    :goto_9
    invoke-interface {p0, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    iget-object v0, p0, Lrp0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lrp0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

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
