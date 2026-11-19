.class public final Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$$serializer;,
        Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bBY\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;",
        "",
        "",
        "callConsent",
        "mailsConsent",
        "newsletterEmailsConsent",
        "smsConsent",
        "marketingSmsConsent",
        "partnerEmailsConsent",
        "emailTrackingConsent",
        "<init>",
        "(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$Companion;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/Boolean;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0xf

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne v1, p9, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    :goto_0
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    iput-object p7, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    :goto_1
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    return-void

    :cond_2
    iput-object p8, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$$serializer;->a:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    .line 58
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    .line 59
    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    .line 60
    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    .line 61
    iput-object p5, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    .line 62
    iput-object p6, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    .line 63
    iput-object p7, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    move-object p7, v0

    .line 64
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", mailsConsent="

    const-string v1, ", newsletterEmailsConsent="

    const-string v2, "MarketingConsentsDto(callConsent="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smsConsent="

    const-string v2, ", marketingSmsConsent="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", partnerEmailsConsent="

    const-string v2, ", emailTrackingConsent="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
