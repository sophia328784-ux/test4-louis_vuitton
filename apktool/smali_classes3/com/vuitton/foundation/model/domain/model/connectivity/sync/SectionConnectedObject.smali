.class public final Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;",
        "sectionPromise",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;",
        "earphoneSection",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;",
        "horizonSpeakerSection",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;",
        "trunkSpeakerSection",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;",
        "sectionWatchV3",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;)V",
        "domain"
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

.field public final b:Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

.field public final c:Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

.field public final d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

.field public final e:Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 36
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    .line 32
    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

    .line 33
    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

    .line 34
    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    .line 35
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SectionConnectedObject(sectionPromise="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", earphoneSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", horizonSpeakerSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trunkSpeakerSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sectionWatchV3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
