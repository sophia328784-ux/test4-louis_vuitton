.class public final synthetic Lhv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhv0;->b:I

    iput-object p1, p0, Lhv0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lhv0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lhv0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "HOW_TO_GET"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;)Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoryUi;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "WATCH_ID"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v3, p0

    goto :goto_0

    :cond_1
    const-string p0, "Required value was null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_0
    return-object v3

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    check-cast p0, Lp01;

    const-string v0, "end delay fired"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lp01;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;)Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Ltt0;

    invoke-virtual {p0}, Ltt0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    new-instance v1, Lp11;

    const/16 v3, 0x9

    invoke-direct {v1, p0, v3}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;-><init>(ZLkotlin/jvm/functions/Function1;)V

    return-object v0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    if-eqz p0, :cond_5

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    if-eqz v0, :cond_2

    const-string p0, "plane"

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-eqz v0, :cond_3

    const-string p0, "train"

    goto :goto_1

    :cond_3
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    if-eqz p0, :cond_4

    const-string p0, "hotel"

    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_4
    invoke-static {}, Lv40;->g()V

    goto :goto_3

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    :goto_3
    return-object v3

    :pswitch_a
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableState;

    instance-of v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    if-eqz v0, :cond_7

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->d()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_8

    goto :goto_4

    :cond_7
    instance-of v0, p0, Landroidx/compose/foundation/lazy/LazyListState;

    if-eqz v0, :cond_8

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->d()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_8

    :goto_4
    move v1, v2

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->q:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$CloseFeedbackScreen;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$CloseFeedbackScreen;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->V3(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    iput-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_e
    check-cast p0, Landroidx/compose/ui/unit/IntRect;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->c()J

    move-result-wide v0

    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_f
    check-cast p0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    return-object p0

    :pswitch_10
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->a(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    move-result-object p0

    goto :goto_5

    :cond_9
    sget-object p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->c:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    :goto_5
    return-object p0

    :pswitch_11
    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;->f(Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    iput-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->G:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/sightcall/universal/util/StepLink;

    invoke-static {p0}, Lcom/sightcall/universal/util/StepLink;->a(Lcom/sightcall/universal/util/StepLink;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    sget v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->q:I

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;->A7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Landroidx/compose/material3/SliderState;

    sget v0, Landroidx/compose/material3/SliderState;->t:I

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->n:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;->a:Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Landroidx/compose/material3/SheetState;->d:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0

    :pswitch_19
    check-cast p0, Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->b()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->b()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->l()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->T0(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    sget v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->f:I

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->d:Landroidx/compose/runtime/MutableState;

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->a:J

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v1, v1, v4

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->b:Landroidx/compose/ui/graphics/ShaderBrush;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, v0, Landroidx/compose/ui/geometry/Size;->a:J

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    move-result-object v3

    :goto_6
    return-object v3

    :pswitch_1b
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryAgainClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryAgainClickedEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;->p:Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacyPolicyPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacyPolicyPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

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
