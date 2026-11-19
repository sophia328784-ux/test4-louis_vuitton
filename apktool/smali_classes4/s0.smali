.class public final synthetic Ls0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 17
    iput p5, p0, Ls0;->b:I

    iput-object p1, p0, Ls0;->d:Ljava/lang/Object;

    iput-object p2, p0, Ls0;->e:Ljava/lang/Object;

    iput-object p3, p0, Ls0;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Ls0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Ls0;->b:I

    iput-object p1, p0, Ls0;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Ls0;->c:Z

    iput-object p3, p0, Ls0;->e:Ljava/lang/Object;

    iput-object p4, p0, Ls0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Ls0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0;->e:Ljava/lang/Object;

    iput-object p2, p0, Ls0;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Ls0;->c:Z

    iput-object p4, p0, Ls0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 1

    .line 18
    const/4 v0, 0x6

    iput v0, p0, Ls0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ls0;->c:Z

    iput-object p2, p0, Ls0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ls0;->f:Ljava/lang/Object;

    iput-object p4, p0, Ls0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    iput p5, p0, Ls0;->b:I

    iput-boolean p1, p0, Ls0;->c:Z

    iput-object p2, p0, Ls0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ls0;->e:Ljava/lang/Object;

    iput-object p4, p0, Ls0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Ls0;->b:I

    const-wide v1, 0xffffffffL

    const-string v3, " : "

    const/4 v4, 0x0

    const v5, 0x2fd4df92

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-boolean v9, p0, Ls0;->c:Z

    iget-object v10, p0, Ls0;->f:Ljava/lang/Object;

    iget-object v11, p0, Ls0;->e:Ljava/lang/Object;

    iget-object v12, p0, Ls0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v12, Landroidx/work/ListenableWorker;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Landroidx/work/impl/WorkerWrapper;

    check-cast p1, Ljava/lang/Throwable;

    instance-of p0, p1, Landroidx/work/impl/WorkerStoppedException;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    iget p0, p1, Landroidx/work/impl/WorkerStoppedException;->b:I

    iget-object p1, v12, Landroidx/work/ListenableWorker;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, -0x100

    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_0
    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    iget-object p0, v10, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/Configuration;->n:Landroidx/work/Tracer;

    iget-object p1, v10, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    move-result p1

    invoke-interface {p0, p1, v11}, Landroidx/work/Tracer;->b(ILjava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v12, Ljava/util/List;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lf6;

    invoke-direct {p0, v9, v11, v8}, Lf6;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x551f6c55

    invoke-direct {v0, v1, v8, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v7, v0, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$3;

    invoke-direct {v1, p0, v12}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$4;

    invoke-direct {p0, v12, v9, v10}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v2, v5, v8, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v0, v7, v1, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v12, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    check-cast v10, Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_2

    sget-object p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v12, v4}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;->SIMPLE:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    invoke-interface {v11, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f140336

    invoke-virtual {v10, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, p0}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v1, v12

    check-cast v1, Ljava/util/List;

    move-object v3, v11

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v10

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpl;

    const/4 v5, 0x6

    iget-boolean v2, p0, Ls0;->c:Z

    invoke-direct/range {v0 .. v5}, Lpl;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x34ffc502

    invoke-direct {p0, v1, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v7, p0, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast v12, Ljava/lang/String;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_3

    invoke-static {v12, v3, v11}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {v10, v3, v11}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast v11, Ljava/util/List;

    check-cast v10, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lch0;

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lch0;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$2;

    invoke-direct {v2, p0, v11}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$3;

    invoke-direct {p0, v0, v11}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;

    invoke-direct {v0, v11, v10, v9, v12}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;ZLkotlin/jvm/functions/Function1;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v3, v5, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v1, v2, p0, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast v12, Ljava/lang/String;

    check-cast v11, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast v10, Landroid/content/Context;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v9}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->p(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    sget-object p0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/semantics/Role;->f:I

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->b()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->b()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->b()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast v12, Landroidx/compose/ui/unit/Density;

    check-cast v11, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    if-eqz v9, :cond_7

    iget-boolean p0, v11, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->b:Z

    if-nez p0, :cond_7

    iget-wide p0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr p0, v1

    long-to-int p0, p0

    invoke-interface {v12, p0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result p0

    new-instance p1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v10, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast v12, Landroid/content/Context;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    check-cast v11, Landroidx/media3/exoplayer/ExoPlayer;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_9

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f18000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v4

    :goto_2
    if-eq v0, v8, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2

    :cond_8
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p0

    invoke-interface {v10, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_9
    new-instance p0, Landroidx/media3/ui/PlayerView;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v11}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    invoke-virtual {p0, v4}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    const-string p1, "#000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    return-object p0

    :pswitch_8
    check-cast v12, Landroidx/media3/exoplayer/ExoPlayer;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;

    invoke-direct {p0, v11, v10}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v12, p0}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    new-instance p1, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;

    invoke-direct {p1, v12, p0, v9, v7}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;ZLkotlin/jvm/functions/Function0;)V

    return-object p1

    :pswitch_9
    check-cast v12, Lkotlin/jvm/functions/Function0;

    check-cast v11, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    check-cast v10, Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Y6()V

    invoke-static {v10}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->b(Landroid/content/Context;)V

    :cond_b
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast v12, Landroidx/compose/runtime/MutableFloatState;

    check-cast v11, Landroidx/compose/runtime/MutableFloatState;

    check-cast v10, Landroidx/compose/runtime/MutableFloatState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    sget p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_c

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    and-long/2addr v3, v1

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-interface {v12, p0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v3

    and-long/2addr v3, v1

    long-to-int p0, v3

    int-to-float p0, p0

    invoke-interface {v11, p0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    and-long/2addr v3, v1

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v3

    and-long v0, v3, v1

    long-to-int p1, v0

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-interface {v10, p0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/graphics/ImageBitmap;

    move-object v5, v10

    check-cast v5, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_5

    :cond_d
    if-eqz v9, :cond_e

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide p0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    move-result-wide v9

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->p()V

    :try_start_0
    iget-object v2, v8, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, p0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->f(FFJ)V

    const/4 v6, 0x0

    const/16 v7, 0x2e

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Y(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/ColorFilter;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9, v10}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9, v10}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw p0

    :cond_e
    const/4 v6, 0x0

    const/16 v7, 0x2e

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Y(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/ColorFilter;II)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object p0

    :pswitch_c
    check-cast v12, Ljava/util/List;

    check-cast v11, Ljava/util/List;

    check-cast v10, Ljava/util/List;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget-object p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    xor-int/lit8 v1, v9, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v8, v0}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v11, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    if-eqz v9, :cond_f

    invoke-interface {v10, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    iget-object p0, v11, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;->a:Ljava/lang/String;

    invoke-interface {v12, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
