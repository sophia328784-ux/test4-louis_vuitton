.class public final Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;",
        "",
        "Lcom/vuitton/android/data/api/bff/user/PassApi;",
        "passApi",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/datasource/pass/MultipartParser;",
        "multipartParser",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/PassApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pass/MultipartParser;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/PassApi;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/data/datasource/pass/MultipartParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/PassApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pass/MultipartParser;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->a:Lcom/vuitton/android/data/api/bff/user/PassApi;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->c:Lcom/vuitton/android/data/datasource/pass/MultipartParser;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "MultipartParser"

    const-string v3, "Response body is null"

    const-string v4, "Content-Type header not found"

    const-string v5, "Boundary not found in Content-Type"

    const-string v6, "Content-Type: "

    instance-of v7, v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;

    if-eqz v7, :cond_0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;

    iget v8, v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;->d:I

    const/high16 v9, -0x80000000

    and-int v10, v8, v9

    if-eqz v10, :cond_0

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;

    invoke-direct {v7, v1, v0}, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;-><init>(Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;->b:Ljava/lang/Object;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v9, v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;->d:I

    iget-object v10, v1, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->b:Lcom/vuitton/foundation/logger/Logger;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    if-ne v9, v11, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v1, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->a:Lcom/vuitton/android/data/api/bff/user/PassApi;

    iput v11, v7, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPass$1;->d:I

    move-object/from16 v9, p1

    invoke-interface {v0, v9, v7}, Lcom/vuitton/android/data/api/bff/user/PassApi;->getPass(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_3

    return-object v8

    :cond_3
    :goto_1
    check-cast v0, Lretrofit2/Response;

    iget-object v7, v0, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v7, Lokhttp3/ResponseBody;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "PassNetworkDataSource"

    if-eqz v7, :cond_6

    :try_start_2
    iget-object v0, v0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-object v0, v0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "boundary="

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;)[B

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    invoke-interface {v10, v8, v5, v12}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v10, v8, v4, v12}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v10, v8, v3, v12}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    instance-of v0, v3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1e

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1b

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Pair;

    iget-object v3, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->c:Lcom/vuitton/android/data/datasource/pass/MultipartParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "\r\n"

    const-string v5, "\r\n--"

    const-string v6, "--"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lkotlin/text/Charsets;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--\r\n"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v8}, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->b([B[B)Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/collections/AbstractMutableList;->f()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_18

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-static {v13, v4}, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->b([B[B)Lkotlin/collections/builders/ListBuilder;

    move-result-object v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v14}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move/from16 p2, v11

    move-object v11, v14

    check-cast v11, [B

    array-length v9, v11

    if-nez v9, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v11, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_7
    move/from16 v11, p2

    const/4 v9, 0x2

    goto :goto_6

    :catchall_3
    move-exception v0

    goto/16 :goto_f

    :cond_a
    move/from16 p2, v11

    invoke-static {v8, v15}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    move/from16 v11, p2

    const/4 v9, 0x2

    goto :goto_5

    :cond_b
    move/from16 p2, v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v8, "\r\n\r\n"

    sget-object v9, Lkotlin/text/Charsets;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v4, v8}, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->a(I[B[B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    const-string v4, "Invalid part: Missing headers"

    invoke-interface {v1, v2, v4, v12}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_c
    new-instance v11, Ljava/lang/String;

    invoke-static {v4, v14, v8}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v13

    sget-object v15, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v13, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    add-int/lit8 v8, v8, 0x4

    array-length v13, v4

    array-length v15, v5

    if-ge v13, v15, :cond_d

    goto :goto_a

    :cond_d
    array-length v13, v5

    move v15, v14

    :goto_9
    if-ge v15, v13, :cond_f

    array-length v12, v4

    array-length v9, v5

    sub-int/2addr v12, v9

    add-int/2addr v12, v15

    aget-byte v9, v4, v12

    aget-byte v12, v5, v15

    if-eq v9, v12, :cond_e

    :goto_a
    array-length v9, v4

    invoke-static {v4, v8, v9}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v4

    goto :goto_b

    :cond_e
    add-int/lit8 v15, v15, 0x1

    const/4 v9, -0x1

    const/4 v12, 0x0

    goto :goto_9

    :cond_f
    array-length v9, v4

    array-length v12, v5

    sub-int/2addr v9, v12

    invoke-static {v4, v8, v9}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v4

    :goto_b
    const-string v8, "application/json"

    invoke-static {v11, v8, v14}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lkotlin/text/Charsets;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v4, v8}, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->a(I[B[B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    invoke-static {v4, v14, v8}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v4

    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_11

    array-length v8, v4

    sub-int/2addr v8, v9

    aget-byte v8, v4, v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_10

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v4, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_10

    array-length v8, v4

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    invoke-static {v4, v14, v8}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v4

    goto :goto_c

    :cond_10
    const/4 v9, 0x2

    :cond_11
    :goto_c
    new-instance v8, Lkotlin/text/Regex;

    const-string v12, "Content-Disposition:.*?name=\"(.*?)\""

    invoke-direct {v8, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-interface {v8}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_16

    move/from16 v11, p2

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_15

    sget-object v12, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->Companion:Lcom/vuitton/android/data/dto/pass/ContentDispositionName$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->a()Lkotlin/enums/EnumEntries;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    invoke-virtual {v15}, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->b()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_d

    :cond_13
    const/4 v13, 0x0

    :goto_d
    check-cast v13, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    if-nez v13, :cond_14

    sget-object v13, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->UNKNOWN:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    :cond_14
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v7, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_e
    move/from16 p2, v11

    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_16
    move/from16 v11, p2

    goto :goto_e

    :cond_17
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v7}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_10

    :cond_18
    new-instance v0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;

    const-string v3, "Error parsing multipart No parts found with initial boundary"

    invoke-direct {v0, v3}, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_f
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_10
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_11

    :cond_19
    instance-of v0, v3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1a

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    :goto_11
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1c

    const-string v4, "Error parsing multipart response"

    invoke-interface {v1, v2, v4, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_1a
    throw v3

    :cond_1b
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_12
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_1d

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1d
    return-object v0

    :cond_1e
    throw v3
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;-><init>(Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;->d:I

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

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->a:Lcom/vuitton/android/data/api/bff/user/PassApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$getPassEligibility$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/PassApi;->getPassEligibility(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/pass/LVPassEligibilityDto;

    iget-object p0, p2, Lcom/vuitton/android/data/dto/pass/LVPassEligibilityDto;->a:Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-static {p0, v3}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    throw p0
.end method
