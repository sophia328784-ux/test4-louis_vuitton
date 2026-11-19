.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectSkuMultipleProductBottomSheetEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;",
        "",
        "isSelected",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;",
        "beautyVtoMode",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "productSkuList",
        "<init>",
        "(ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->a:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->c:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelectSkuMultipleProductBottomSheetEvent(isSelected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", beautyVtoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productSkuList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->c:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
