.class public final Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$$serializer;,
        Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;",
        "",
        "",
        "availabilityId",
        "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;",
        "appointmentType",
        "Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;",
        "prebookContext",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

.field public final c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lul0;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lul0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lul0;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Lul0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    sput-object v3, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$$serializer;->a:Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrebookAppointmentDtoRequest(availabilityId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prebookContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->c:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
