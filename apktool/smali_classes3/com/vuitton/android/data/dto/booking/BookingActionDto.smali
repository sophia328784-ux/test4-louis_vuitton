.class public final Lcom/vuitton/android/data/dto/booking/BookingActionDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/BookingActionDto$$serializer;,
        Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/BookingActionDto;",
        "",
        "Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;",
        "type",
        "Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;",
        "data",
        "<init>",
        "(Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;

.field public static final c:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

.field public final b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lw9;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lw9;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->c:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p4, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingActionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingActionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    .line 33
    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/data/dto/booking/BookingActionDto;-><init>(Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/booking/BookingActionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/BookingActionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BookingActionDto(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
