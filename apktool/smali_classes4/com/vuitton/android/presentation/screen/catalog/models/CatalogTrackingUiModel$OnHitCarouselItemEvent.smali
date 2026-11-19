.class public final Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;
.super Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnHitCarouselItemEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;",
        "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;",
        "",
        "categoryName",
        "",
        "position",
        "<init>",
        "(Ljava/lang/String;I)V",
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

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->a:Ljava/lang/String;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->b:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnHitCarouselItemEvent(categoryName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
