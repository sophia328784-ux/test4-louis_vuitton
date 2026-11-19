.class public final Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;",
        "",
        "",
        "isTwist",
        "isReturnEnabled",
        "isExchangeEnabled",
        "isVATIncluded",
        "<init>",
        "(ZZZZ)V",
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
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->a:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->b:Z

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isReturnEnabled="

    const-string v1, ", isExchangeEnabled="

    const-string v2, "OrderReturnOrExchangeFeatureFlags(isTwist="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVATIncluded="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->d:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
