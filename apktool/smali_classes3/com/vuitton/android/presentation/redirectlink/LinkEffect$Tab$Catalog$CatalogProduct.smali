.class public final Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;
.super Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CatalogProduct"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "",
        "isFromNativeShare",
        "<init>",
        "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;

    iget-object v1, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->c:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->c:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", isFromNativeShare="

    const-string v1, ")"

    const-string v2, "CatalogProduct(sku="

    iget-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->b:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->c:Z

    invoke-static {v2, v3, v0, v1, p0}, Ld21;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
