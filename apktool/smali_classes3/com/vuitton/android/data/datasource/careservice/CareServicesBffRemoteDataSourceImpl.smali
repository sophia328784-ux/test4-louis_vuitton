.class public final Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;",
        "Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;",
        "Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;",
        "careServicesApi",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;

    invoke-direct {p3, p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;)V

    goto :goto_1

    :cond_3
    move-object p3, v4

    :goto_1
    iput v3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAddress$1;->d:I

    invoke-interface {p0, p1, p3, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->updateRepairAddress(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    throw p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$get$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->getRepairDetail(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p1
.end method

.method public final c(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$updateAppointment$1;->d:I

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->updateRepairAppointment(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p0
.end method

.method public final d(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    new-instance p4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;

    invoke-direct {p4, p2, p3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;->d:I

    invoke-interface {p0, p1, p4, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->confirmRepairAddresses(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;

    invoke-direct {p3, p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p3, v4

    :goto_1
    iput v3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$cancel$1;->d:I

    invoke-interface {p0, p1, p3, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->cancelRepair(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    throw p0
.end method

.method public final f(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;

    invoke-direct {p3, p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;)V

    goto :goto_1

    :cond_3
    move-object p3, v4

    :goto_1
    iput v3, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$accept$1;->d:I

    invoke-interface {p0, p1, p3, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->acceptRepair(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    throw p0
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$getAll$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->getRepairs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p1
.end method

.method public final h(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;->a:Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl$create$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;->createRepair(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationResponseDto;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
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

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_5

    check-cast p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationResponseDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationResponseDto;->a:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_5
    invoke-static {p0, v3}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    throw p1
.end method
