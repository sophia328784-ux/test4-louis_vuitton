.class public final Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$$serializer;,
        Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BK\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB_\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;",
        "",
        "",
        "newsletterPersonalData",
        "storeAppointmentPersonalData",
        "lvTermsAndUseConsent",
        "mainPersonalDataConsent",
        "additionalPersonalDataConsent",
        "thirdPartiesPersonalDataConsent",
        "promotionPersonalDataConsent",
        "requiredAgeConsent",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZ)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$Companion;


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public final b:Ljava/lang/Boolean;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p10, p1, 0xff

    const/16 v0, 0xff

    if-ne v0, p10, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    iput-boolean p6, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    iput-boolean p7, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    iput-boolean p8, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$$serializer;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    .line 39
    iput-object p2, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    .line 40
    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    .line 41
    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    .line 42
    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    .line 43
    iput-boolean p6, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    .line 44
    iput-boolean p7, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    .line 45
    iput-boolean p8, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    iget-boolean p1, p1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    invoke-static {v1, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KisaConsentsDto(newsletterPersonalData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeAppointmentPersonalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lvTermsAndUseConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainPersonalDataConsent="

    const-string v2, ", additionalPersonalDataConsent="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", thirdPartiesPersonalDataConsent="

    const-string v2, ", promotionPersonalDataConsent="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", requiredAgeConsent="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
