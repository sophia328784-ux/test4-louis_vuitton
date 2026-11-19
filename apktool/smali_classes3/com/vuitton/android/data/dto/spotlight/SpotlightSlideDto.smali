.class public final Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$$serializer;,
        Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aBa\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014By\u0008\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "",
        "assetRatio",
        "Lcom/vuitton/android/data/dto/common/AssetVideoDto;",
        "introVideo",
        "outroVideo",
        "",
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;",
        "hotspots",
        "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;",
        "theme",
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;",
        "cta",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;

.field public static final j:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final d:F

.field public final e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

.field public final f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

.field public final g:Ljava/util/List;

.field public final h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

.field public final i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lnw0;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lnw0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lnw0;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lnw0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const/4 v2, 0x7

    aput-object v0, v3, v2

    const/16 v0, 0x8

    aput-object v1, v3, v0

    sput-object v3, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->j:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit16 p11, p1, 0xcf

    const/4 v0, 0x0

    const/16 v1, 0xcf

    if-ne v1, p11, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput p5, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    :goto_0
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    goto :goto_1

    :cond_1
    iput-object p7, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    :goto_1
    iput-object p8, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    iput-object p9, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    return-void

    :cond_2
    iput-object p10, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/common/AssetDto;",
            "F",
            "Lcom/vuitton/android/data/dto/common/AssetVideoDto;",
            "Lcom/vuitton/android/data/dto/common/AssetVideoDto;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;",
            "Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 64
    iput p4, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    .line 65
    iput-object p5, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    .line 66
    iput-object p6, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    .line 67
    iput-object p7, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    .line 68
    iput-object p8, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    .line 69
    iput-object p9, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_2

    move-object p9, v0

    .line 70
    :cond_2
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    iget v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    invoke-static {v2, v1, v0}, Lpq0;->b(IIF)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", asset="

    const-string v2, "SpotlightSlideDto(id="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", introVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outroVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hotspots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
