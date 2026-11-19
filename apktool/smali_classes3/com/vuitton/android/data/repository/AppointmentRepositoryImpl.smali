.class public final Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AppointmentRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AppointmentRepository;",
        "Lcom/vuitton/android/data/api/bff/user/AppointmentApi;",
        "appointmentApi",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/AppointmentApi;Lkotlinx/serialization/json/Json;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

.field public final b:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/AppointmentApi;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->b:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->m:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->m:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->k:Ljava/lang/Object;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->m:I

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v9, :cond_1

    iget v3, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->j:I

    iget v4, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->i:I

    iget v5, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->h:I

    iget v6, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->g:I

    iget v7, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->f:I

    iget-object v10, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->e:Ljava/util/Iterator;

    iget-object v11, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->d:Ljava/util/Collection;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->c:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->b:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v10

    move-object v14, v11

    move v10, v5

    move v11, v6

    move-object v5, v12

    move v12, v7

    move-object v7, v1

    move v1, v4

    goto/16 :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move-object/from16 v5, p3

    move-object v13, v0

    move-object v7, v1

    move-object v14, v3

    move v0, v4

    move v1, v0

    move v10, v1

    move v11, v10

    move v12, v11

    move-object/from16 v3, p1

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v15, v4

    check-cast v15, Ljava/lang/Iterable;

    const-string v16, ","

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    iput-object v3, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->b:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    iput-object v5, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->c:Ljava/lang/String;

    move-object v6, v14

    check-cast v6, Ljava/util/Collection;

    iput-object v6, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->d:Ljava/util/Collection;

    iput-object v13, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->e:Ljava/util/Iterator;

    iput v12, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->f:I

    iput v11, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->g:I

    iput v10, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->h:I

    iput v1, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->i:I

    iput v0, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->j:I

    iput v9, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreTimeSlotList$1;->m:I

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_3

    return-object v8

    :cond_3
    move-object v2, v13

    move-object v13, v3

    move v3, v0

    move-object v0, v4

    :goto_2
    check-cast v0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/distantrepairs/mapper/AppointmentAvailabilitiesMapperKt;->a(Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    move v0, v3

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_4
    check-cast v14, Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_4
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_6
    throw v0
.end method

.method public final b(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;ZLcom/vuitton/foundation/model/domain/model/appointment/PrebookContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p5, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;

    invoke-direct {v0, p0, p5}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p5, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p5, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;)Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/dto/osa/mapper/PrebookContextMapperKt$WhenMappings;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v2, p4

    if-eq p4, v3, :cond_4

    const/4 v2, 0x2

    if-ne p4, v2, :cond_3

    sget-object p4, Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;->CARE_SERVICE:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_4
    sget-object p4, Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;->ONLINE_STORE_APPOINTMENT:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    :goto_1
    invoke-direct {p5, p1, p2, p4}, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$prebookAppointment$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    if-eqz p3, :cond_5

    invoke-interface {p1, p5, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->prebookAppointmentGuest(Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object p5, p1

    goto :goto_3

    :cond_5
    invoke-interface {p1, p5, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->prebookAppointment(Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :goto_3
    if-ne p5, v1, :cond_6

    return-object v1

    :cond_6
    :goto_4
    check-cast p5, Lretrofit2/Response;

    iget-object p1, p5, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_7

    iget-object p1, p5, Lretrofit2/Response;->b:Ljava/lang/Object;

    if-eqz p1, :cond_7

    check-cast p1, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_7
    iget-object p1, p5, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v4

    :goto_5
    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->b:Lkotlinx/serialization/json/Json;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    move-object p0, v4

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    :try_start_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_8

    :cond_a
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_c

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_8
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_b

    move-object p0, v4

    :cond_b
    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    goto :goto_9

    :cond_c
    throw p0

    :cond_d
    move-object p0, v4

    :goto_9
    if-eqz p0, :cond_e

    iget-object p1, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object p1, v4

    :goto_a
    sget-object p2, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsErrorCode;->ALREADY_HAVE_APPOINTMENT:Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsErrorCode;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsErrorCode;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    if-nez p0, :cond_f

    const-string p0, ""

    :cond_f
    invoke-direct {p1, p0}, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p0, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$GenericError;

    invoke-direct {p0}, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$GenericError;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_b
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_c
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_d

    :cond_11
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_15

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_d
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_14

    :try_start_4
    check-cast p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;

    if-eqz p0, :cond_12

    iget-object v4, p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;->a:Ljava/lang/String;

    :cond_12
    if-eqz v4, :cond_13

    move-object p0, v4

    goto :goto_e

    :cond_13
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_14
    :goto_e
    return-object p0

    :cond_15
    throw p1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->m:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->m:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->k:Ljava/lang/Object;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->m:I

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v9, :cond_1

    iget v3, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->j:I

    iget v4, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->i:I

    iget v5, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->h:I

    iget v6, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->g:I

    iget v7, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->f:I

    iget-boolean v10, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->e:Z

    iget-object v11, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->d:Ljava/util/Iterator;

    iget-object v12, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->c:Ljava/util/Collection;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->b:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v11

    move-object v14, v12

    move v11, v6

    move v12, v7

    move v6, v10

    move-object v7, v1

    move v1, v4

    move v10, v5

    goto/16 :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move/from16 v6, p3

    move-object v13, v0

    move-object v7, v1

    move-object v14, v3

    move v0, v4

    move v1, v0

    move v10, v1

    move v11, v10

    move v12, v11

    move-object/from16 v3, p1

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v15, v4

    check-cast v15, Ljava/lang/Iterable;

    const-string v16, ","

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    iput-object v3, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->b:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    move-object v5, v14

    check-cast v5, Ljava/util/Collection;

    iput-object v5, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->c:Ljava/util/Collection;

    iput-object v13, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->d:Ljava/util/Iterator;

    iput-boolean v6, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->e:Z

    iput v12, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->f:I

    iput v11, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->g:I

    iput v10, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->h:I

    iput v1, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->i:I

    iput v0, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->j:I

    iput v9, v7, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getStoreAvailabilityList$1;->m:I

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_3

    return-object v8

    :cond_3
    move-object v2, v13

    move-object v13, v3

    move v3, v0

    move-object v0, v4

    :goto_2
    check-cast v0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v14, v0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    move v0, v3

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_4
    check-cast v14, Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_4
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_6
    throw v0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;->d:I

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

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentsReasons$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->getAppointmentsReasons(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    :try_start_2
    check-cast p0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_6
    :goto_5
    return-object p0

    :cond_7
    throw p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    if-eqz p2, :cond_5

    :try_start_3
    invoke-static {p1}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;)Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;

    move-result-object p1

    iput v4, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->confirmAppointmentGuest(Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->b(Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;)Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;)Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$confirmAppointment$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->confirmAppointment(Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->b(Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;)Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    move-result-object p0

    :goto_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p0
.end method

.method public final f(Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    sget-object p2, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;->a:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;->b:Ljava/lang/String;

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;->c:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;)Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    move-result-object v8

    iget-object v9, p1, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;->e:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDtoMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    move-result-object p1

    move-object v10, p1

    goto :goto_1

    :cond_3
    move-object v10, v4

    :goto_1
    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$modifyAppointment$1;->d:I

    invoke-interface {p0, v5, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->updateAppointment(Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->b(Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;)Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    move-result-object p0

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

.method public final g(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p5, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;

    invoke-direct {v0, p0, p5}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;-><init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p5, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->b:Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->b:Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    if-eqz p4, :cond_7

    sget-object p4, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_5
    :goto_1
    iput-object p3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    invoke-interface {p0, p2, v5, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->getAppointmentAvailabilitiesGuest(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    check-cast p5, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    goto :goto_6

    :cond_7
    sget-object p4, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    if-eq p1, v4, :cond_9

    if-ne p1, v3, :cond_8

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_9
    :goto_3
    iput-object p3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    invoke-interface {p0, p2, v5, v0}, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;->getAppointmentAvailabilities(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    :goto_5
    check-cast p5, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    :goto_6
    if-eqz p3, :cond_f

    iget-object p0, p5, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object p0, p5, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->c:Ljava/lang/String;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    iget-object p0, p5, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->c:Ljava/lang/String;

    new-instance p3, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;

    invoke-direct {p3, p1, p2, p0}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p3

    :cond_f
    return-object p5
.end method
