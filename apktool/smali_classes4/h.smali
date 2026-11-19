.class public final synthetic Lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh;->f:Ljava/lang/Object;

    iput-object p2, p0, Lh;->e:Ljava/lang/Object;

    iput-object p3, p0, Lh;->g:Ljava/lang/Object;

    iput p4, p0, Lh;->c:I

    iput p5, p0, Lh;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lkotlin/Function;II)V
    .locals 0

    .line 18
    iput p6, p0, Lh;->b:I

    iput-object p1, p0, Lh;->e:Ljava/lang/Object;

    iput p2, p0, Lh;->c:I

    iput-object p3, p0, Lh;->f:Ljava/lang/Object;

    iput-object p4, p0, Lh;->g:Ljava/lang/Object;

    iput p5, p0, Lh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 19
    iput p6, p0, Lh;->b:I

    iput-object p1, p0, Lh;->e:Ljava/lang/Object;

    iput-object p2, p0, Lh;->f:Ljava/lang/Object;

    iput-object p3, p0, Lh;->g:Ljava/lang/Object;

    iput p4, p0, Lh;->c:I

    iput p5, p0, Lh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lh;->b:I

    iget v1, p0, Lh;->d:I

    iget v2, p0, Lh;->c:I

    iget-object v3, p0, Lh;->e:Ljava/lang/Object;

    iget-object v4, p0, Lh;->g:Ljava/lang/Object;

    iget-object v5, p0, Lh;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v5

    check-cast v6, Landroidx/compose/material3/SnackbarHostState;

    move-object v7, v3

    check-cast v7, Landroidx/compose/ui/Modifier;

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function3;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget v11, p0, Lh;->d:I

    invoke-static/range {v6 .. v11}, Landroidx/compose/material3/SnackbarHostKt;->b(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v5

    check-cast v1, Ljava/util/List;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCareAndSustainabilityKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->k(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    move-object v2, v5

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-object v3, v4

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lh;->e:Ljava/lang/Object;

    iget v1, p0, Lh;->c:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;->a(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v5

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;

    check-cast v4, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v5

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentCareServiceItemKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v5

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v5

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v5

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget v1, p0, Lh;->c:I

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt;->a(Ljava/util/List;ILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v5

    check-cast v1, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p1

    iget v5, p0, Lh;->d:I

    move-object v2, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
