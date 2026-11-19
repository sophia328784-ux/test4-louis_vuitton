.class public final synthetic Llr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Llr0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llr0;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iput-object p2, p0, Llr0;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;I)V
    .locals 0

    .line 11
    iput p3, p0, Llr0;->b:I

    iput-object p1, p0, Llr0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Llr0;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Llr0;->b:I

    iget-object v1, p0, Llr0;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object p0, p0, Llr0;->c:Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    packed-switch v0, :pswitch_data_0

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-nez p1, :cond_1

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;->DOUBLE_CLICK:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;->DOUBLE_CLICK:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
