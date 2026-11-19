.class public final Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$$serializer;,
        Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nBA\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\t\u0010\u000e\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;",
        "",
        "",
        "status",
        "",
        "responseId",
        "transactionDate",
        "Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;",
        "data",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer"
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
.field public static final Companion:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$Companion;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->Companion:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-ne v0, p6, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->a:I

    iput-object p3, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$$serializer;->a:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->a:I

    .line 31
    iput-object p2, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;

    iget v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->a:I

    iget v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnlineStoreAppointmentErrorResponseDetailsDto(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
