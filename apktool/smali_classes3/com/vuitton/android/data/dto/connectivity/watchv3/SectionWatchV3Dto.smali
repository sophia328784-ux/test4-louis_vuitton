.class public final Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$$serializer;,
        Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014Ba\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eBi\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;",
        "",
        "",
        "assetTutorial",
        "assetWatchVideo",
        "",
        "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;",
        "sectionFaq",
        "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;",
        "sectionTutorials",
        "Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;",
        "sectionWatchVideo",
        "skuList",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->Companion:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lit0;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lit0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lit0;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lit0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Lit0;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lit0;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v4, 0x6

    new-array v4, v4, [Lkotlin/Lazy;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    const/4 v1, 0x5

    aput-object v0, v4, v1

    sput-object v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 59
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x0

    if-nez p8, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    :goto_4
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    return-void

    :cond_5
    iput-object p7, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    .line 64
    iput-object p4, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    .line 65
    iput-object p5, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    .line 66
    iput-object p6, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    .line 67
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", assetWatchVideo="

    const-string v1, ", sectionFaq="

    const-string v2, "SectionWatchV3Dto(assetTutorial="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sectionTutorials="

    const-string v2, ", sectionWatchVideo="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skuList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
