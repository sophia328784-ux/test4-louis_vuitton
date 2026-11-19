.class public final Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectItemClicked"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;",
        "Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;",
        "",
        "pageType",
        "currency",
        "itemListId",
        "itemListName",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "itemId",
        "itemName",
        "",
        "price",
        "",
        "index",
        "productItemListId",
        "productItemListName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Double;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_0

    move-object p9, p3

    :cond_0
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_1

    move-object p10, p4

    :cond_1
    const/4 p11, 0x0

    .line 33
    invoke-direct/range {p0 .. p11}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-static {p1, p3, p4, p5, p6}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->g:Ljava/lang/Double;

    iput p8, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->h:I

    iput-object p9, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;

    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->e:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->e:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->g:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->g:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->h:I

    iget v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->j:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->g:Ljava/lang/Double;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->h:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->j:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", currency="

    const-string v1, ", itemListId="

    const-string v2, "SelectItemClicked(pageType="

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemListName="

    const-string v2, ", itemId="

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", itemName="

    const-string v2, ", price="

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->g:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", productItemListId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productItemListName="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, p0, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
