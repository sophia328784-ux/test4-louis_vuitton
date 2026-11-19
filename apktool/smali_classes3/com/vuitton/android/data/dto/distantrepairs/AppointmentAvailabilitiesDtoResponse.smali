.class public final Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$$serializer;,
        Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB/\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tBE\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;",
        "",
        "",
        "",
        "availableDates",
        "Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;",
        "appointments",
        "message",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lg5;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lg5;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lg5;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lg5;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sput-object v3, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p5, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$$serializer;->a:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", appointments="

    const-string v1, ", message="

    const-string v2, "AppointmentAvailabilitiesDtoResponse(availableDates="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
