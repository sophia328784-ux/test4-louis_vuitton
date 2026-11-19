.class public final Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$$serializer;,
        Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BC\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rBM\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;",
        "",
        "Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;",
        "sectionPromise",
        "Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;",
        "earphoneSection",
        "Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;",
        "horizonSpeakerSection",
        "Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;",
        "trunkSpeakerSection",
        "Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;",
        "sectionWatchV3",
        "<init>",
        "(Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

.field public final b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

.field public final c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

.field public final d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

.field public final e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 50
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;-><init>(Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    return-void

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    .line 53
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    .line 54
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    .line 55
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    .line 56
    iput-object p5, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 57
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;-><init>(Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

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

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SectionConnectedObjectDto(sectionPromise="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", earphoneSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", horizonSpeakerSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trunkSpeakerSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sectionWatchV3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
