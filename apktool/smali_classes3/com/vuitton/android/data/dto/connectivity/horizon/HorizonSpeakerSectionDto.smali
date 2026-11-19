.class public final Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BI\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBU\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;",
        "",
        "",
        "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;",
        "faq",
        "",
        "skuList",
        "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;",
        "tutorial",
        "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;",
        "video",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ltx;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ltx;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Ltx;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ltx;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Lm10;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lm10;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlin/Lazy;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const/4 v0, 0x3

    aput-object v1, v4, v0

    sput-object v4, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 41
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x0

    if-nez p6, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    :goto_2
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    return-void

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V
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
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 47
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", skuList="

    const-string v1, ", tutorial="

    const-string v2, "HorizonSpeakerSectionDto(faq="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
