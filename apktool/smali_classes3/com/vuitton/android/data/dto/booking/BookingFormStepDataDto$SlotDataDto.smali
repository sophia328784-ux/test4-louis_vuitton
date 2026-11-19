.class public final Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;
.super Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlotDataDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$$serializer;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000c2\u00020\u0001:\u0002\r\u000cB\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B+\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0005\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;",
        "",
        "Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;",
        "dates",
        "<init>",
        "(Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;

.field public static final c:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lxe;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lxe;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Lazy;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->c:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object p1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SlotDataDto(dates="

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    invoke-static {v0, v1, p0}, Ld21;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
