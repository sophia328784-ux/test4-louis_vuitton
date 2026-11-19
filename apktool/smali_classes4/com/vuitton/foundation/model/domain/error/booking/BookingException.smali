.class public abstract Lcom/vuitton/foundation/model/domain/error/booking/BookingException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/error/booking/BookingException$AppointmentAlreadyExist;,
        Lcom/vuitton/foundation/model/domain/error/booking/BookingException$PrebookWithSameTimeSlot;,
        Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameTimeSlot;,
        Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "PrebookWithSameTimeSlot",
        "AppointmentAlreadyExist",
        "ReservationWithSameType",
        "ReservationWithSameTimeSlot",
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$AppointmentAlreadyExist;",
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$PrebookWithSameTimeSlot;",
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameTimeSlot;",
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameType;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingException;->b:Ljava/lang/String;

    return-object p0
.end method
