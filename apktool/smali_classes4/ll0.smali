.class public final synthetic Lll0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lll0;->b:I

    iput-object p1, p0, Lll0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 8
    iput p3, p0, Lll0;->b:I

    iput-object p1, p0, Lll0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lll0;->b:I

    const/4 v2, 0x7

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, v0, Lll0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x107ab615

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "ThematicPlpHeader$lambda$2"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_1

    :cond_0
    new-instance v5, Lp11;

    invoke-direct {v5, v0, v2}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v5}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$LookScreenImmersiveArticle;

    invoke-direct {v3, v1, v2}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$LookScreenImmersiveArticle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->w2(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->q:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_2

    move v6, v7

    :cond_2
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/thankyou/a;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/thankyou/a;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;)V

    const v0, -0x4fdfeb36

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Landroid/app/RemoteAction;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x520d2714

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_4
    check-cast v0, Landroid/view/textclassifier/TextClassification;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x38a0c7d5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->b(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_4

    move v6, v7

    :cond_4
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/story/a;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/story/a;-><init>(Lcom/vuitton/android/presentation/screen/story/StoryActivity;)V

    const v0, -0x161ce03a

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->a:F

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_6

    move v6, v7

    :cond_6
    and-int/2addr v1, v7

    invoke-interface {v11, v1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    move-object v9, v0

    const/4 v12, 0x0

    const/4 v13, 0x5

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/compose/components/PushCardImageLoaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_8
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_9

    move v4, v7

    goto :goto_3

    :cond_9
    move v4, v6

    :goto_3
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/social/a;

    invoke-direct {v2, v0, v6}, Lcom/vuitton/android/presentation/screen/authentication/social/a;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V

    const v0, -0x2e9b0c36

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->Cc()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->Z:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->p0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OnModeClickedEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v2, v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OnModeClickedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Set;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    goto :goto_6

    :cond_b
    instance-of v8, v3, Ljava/util/Set;

    if-eqz v8, :cond_c

    new-array v8, v4, [Ljava/util/Set;

    aput-object v3, v8, v6

    aput-object v1, v8, v7

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    goto :goto_6

    :cond_c
    instance-of v8, v3, Ljava/util/List;

    if-eqz v8, :cond_10

    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v8

    :cond_d
    :goto_6
    invoke-virtual {v2, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->a:Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/compose/runtime/snapshots/b;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/snapshots/b;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :cond_f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v3, :cond_d

    goto :goto_5

    :cond_10
    const-string v0, "Unexpected notification"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    :goto_7
    return-object v5

    :pswitch_c
    check-cast v0, Landroidx/navigation3/scene/SinglePaneScene;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v4, :cond_11

    move v3, v7

    goto :goto_8

    :cond_11
    move v3, v6

    :goto_8
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v0, Landroidx/navigation3/scene/SinglePaneScene;->b:Landroidx/navigation3/runtime/NavEntry;

    invoke-virtual {v0, v1, v6}, Landroidx/navigation3/runtime/NavEntry;->a(Landroidx/compose/runtime/Composer;I)V

    goto :goto_9

    :cond_12
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;->p:Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_13

    move v6, v7

    :cond_13
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/settings/a;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/options/settings/a;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;)V

    const v0, -0x21a40534

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_a

    :cond_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iget-wide v1, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_15

    move v6, v7

    :cond_15
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/search/a;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/search/a;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;)V

    const v0, -0xe59de69

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_16
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v2, p2

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-interface {v2}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v3

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->c:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    sget-object v4, Lkotlinx/coroutines/Job$Key;->b:Lkotlinx/coroutines/Job$Key;

    if-eq v3, v4, :cond_18

    if-eq v2, v0, :cond_17

    const/high16 v1, -0x80000000

    goto :goto_f

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_18
    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/Job;

    check-cast v2, Lkotlinx/coroutines/Job;

    :goto_c
    if-nez v2, :cond_19

    goto :goto_e

    :cond_19
    if-ne v2, v8, :cond_1a

    goto :goto_d

    :cond_1a
    instance-of v0, v2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    if-nez v0, :cond_1c

    :goto_d
    move-object v5, v2

    :goto_e
    if-ne v5, v8, :cond_1b

    if-nez v8, :cond_17

    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    check-cast v2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v2

    goto :goto_c

    :pswitch_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;->J:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_1d

    move v6, v7

    :cond_1d
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/b;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/repairs/detail/b;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;)V

    const v0, -0xa085594

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_10

    :cond_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->f(Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_1f

    move v6, v7

    :cond_1f
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/b;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/b;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;)V

    const v0, -0x7f6673e1

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_11

    :cond_20
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Landroidx/compose/runtime/saveable/Saver;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/saveable/SaverScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    instance-of v3, v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    if-eqz v3, :cond_21

    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/saveable/Saver;->a(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    goto :goto_12

    :cond_21
    const-string v0, "If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    :cond_22
    :goto_12
    return-object v5

    :pswitch_16
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Set;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v8, v0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/Recomposer$State;

    sget-object v9, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_2a

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    instance-of v8, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    if-eqz v8, :cond_27

    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->b:Landroidx/collection/ScatterSet;

    iget-object v8, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    array-length v9, v1

    sub-int/2addr v9, v4

    if-ltz v9, :cond_29

    move v4, v6

    :goto_13
    aget-wide v10, v1, v4

    not-long v12, v10

    shl-long/2addr v12, v2

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_26

    sub-int v12, v4, v9

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v6

    :goto_14
    if-ge v14, v12, :cond_25

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_24

    shl-int/lit8 v15, v4, 0x3

    add-int/2addr v15, v14

    aget-object v15, v8, v15

    instance-of v2, v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_23

    move-object v2, v15

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v17, Landroidx/compose/runtime/snapshots/ReaderKind;->a:I

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->j(I)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_15

    :catchall_0
    move-exception v0

    goto :goto_17

    :cond_23
    invoke-virtual {v5, v15}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    :cond_24
    :goto_15
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x7

    goto :goto_14

    :cond_25
    if-ne v12, v13, :cond_29

    :cond_26
    if-eq v4, v9, :cond_29

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x7

    goto :goto_13

    :cond_27
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v4, :cond_28

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v6, Landroidx/compose/runtime/snapshots/ReaderKind;->a:I

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->j(I)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_16

    :cond_28
    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_29
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->D()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2a
    monitor-exit v3

    if-eqz v5, :cond_2b

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v5, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_17
    monitor-exit v3

    throw v0

    :pswitch_17
    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x15594551

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "PushCardImageLoader$lambda$0"

    invoke-direct {v7, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1, v6}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v8

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/layout/ContentScale$Companion;->e:Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;

    const/4 v12, 0x0

    const/16 v13, 0x36

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_18
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->R:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->s:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_2c

    move v6, v7

    :cond_2c
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/portal/a;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/portal/a;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;)V

    const v0, 0x2978ad33

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_18

    :cond_2d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    and-int/lit8 v8, v2, 0x3

    if-eq v8, v4, :cond_2e

    move v6, v7

    :cond_2e
    and-int/2addr v2, v7

    invoke-interface {v1, v2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/screen/placesearch/a;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/placesearch/a;-><init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;)V

    const v0, -0x6ba73e80

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_19

    :cond_2f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorScreenKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->u5(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;)V

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
