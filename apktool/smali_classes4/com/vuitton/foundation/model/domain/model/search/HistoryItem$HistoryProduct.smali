.class public final Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;
.super Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryProduct"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;",
        "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "label",
        "image",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;",
        "background",
        "Ljava/time/LocalDateTime;",
        "dateTime",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;",
        "price",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "domain"
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

.field public final d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

.field public final e:Ljava/time/LocalDateTime;

.field public final f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move-object p6, v0

    :cond_1
    const/4 p7, 0x0

    .line 29
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p7, 0x0

    invoke-direct {p0, p7}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    return-void
.end method

.method public static b(Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;Ljava/time/LocalDateTime;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;
    .locals 8

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    const/4 v7, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", label="

    const-string v1, ", image="

    const-string v2, "HistoryProduct(sku="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
