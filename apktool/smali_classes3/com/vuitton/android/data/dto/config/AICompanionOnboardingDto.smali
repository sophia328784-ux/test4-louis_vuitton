.class public final Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$$serializer;,
        Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;",
        "",
        "",
        "backgroundColor",
        "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;",
        "theme",
        "Lcom/vuitton/android/data/dto/common/AssetVideoDto;",
        "video",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->Companion:Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lv;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lv;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne v1, p5, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    sget-object p1, Lcom/vuitton/android/data/dto/common/FeatureThemeDto;->LIGHT:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    :goto_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$$serializer;->a:Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    .line 45
    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 46
    sget-object p2, Lcom/vuitton/android/data/dto/common/FeatureThemeDto;->LIGHT:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    .line 47
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AICompanionOnboardingDto(backgroundColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
