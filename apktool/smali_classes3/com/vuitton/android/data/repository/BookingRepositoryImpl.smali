.class public final Lcom/vuitton/android/data/repository/BookingRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/BookingRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/BookingRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/BookingRepository;",
        "Lcom/vuitton/android/data/api/bff/user/BookingApi;",
        "bookingApi",
        "Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;",
        "bookingHttpErrorMapper",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/BookingApi;Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

.field public final b:Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;

.field public final c:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/BookingApi;Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->b:Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getConfirmedBookings$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->getConfirmedBookings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/booking/BookingDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->a(Lcom/vuitton/android/data/dto/booking/BookingDto;)Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    throw p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingPass$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->getBookingPass(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/booking/BookingPassDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingPassDtoMapperKt;->a(Lcom/vuitton/android/data/dto/booking/BookingPassDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;

    iget v4, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;

    invoke-direct {v3, v1, v2}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->c:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->e:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v2, v1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->e:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->f:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->g:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->i:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;->k:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v7 .. v18}, Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    const/4 v0, 0x1

    iput v0, v3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$confirmPreBook$1;->e:I

    invoke-interface {v2, v7, v3}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->confirmPreBook(Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    :goto_1
    check-cast v2, Lcom/vuitton/android/data/dto/booking/PreBookConfirmResponseDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmation;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/booking/PreBookConfirmResponseDto;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmation;-><init>(Ljava/lang/String;)V

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_5

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_4
    check-cast v2, Lkotlin/Result;

    iget-object v0, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    throw v0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getPreBookSummary$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->getPreBookSummary(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/booking/mapper/PreBookSummaryMapperKt;->a(Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;)Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getMegatrio$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->getMegatrio(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/booking/mapper/BookingMegatrioMapperKt;->a(Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingMegatrio;

    move-result-object p1

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "BookingRepositoryImpl"

    const-string v1, "Failed to get booking megatrio"

    invoke-interface {p0, p1, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    return-object p1

    :cond_6
    throw p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p4, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookingForm$1;->d:I

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->getBookingForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;

    invoke-static {p4}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormMapperKt;->b(Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-result-object p1

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_6

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p2, p1

    :goto_4
    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "BookingRepositoryImpl"

    const-string p3, "Failed to get booking form"

    invoke-interface {p0, p1, p3, p2}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    return-object p1

    :cond_6
    throw p1
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    const/4 v2, 0x3

    invoke-static {p1, v4, v4, v2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormUpdateMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    move-result-object p1

    iput-object p0, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$addPreBook$1;->e:I

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->addPreBook(Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/booking/mapper/PreBookSummaryMapperKt;->a(Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;)Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    move-result-object p1

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_5

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p2, p1

    :goto_4
    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p1
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deletePreBook$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->deletePreBook(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/booking/mapper/PreBookSummaryMapperKt;->a(Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;)Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final i(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    invoke-static {p2, v4, p1, v3}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormUpdateMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    move-result-object p2

    iput-object p0, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updateBooking$1;->e:I

    invoke-interface {p3, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->updateBooking(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/booking/BookingListDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->d(Lcom/vuitton/android/data/dto/booking/BookingListDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    move-result-object p1

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_5

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p2, p1

    :goto_4
    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p1
.end method

.method public final j(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    const/4 v2, 0x2

    invoke-static {p2, p1, v4, v2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormUpdateMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    move-result-object p2

    iput-object p0, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->b:Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$updatePreBook$1;->e:I

    invoke-interface {p3, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->updatePreBook(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/booking/mapper/PreBookSummaryMapperKt;->a(Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;)Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    move-result-object p1

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_5

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p2, p1

    :goto_4
    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p1
.end method

.method public final k(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p4, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    invoke-static {p1, p2, p3}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormUpdateMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$postBookingFormUpdate$1;->d:I

    invoke-interface {p4, p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->postBookingsFormUpdate(Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/vuitton/android/data/dto/booking/PrebookFormDataResponseDto;

    iget-object p1, p4, Lcom/vuitton/android/data/dto/booking/PrebookFormDataResponseDto;->a:Lcom/vuitton/android/data/dto/booking/BookingFormDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/booking/BookingFormDto;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormMapperKt;->a(Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_6

    :cond_7
    :try_start_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "BookingRepositoryImpl"

    const-string p3, "Failed to update booking form"

    invoke-interface {p0, p1, p3, p2}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    return-object p1

    :cond_8
    throw p2
.end method

.method public final l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$getBookings$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->getBookings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/BookingListDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->d(Lcom/vuitton/android/data/dto/booking/BookingListDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    move-result-object p1

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "BookingRepositoryImpl"

    const-string v1, "Failed to get bookings"

    invoke-interface {p0, p1, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    return-object p1

    :cond_6
    throw p1
.end method

.method public final m(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteAllPreBook$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->deleteAllPreBook(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final n(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;-><init>(Lcom/vuitton/android/data/repository/BookingRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/BookingApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl$deleteBooking$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/BookingApi;->deleteBooking(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/booking/BookingListDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->d(Lcom/vuitton/android/data/dto/booking/BookingListDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;->b:Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
