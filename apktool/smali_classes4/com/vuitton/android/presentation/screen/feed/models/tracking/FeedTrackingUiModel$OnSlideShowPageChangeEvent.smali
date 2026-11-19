.class public final Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;
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
    name = "OnSlideShowPageChangeEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;",
        "",
        "key",
        "",
        "position",
        "page",
        "totalPageNumber",
        "<init>",
        "(Ljava/lang/String;III)V",
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

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->a:Ljava/lang/String;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->b:I

    iput p3, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->c:I

    iput p4, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->b:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->c:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->d:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", position="

    const-string v1, ", page="

    iget v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->b:I

    const-string v3, "OnSlideShowPageChangeEvent(key="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
