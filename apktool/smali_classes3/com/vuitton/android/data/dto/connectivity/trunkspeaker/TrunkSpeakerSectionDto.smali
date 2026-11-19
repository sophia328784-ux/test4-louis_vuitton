.class public final Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nBE\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;",
        "",
        "",
        "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;",
        "faq",
        "",
        "skuList",
        "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;",
        "video",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ll31;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ll31;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Ll31;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Ll31;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sput-object v3, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 32
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 37
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", skuList="

    const-string v1, ", video="

    const-string v2, "TrunkSpeakerSectionDto(faq="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
