.class public final Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$$serializer;,
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eBW\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;",
        "",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;",
        "titlesDuringCountdown",
        "titlesAfterCountdown",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;",
        "ratio",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;",
        "content",
        "",
        "deadline",
        "<init>",
        "(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

.field public final b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

.field public final e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lm10;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lm10;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p1, 0x2f

    const/4 v0, 0x0

    const/16 v1, 0x2f

    if-ne v1, p8, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    :goto_0
    iput-object p7, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    .line 42
    iput-object p2, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    .line 43
    iput-object p3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 44
    iput-object p4, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    .line 45
    iput-object p5, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    .line 46
    iput-object p6, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;-><init>(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveArticleEventDataDto(titlesDuringCountdown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titlesAfterCountdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
