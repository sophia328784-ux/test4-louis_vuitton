.class public final Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardClickEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;",
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;",
        "currentTab",
        "",
        "key",
        "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;",
        "type",
        "",
        "position",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;I)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->d:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardClickEvent(currentTab="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
