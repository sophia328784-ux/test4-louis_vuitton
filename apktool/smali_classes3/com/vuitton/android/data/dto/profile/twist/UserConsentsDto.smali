.class public final Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$$serializer;,
        Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\r\u000eB\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;",
        "",
        "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;",
        "kisa",
        "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;",
        "marketing",
        "<init>",
        "(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;

.field public static final c:Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

.field public final b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;

    new-instance v0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    new-instance v1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZ)V

    new-instance v3, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    move-object v7, v2

    move-object v2, v3

    const/4 v3, 0x0

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;-><init>(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V

    sput-object v0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;-><init>(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    .line 26
    iput-object p2, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;-><init>(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

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

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserConsentsDto(kisa="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", marketing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
