.class public final enum Lcom/vuitton/foundation/model/domain/error/booking/BookingError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/error/booking/BookingError;",
        "",
        "",
        "errorCode",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "PREBOOK_WITH_SAME_TIME_SLOT",
        "APPOINTMENT_ALREADY_EXIST",
        "RESERVATION_WITH_SAME_TYPE",
        "RESERVATION_WITH_SAME_TIME_SLOT",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

.field public static final enum APPOINTMENT_ALREADY_EXIST:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

.field public static final enum PREBOOK_WITH_SAME_TIME_SLOT:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

.field public static final enum RESERVATION_WITH_SAME_TIME_SLOT:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

.field public static final enum RESERVATION_WITH_SAME_TYPE:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;


# instance fields
.field private final errorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    const/4 v1, 0x0

    const-string v2, "prebookWithSameTimeSlotError"

    const-string v3, "PREBOOK_WITH_SAME_TIME_SLOT"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->PREBOOK_WITH_SAME_TIME_SLOT:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    new-instance v1, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    const/4 v2, 0x1

    const-string v3, "appointmentAlreadyExistError"

    const-string v4, "APPOINTMENT_ALREADY_EXIST"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->APPOINTMENT_ALREADY_EXIST:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    new-instance v2, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    const/4 v3, 0x2

    const-string v4, "reservationWithSameTypeError"

    const-string v5, "RESERVATION_WITH_SAME_TYPE"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->RESERVATION_WITH_SAME_TYPE:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    new-instance v3, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    const/4 v4, 0x3

    const-string v5, "reservationWithSameTimeSlotError"

    const-string v6, "RESERVATION_WITH_SAME_TIME_SLOT"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->RESERVATION_WITH_SAME_TIME_SLOT:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->$VALUES:[Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/error/booking/BookingError;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/error/booking/BookingError;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->$VALUES:[Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->errorCode:Ljava/lang/String;

    return-object p0
.end method
