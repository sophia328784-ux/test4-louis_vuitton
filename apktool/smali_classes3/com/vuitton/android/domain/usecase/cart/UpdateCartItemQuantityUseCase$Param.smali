.class public final Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Param"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;",
        "",
        "",
        "itemId",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "quantity",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->b:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->b:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->c:I

    iget p1, p1, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->c:I

    if-eq p0, p1, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", sku="

    const-string v1, ", quantity="

    const-string v2, "Param(itemId="

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;->c:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
