.class public final Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "skuId",
        "",
        "name",
        "image",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;",
        "price",
        "",
        "background",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcj;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iput p5, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->e:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->e:I

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", name="

    const-string v1, ", image="

    const-string v2, "SuggestionItemUiModel(skuId="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->e:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
