.class public final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;",
        "product",
        "Lcom/vuitton/android/presentation/model/common/AssetUiModel;",
        "brandContent",
        "",
        "launchAnimation",
        "isInWishlist",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZ)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

.field public final b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZ)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZZI)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    :cond_0
    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThemeItemUiModel(product="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brandContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launchAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInWishlist="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
