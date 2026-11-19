.class public final Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/api/bff/user/AppointmentApi;",
        "appointmentApi",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AppointmentApi;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AppointmentApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;-><init>(Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    new-instance v2, Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;

    invoke-direct {v2, p1}, Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;-><init>(Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1;->d:I

    invoke-interface {p2, v2, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->cancelAppointment(Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/osa/CancelAppointmentResponseItem;

    iget-object p1, p2, Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;->a:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_2
    move v1, p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object p1, p2, Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;->b:Ljava/lang/String;

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/osa/CancelAppointmentResponseItem;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v0, "OSARepositoryImpl"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, v0, v1, p2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object p1

    :cond_8
    throw p2
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;-><init>(Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->getAppointments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;

    iget-object v0, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    instance-of p1, v0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "OSARepositoryImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, v1, v2, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {p0, v0, v0}, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;-><init>(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    return-object p1

    :cond_6
    throw v0
.end method
