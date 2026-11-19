.class public final Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BO\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fBg\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;",
        "",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;",
        "appointment",
        "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;",
        "phone",
        "",
        "email",
        "issueDescription",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;",
        "contactMethod",
        "",
        "imageList",
        "postalCode",
        "<init>",
        "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

.field public final b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Llg;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Llg;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Llg;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Llg;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x7

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

    aput-object v2, v3, v4

    const/4 v2, 0x5

    aput-object v0, v3, v2

    const/4 v0, 0x6

    aput-object v1, v3, v0

    sput-object v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0x1e

    const/4 v0, 0x0

    const/16 v1, 0x1e

    if-ne v1, p9, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p9, p1, 0x1

    if-nez p9, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    :goto_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_1

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    :goto_1
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    return-void

    :cond_2
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;",
            "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    .line 60
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    .line 61
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->c:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->d:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    .line 64
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    .line 65
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1

    .line 66
    sget-object p6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    move-object p7, v0

    .line 67
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->c:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    invoke-static {v3, v2, v1}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CareServiceCreationDto(appointment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->b:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", issueDescription="

    const-string v2, ", contactMethod="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->g:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
