.class public final synthetic Lv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    iput p2, p0, Lv1;->b:I

    iput-object p3, p0, Lv1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lv1;->e:Ljava/lang/Object;

    iput-object p5, p0, Lv1;->f:Ljava/lang/Object;

    iput p1, p0, Lv1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    const/16 p5, 0x18

    iput p5, p0, Lv1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1;->e:Ljava/lang/Object;

    iput p3, p0, Lv1;->c:I

    iput-object p4, p0, Lv1;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    .line 17
    const/16 p5, 0xa

    iput p5, p0, Lv1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1;->d:Ljava/lang/Object;

    iput p2, p0, Lv1;->c:I

    iput-object p3, p0, Lv1;->e:Ljava/lang/Object;

    iput-object p4, p0, Lv1;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 18
    iput p6, p0, Lv1;->b:I

    iput-object p1, p0, Lv1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1;->e:Ljava/lang/Object;

    iput-object p3, p0, Lv1;->f:Ljava/lang/Object;

    iput p5, p0, Lv1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Color;Ljava/lang/String;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 19
    const/16 p4, 0x12

    iput p4, p0, Lv1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1;->f:Ljava/lang/Object;

    iput-object p3, p0, Lv1;->e:Ljava/lang/Object;

    iput p5, p0, Lv1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 20
    iput p5, p0, Lv1;->b:I

    iput-object p1, p0, Lv1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1;->f:Ljava/lang/Object;

    iput-object p3, p0, Lv1;->e:Ljava/lang/Object;

    iput p4, p0, Lv1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 21
    const/16 v0, 0xc

    iput v0, p0, Lv1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1;->e:Ljava/lang/Object;

    iput-object p2, p0, Lv1;->f:Ljava/lang/Object;

    iput-object p3, p0, Lv1;->d:Ljava/lang/Object;

    iput p4, p0, Lv1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lv1;->b:I

    iget v1, p0, Lv1;->c:I

    const/4 v2, 0x1

    iget-object v3, p0, Lv1;->f:Ljava/lang/Object;

    iget-object v4, p0, Lv1;->e:Ljava/lang/Object;

    iget-object v5, p0, Lv1;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/NoResultSearchComposableKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    check-cast v4, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Landroidx/lifecycle/compose/LifecycleEffectKt;->e(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    check-cast v4, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Landroidx/lifecycle/compose/LifecycleEffectKt;->c(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast v5, Landroidx/lifecycle/Lifecycle$Event;

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    move-object v0, v5

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v1, p0, Lv1;->e:Ljava/lang/Object;

    iget v2, p0, Lv1;->c:I

    iget-object v3, p0, Lv1;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/util/List;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/designkit/components/components/LVVerticalGridKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    check-cast v4, Landroidx/compose/ui/Modifier;

    check-cast v3, Lkotlin/jvm/functions/Function3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->b(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Landroidx/compose/foundation/pager/PagerState;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Lv1;->c:I

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVPageNumberIndicatorKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/util/List;

    check-cast v3, Lkotlin/jvm/functions/Function5;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function5;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v2

    move-object v2, v4

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Lv1;->c:I

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDragHandleKt;->a(Landroidx/compose/ui/graphics/Color;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    move v6, v2

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/util/List;

    check-cast v3, Ljava/util/Locale;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/util/Locale;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    move v6, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleVideoCtaViewKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    move v6, v2

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreNoResultKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    move v6, v2

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    move v6, v2

    check-cast v5, Landroid/view/View;

    check-cast v3, Landroidx/compose/ui/unit/Density;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->b(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    move v6, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v4, v3, v5, p1, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreenKt;->d(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    move v6, v2

    check-cast v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    check-cast v3, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v2, v4

    check-cast v2, Lkotlin/jvm/functions/Function1;

    check-cast v3, Landroidx/compose/material3/DatePickerColors;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x7

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget v1, p0, Lv1;->c:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePickerKt;->f(Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    move v6, v2

    check-cast v5, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    check-cast v4, Landroidx/compose/ui/Modifier;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->a(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    move v6, v2

    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Lv1;->c:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    move v6, v2

    check-cast v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    or-int/2addr p0, v6

    invoke-virtual {v5, v4, v3, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->c(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    move v6, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    check-cast v4, Landroidx/compose/ui/Modifier;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-virtual {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    move v6, v2

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingLegalSectionKt;->c(Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    move v6, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsScreenKt;->c(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    move v6, v2

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v3, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualColorComparatorKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    move v6, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/AssessmentSendComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    move v6, v2

    check-cast v5, Landroidx/compose/foundation/text/selection/OffsetProvider;

    check-cast v4, Landroidx/compose/ui/Alignment;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    move v6, v2

    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

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
