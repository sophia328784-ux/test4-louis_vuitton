.class public final synthetic Log0;
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
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;I)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Log0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log0;->e:Ljava/lang/Object;

    iput-object p2, p0, Log0;->d:Ljava/lang/Object;

    iput-object p3, p0, Log0;->f:Ljava/lang/Object;

    iput p4, p0, Log0;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 15
    iput p6, p0, Log0;->b:I

    iput-object p1, p0, Log0;->d:Ljava/lang/Object;

    iput-object p2, p0, Log0;->e:Ljava/lang/Object;

    iput-object p3, p0, Log0;->f:Ljava/lang/Object;

    iput p5, p0, Log0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V
    .locals 0

    .line 16
    iput p5, p0, Log0;->b:I

    iput-object p1, p0, Log0;->d:Ljava/lang/Object;

    iput-object p2, p0, Log0;->e:Ljava/lang/Object;

    iput-object p3, p0, Log0;->f:Ljava/lang/Object;

    iput p4, p0, Log0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Log0;->b:I

    iget v1, p0, Log0;->c:I

    const/4 v2, 0x1

    iget-object v3, p0, Log0;->f:Ljava/lang/Object;

    iget-object v4, p0, Log0;->e:Ljava/lang/Object;

    iget-object v5, p0, Log0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/tutorial/TutorialRecommendedKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Log0;->c:I

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/TopBarAvatarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v5, Landroidx/compose/foundation/text/TextLinkScope;

    check-cast v4, [Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-virtual {v5, v4, v3, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope;->b([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListState;

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->c(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/util/List;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/SuccessSearchComposableKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Ljava/util/List;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/SuccessSearchComposableKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast v4, Landroidx/compose/material3/SnackbarData;

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v3, Lkotlin/jvm/functions/Function3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v4, v5, v3, p1, p0}, Landroidx/compose/material3/SnackbarHostKt;->a(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairShippingConfirmationComposableKt;->e(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    check-cast v3, Ljava/lang/Boolean;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Log0;->c:I

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Log0;->c:I

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Log0;->c:I

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->l(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v3, p1, p0}, Lcom/vuitton/android/presentation/screen/search/components/NoResultSearchComposableKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
