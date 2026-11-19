.class public abstract Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00082\u00020\u0001:\u0006\t\n\u000b\u000c\r\u0008B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;",
        "",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "<init>",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "SingleTextDataDto",
        "MultipleTextDataDto",
        "DateDataDto",
        "SlotDataDto",
        "UnknownDataDto",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;

.field public static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lxe;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lxe;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;->a:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
