.class public final Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$$serializer;,
        Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B5\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;",
        "",
        "",
        "",
        "suggestions",
        "Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;",
        "onboarding",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;

.field public static final c:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lv;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lv;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-array v2, v3, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->c:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-ne v0, p4, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AICompanionConfigCache(suggestions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onboarding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
