.class public final Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;,
        Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002\u0013\u0014Bo\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;",
        "",
        "Landroidx/compose/runtime/MutableState;",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;",
        "data",
        "",
        "isLoading",
        "",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;",
        "colorList",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;",
        "price",
        "",
        "commercialTags",
        "isVATIncluded",
        "launchAnimation",
        "shareUrl",
        "<init>",
        "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;)V",
        "SkuDataUiModel",
        "PriceInfoUiModel",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/compose/runtime/MutableState;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Landroidx/compose/runtime/MutableState;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    .line 49
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b:Landroidx/compose/runtime/MutableState;

    .line 50
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    .line 52
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->e:Ljava/util/List;

    .line 53
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->f:Z

    .line 54
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    .line 55
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, v0, 0x40

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    move-object v7, p2

    goto :goto_0

    :cond_1
    move-object/from16 v7, p7

    :goto_0
    and-int/lit16 p2, v0, 0x80

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    move-object v8, p2

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    goto :goto_2

    :cond_2
    move-object/from16 v8, p8

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->d:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b()Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;->a:Ljava/lang/String;

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;->b:Z

    if-eqz v5, :cond_1

    const v5, 0x7f141016

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;->c:Z

    if-eqz v2, :cond_3

    const v2, 0x7f140a7a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v3, 0x7f120001

    invoke-virtual {p1, v3, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->j:Z

    if-eqz p0, :cond_5

    const p0, 0x7f140381

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->k:Z

    if-eqz p0, :cond_6

    const p0, 0x7f140320

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->i:Z

    if-eqz p0, :cond_7

    const p0, 0x7f140378

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->b:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->a:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->f:Z

    invoke-direct {v0, v2, v1, p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;-><init>(Ljava/lang/String;ZZ)V

    :cond_1
    return-object v0
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;
    .locals 12

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->c:Ljava/lang/Double;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    :cond_1
    move-object v9, v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    const/4 v11, 0x0

    move v10, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b:Landroidx/compose/runtime/MutableState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->e:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->h:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlpProductUiModel(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commercialTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVATIncluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", launchAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
