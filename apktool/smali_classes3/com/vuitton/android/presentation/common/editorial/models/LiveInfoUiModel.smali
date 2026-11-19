.class public final Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;",
        "",
        "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;",
        "id",
        "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;",
        "status",
        "Ljava/time/Instant;",
        "countdownTimestamp",
        "",
        "streamUrl",
        "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;",
        "format",
        "replayVideo",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

.field public final c:Ljava/time/Instant;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

.field public final f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    move-object p6, v0

    :cond_3
    const/4 p7, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    .line 30
    iput-object p3, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    .line 31
    iput-object p4, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->d:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    .line 33
    iput-object p6, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/time/Instant;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->f:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiveInfoUiModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countdownTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replayVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
