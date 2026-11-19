.class public final Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;",
        "",
        "",
        "isMediaControllerReady",
        "Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;",
        "playerState",
        "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;",
        "currentMedia",
        "",
        "currentPosition",
        "totalDuration",
        "<init>",
        "(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;)V",
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

.field public final b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

.field public final c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

.field public final d:J

.field public final e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 45
    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;-><init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    .line 41
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    .line 42
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    .line 43
    iput-wide p4, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->d:J

    .line 44
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->e:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    move-object p8, v0

    :goto_0
    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    goto :goto_1

    :cond_4
    move-object p8, p6

    goto :goto_0

    :goto_1
    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;-><init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->d:J

    iget-wide v5, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->e:Ljava/lang/Long;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->e:Ljava/lang/Long;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->d:J

    invoke-static {v0, v1, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->e:Ljava/lang/Long;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioPlayerControllerUiState(isMediaControllerReady="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->e:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
