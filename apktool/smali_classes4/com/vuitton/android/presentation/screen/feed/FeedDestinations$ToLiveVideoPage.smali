.class public final Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToLiveVideoPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;",
        "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;",
        "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;",
        "liveVideoId",
        "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;",
        "format",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    if-eq p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ToLiveVideoPage(liveVideoId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
