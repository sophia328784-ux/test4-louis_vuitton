.class public final Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;",
        "",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lkotlinx/serialization/json/Json;)V",
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


# instance fields
.field public final a:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;->a:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    instance-of v0, p1, Lretrofit2/HttpException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, v0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;->a:Lkotlinx/serialization/json/Json;

    :try_start_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v2, v0}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    :goto_3
    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_3

    move-object p0, v1

    :cond_3
    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    goto :goto_4

    :cond_4
    throw p0

    :cond_5
    move-object p0, v1

    :goto_4
    if-eqz p0, :cond_6

    iget-object v1, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    :cond_6
    sget-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->PREBOOK_WITH_SAME_TIME_SLOT:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$PrebookWithSameTimeSlot;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$PrebookWithSameTimeSlot;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->APPOINTMENT_ALREADY_EXIST:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$AppointmentAlreadyExist;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$AppointmentAlreadyExist;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->RESERVATION_WITH_SAME_TYPE:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameType;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameType;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->RESERVATION_WITH_SAME_TIME_SLOT:Lcom/vuitton/foundation/model/domain/error/booking/BookingError;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingError;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameTimeSlot;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameTimeSlot;-><init>(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-object p1
.end method
