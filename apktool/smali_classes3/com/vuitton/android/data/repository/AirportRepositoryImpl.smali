.class public final Lcom/vuitton/android/data/repository/AirportRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AirportRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AirportRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AirportRepository;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;",
        "airportLocalDataSource",
        "Lcom/vuitton/android/data/api/connectivity/AirportApi;",
        "airportApi",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;Lcom/vuitton/android/data/api/connectivity/AirportApi;)V",
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
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;

.field public final c:Lcom/vuitton/android/data/api/connectivity/AirportApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;Lcom/vuitton/android/data/api/connectivity/AirportApi;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;->c:Lcom/vuitton/android/data/api/connectivity/AirportApi;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;-><init>(Lcom/vuitton/android/data/repository/AirportRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->c:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->e:I

    const/4 v5, 0x6

    iget-object v6, v1, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;

    const-string v7, ","

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v11, :cond_1

    iget-object v1, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v12, 0x7f130000

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v10, v5}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_10

    check-cast v0, Ljava/util/HashMap;

    iget-object v4, v6, Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;->a:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_f

    iput-object v0, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->b:Ljava/util/HashMap;

    iput v11, v2, Lcom/vuitton/android/data/repository/AirportRepositoryImpl$getAirportList$1;->e:I

    iget-object v1, v1, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;->c:Lcom/vuitton/android/data/api/connectivity/AirportApi;

    invoke-interface {v1, v2}, Lcom/vuitton/android/data/api/connectivity/AirportApi;->getAirportList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_4
    check-cast v0, Lretrofit2/Response;

    iget-object v2, v0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v2, v2, Lokhttp3/Response;->r:Z

    if-eqz v2, :cond_a

    iget-object v0, v0, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v0, Lokhttp3/ResponseBody;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v10, v5}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    new-instance v12, Lcom/vuitton/android/data/dto/travel/AirportDto;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/4 v4, 0x7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-direct/range {v12 .. v20}, Lcom/vuitton/android/data/dto/travel/AirportDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :goto_6
    new-instance v1, Lcom/vuitton/android/data/exception/FileException$CSVFileReadingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move-object v9, v0

    :goto_7
    invoke-direct {v1, v9}, Lcom/vuitton/android/data/exception/FileException$CSVFileReadingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v2, v8

    :goto_8
    if-eqz v2, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/travel/AirportDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;

    iget-object v11, v3, Lcom/vuitton/android/data/dto/travel/AirportDto;->a:Ljava/lang/String;

    iget-object v12, v3, Lcom/vuitton/android/data/dto/travel/AirportDto;->b:Ljava/lang/String;

    iget-object v13, v3, Lcom/vuitton/android/data/dto/travel/AirportDto;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/travel/AirportDto;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_b

    move-object v14, v9

    goto :goto_a

    :cond_b
    move-object v14, v4

    :goto_a
    iget-object v15, v3, Lcom/vuitton/android/data/dto/travel/AirportDto;->f:Ljava/lang/String;

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    move-object v4, v0

    goto :goto_b

    :cond_d
    move-object v4, v8

    :goto_b
    if-eqz v4, :cond_e

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v6, Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;->a:Ljava/util/ArrayList;

    goto :goto_c

    :cond_e
    const-string v0, "Airport webservice returns empty body"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_f
    :goto_c
    return-object v4

    :cond_10
    new-instance v0, Lcom/vuitton/android/data/exception/FileException$CSVFileReadingException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_d

    :cond_11
    move-object v9, v1

    :goto_d
    invoke-direct {v0, v9}, Lcom/vuitton/android/data/exception/FileException$CSVFileReadingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
