.class public final synthetic Lm21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lm21;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm21;->d:Ljava/lang/Object;

    iput-object p2, p0, Lm21;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Lm21;->b:I

    iput-object p1, p0, Lm21;->c:Ljava/lang/Object;

    iput-object p2, p0, Lm21;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lm21;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    check-cast p1, Landroid/view/View;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllWatchfacesClickEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllWatchfacesClickEvent;

    invoke-interface {p1, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->c(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->j:I

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010035

    const v1, 0x7f01003a

    const v2, 0x7f010037

    const v3, 0x7f010020

    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CURRENT_WATCH_VERSION"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->M:Ljava/lang/String;

    const v1, 0x7f0a0204

    invoke-virtual {p1, v1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/animation/Animator;

    invoke-static {v0, p0, p1}, Lcom/sightcall/libraries/ui/Views;->c(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/animation/Animator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/ui/PlayerView;

    invoke-direct {v1, p1}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroidx/media3/ui/PlayerView;->setShowNextButton(Z)V

    invoke-virtual {v1, v5}, Landroidx/media3/ui/PlayerView;->setShowPreviousButton(Z)V

    invoke-virtual {v1, v5}, Landroidx/media3/ui/PlayerView;->setShowFastForwardButton(Z)V

    invoke-virtual {v1, v5}, Landroidx/media3/ui/PlayerView;->setShowRewindButton(Z)V

    const v2, 0x7f0a01ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    new-instance v2, Lq3;

    invoke-direct {v2, v4, p0}, Lq3;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v5}, Landroidx/media3/ui/SubtitleView;->setApplyEmbeddedFontSizes(Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->a()V

    new-instance v6, Landroidx/media3/ui/CaptionStyleCompat;

    const v2, 0x7f06043b

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroidx/media3/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    invoke-virtual {p0, v6}, Landroidx/media3/ui/SubtitleView;->setStyle(Landroidx/media3/ui/CaptionStyleCompat;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    iput v3, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/font/TypefaceRequest;

    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult;

    iget-object v1, v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->a:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Landroidx/compose/ui/text/font/TypefaceResult;->g()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->b:Landroidx/collection/LruCache;

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/TypefaceResult;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/TypefaceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v1

    throw p0

    :pswitch_4
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140344

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f140376

    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    const-string v0, "IoT"

    const-string v1, "LVPass/IoT/Earphones/Tutorial/Video"

    iget-object v3, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;

    check-cast p1, Landroid/view/View;

    sget v5, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter$TutorialHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter$TutorialHolder$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    if-eq p1, v7, :cond_5

    if-eq p1, v4, :cond_4

    if-ne p1, v2, :cond_3

    new-instance p1, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    invoke-direct {p1, v1, v0}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lv40;->g()V

    goto :goto_4

    :cond_4
    new-instance p1, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    invoke-direct {p1, v1, v0}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;->d:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    invoke-direct {p1, v1, v0}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string p1, "TutorialVideoMissing"

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "For "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " the video tutorial url is not valid."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    return-object v6

    :pswitch_6
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    move-object v8, p1

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v8, v6, p1, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    if-eqz p1, :cond_7

    sget-object v12, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v13, 0x6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/lazy/LazyListScope;->j(Landroidx/compose/foundation/lazy/LazyListScope;ILk0;Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;Lkotlin/jvm/functions/Function4;I)V

    goto :goto_5

    :cond_7
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    if-eqz p1, :cond_8

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v2, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p1, 0x799532c4

    invoke-direct {p0, p1, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v8, v0, v6, v1, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$TrainViewHolder;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$TrainViewHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->c:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    if-eqz v0, :cond_9

    add-int/lit8 p0, p0, -0x1

    :cond_9
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->c:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    if-eqz v0, :cond_a

    add-int/lit8 p0, p0, -0x1

    :cond_a
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->c:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    if-eqz v0, :cond_b

    add-int/lit8 p0, p0, -0x1

    :cond_b
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->i:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    return-object p1

    :pswitch_b
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/TransitionState;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    new-instance v2, Landroidx/compose/animation/core/a;

    invoke-direct {v2, p1, p0}, Landroidx/compose/animation/core/a;-><init>(Ljava/lang/Thread;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-direct {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-virtual {p0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->q(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    new-instance p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/TransitionState;)V

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    return-object p1

    :pswitch_d
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V

    return-object p1

    :pswitch_e
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MediatorLiveData;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/arch/core/util/Function;

    invoke-interface {p0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    if-eqz p1, :cond_d

    const/4 v2, 0x6

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    move v5, v7

    :cond_c
    invoke-interface {v0, p1, v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->v7(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Z)V

    :cond_d
    sget-object p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->a:Ljava/lang/String;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget v1, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->k:Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/utils/SemanticUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->a(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Ljava/lang/Integer;Ljava/lang/String;IZI)Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->q:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;->THANK_YOU_PAGE:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    if-eqz v0, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v5

    :goto_6
    if-ge v2, v1, :cond_e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    iget-object v4, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget-object v3, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v6, v3, Landroidx/compose/ui/unit/IntOffset;->a:J

    invoke-static {p1, v4, v6, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->u(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    if-eqz p0, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_7
    if-ge v5, v0, :cond_10

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    iget-object v2, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v3, v1, Landroidx/compose/ui/unit/IntOffset;->a:J

    goto :goto_8

    :cond_f
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    :goto_8
    invoke-static {p1, v2, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->u(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->b:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/foundation/text/TextLinkScope;->a:Landroidx/compose/runtime/MutableState;

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v2, :cond_11

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    if-eqz v2, :cond_11

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_9

    :cond_11
    move-object v2, v6

    :goto_9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_a
    move-object v4, v6

    goto :goto_b

    :cond_13
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_12

    iget-object v1, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-static {p0, v0}, Landroidx/compose/foundation/text/TextLinkScope;->c(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_a

    :cond_14
    iget v2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    iget p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->j(II)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v4

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->b(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->b(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v1, p0}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    move-result p0

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    move-result v1

    if-ne p0, v1, :cond_15

    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v0, v5, Landroidx/compose/ui/geometry/Rect;->a:F

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_15
    iget p0, v5, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Landroidx/compose/ui/graphics/AndroidPath;->t(J)V

    :goto_b
    if-eqz v4, :cond_16

    new-instance v6, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;

    invoke-direct {v6, v4}, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;-><init>(Landroidx/compose/ui/graphics/AndroidPath;)V

    :cond_16
    if-eqz v6, :cond_17

    invoke-interface {p1, v6}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->r1(Landroidx/compose/ui/graphics/Shape;)V

    invoke-interface {p1, v7}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->o(Z)V

    :cond_17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    iget-object v0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object p0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->d:Ljava/lang/String;

    if-eqz p1, :cond_18

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1;

    invoke-direct {p1, v0, p0}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    return-object p1

    :pswitch_18
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/Outline;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/ColorProducer;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget v1, Landroidx/compose/material3/internal/TextFieldImplKt;->a:F

    invoke-interface {p0}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/graphics/OutlineKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/Shape;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/ColorProducer;

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    sget v2, Landroidx/compose/material3/internal/TextFieldImplKt;->a:F

    iget-object v2, p1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v2

    iget-object v4, p1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v4}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4, p1}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    new-instance v2, Lm21;

    invoke-direct {v2, v0, p0, v1}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->c(Lm21;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0

    :pswitch_1a
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    check-cast p1, Landroid/graphics/Canvas;

    invoke-static {v0, p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;->e(Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;Landroid/view/ViewGroup;Landroid/graphics/Canvas;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1b
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/SystemIdInfo;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    sget-object v1, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->c:Landroidx/work/impl/model/SystemIdInfoDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->b:Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;

    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    iget-object v0, p0, Lm21;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lm21;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/TwoWayConverter;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iget-object p1, p1, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
