.class public final Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$$serializer;,
        Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB7\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;",
        "",
        "",
        "privacyPolicy",
        "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;",
        "kisa",
        "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;",
        "marketing",
        "<init>",
        "(ZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$Companion;


# instance fields
.field public final a:Z

.field public final b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

.field public final c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->Companion:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->a:Z

    iput-object p3, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$$serializer;->a:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->a:Z

    .line 28
    iput-object p2, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterConsentsDto(privacyPolicy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", kisa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", marketing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
