.class public final Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickOnMoreDetailsEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "",
        "location",
        "Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;",
        "store",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

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

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", location="

    const-string v1, ", store="

    const-string v2, "ClickOnMoreDetailsEvent(sku="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
