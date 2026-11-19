.class public final Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;,
        Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011Bu\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;",
        "",
        "",
        "id",
        "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;",
        "appointmentType",
        "startTime",
        "endTime",
        "timeZone",
        "Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;",
        "store",
        "Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;",
        "reason",
        "availabilityId",
        "",
        "isVirtualStudioAppointment",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;

.field public static final j:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

.field public final g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->Companion:Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lg5;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lg5;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->j:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p11, :cond_8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p6, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    goto :goto_4

    :cond_4
    iput-object p7, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    :goto_4
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    goto :goto_5

    :cond_5
    iput-object p8, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    :goto_5
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_6

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p9, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    :goto_6
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_7

    iput-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    return-void

    :cond_7
    iput-object p10, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    return-void

    :cond_8
    sget-object p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    .line 97
    iput-object p3, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    .line 101
    iput-object p7, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    .line 102
    iput-object p8, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    .line 103
    iput-object p9, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_6

    move-object p8, v0

    :cond_6
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_7

    move-object p9, v0

    .line 104
    :cond_7
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppointmentItemDto(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    const-string v2, ", timeZone="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availabilityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualStudioAppointment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
