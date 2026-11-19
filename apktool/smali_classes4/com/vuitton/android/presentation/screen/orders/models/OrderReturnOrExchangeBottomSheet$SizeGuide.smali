.class public final Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SizeGuide"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;",
        "requestState",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;)V",
        "SizeGuideRequest",
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
.field public final a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SizeGuide(requestState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
