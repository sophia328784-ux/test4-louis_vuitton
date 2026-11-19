.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "<init>",
        "()V",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/cache/CacheInterceptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->a:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 32

    move-object/from16 v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->j:Lokhttp3/Cache;

    if-eqz v2, :cond_0

    iget-object v4, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lokhttp3/Cache;->c(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lokhttp3/internal/cache/CacheStrategy$Factory;

    iget-object v8, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-direct {v7, v5, v6, v8, v4}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    iget-object v5, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    iget-object v6, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    iget-wide v8, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    iget-wide v10, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    const-string v12, "If-None-Match"

    iget-object v13, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    const-string v14, "If-Modified-Since"

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    move-object/from16 v16, v5

    iget-object v5, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    if-nez v5, :cond_1

    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :goto_1
    move-object/from16 v26, v1

    move-object/from16 v27, v2

    goto/16 :goto_11

    :cond_1
    move-object/from16 v17, v6

    iget-object v6, v3, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    move-object/from16 v18, v6

    iget-object v6, v3, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual/range {v18 .. v18}, Lokhttp3/HttpUrl;->f()Z

    move-result v18

    if-eqz v18, :cond_3

    move-wide/from16 v18, v8

    iget-object v8, v5, Lokhttp3/Response;->f:Lokhttp3/Handshake;

    if-nez v8, :cond_2

    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v8, 0x0

    invoke-direct {v5, v3, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v8

    goto :goto_2

    :goto_3
    sget-object v9, Lokhttp3/internal/cache/CacheStrategy;->c:Lokhttp3/internal/cache/CacheStrategy$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lokhttp3/internal/cache/CacheStrategy$Companion;->a(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v5, v3, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_1

    :cond_4
    iget-object v8, v3, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    if-nez v8, :cond_5

    sget-object v8, Lokhttp3/CacheControl;->n:Lokhttp3/CacheControl$Companion;

    iget-object v9, v3, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lokhttp3/CacheControl$Companion;->a(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v8

    iput-object v8, v3, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    :cond_5
    iget-boolean v9, v8, Lokhttp3/CacheControl;->a:Z

    if-nez v9, :cond_1a

    invoke-virtual {v6, v14}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1a

    invoke-virtual {v6, v12}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    goto/16 :goto_10

    :cond_6
    invoke-virtual {v5}, Lokhttp3/Response;->h()Lokhttp3/CacheControl;

    move-result-object v9

    move-wide/from16 v20, v10

    const-wide/16 v10, 0x0

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    sub-long v12, v20, v22

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_4

    :cond_7
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-wide v12, v10

    :goto_4
    iget v10, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    int-to-long v1, v10

    invoke-virtual {v15, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_5

    :cond_8
    move-object/from16 v26, v1

    move-object/from16 v27, v2

    :goto_5
    sub-long v1, v20, v18

    move-wide/from16 v28, v12

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide/from16 v30, v1

    iget-wide v1, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->a:J

    sub-long v1, v1, v20

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v12, v28, v30

    add-long/2addr v12, v1

    invoke-virtual {v5}, Lokhttp3/Response;->h()Lokhttp3/CacheControl;

    move-result-object v1

    iget v1, v1, Lokhttp3/CacheControl;->c:I

    const/4 v10, -0x1

    if-eq v1, v10, :cond_9

    int-to-long v1, v1

    invoke-virtual {v15, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    :goto_6
    const-wide/16 v22, 0x0

    goto :goto_b

    :cond_9
    if-eqz v16, :cond_c

    if-eqz v25, :cond_a

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_7

    :cond_a
    move-wide/from16 v1, v20

    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v1, v18, v1

    const-wide/16 v22, 0x0

    cmp-long v11, v1, v22

    if-lez v11, :cond_b

    goto :goto_6

    :cond_b
    const-wide/16 v1, 0x0

    goto :goto_6

    :cond_c
    if-eqz v17, :cond_10

    iget-object v1, v5, Lokhttp3/Response;->b:Lokhttp3/Request;

    iget-object v1, v1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->g:Ljava/util/List;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-static {v11, v1, v2}, Lokhttp3/HttpUrl$Companion;->a(Lokhttp3/HttpUrl$Companion;Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    if-nez v1, :cond_10

    if-eqz v25, :cond_e

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_9

    :cond_e
    move-wide/from16 v1, v18

    :goto_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v1, v1, v18

    const-wide/16 v22, 0x0

    cmp-long v11, v1, v22

    if-lez v11, :cond_f

    const-wide/16 v18, 0xa

    div-long v1, v1, v18

    goto :goto_b

    :cond_f
    :goto_a
    move-wide/from16 v1, v22

    goto :goto_b

    :cond_10
    const-wide/16 v22, 0x0

    goto :goto_a

    :goto_b
    iget v11, v8, Lokhttp3/CacheControl;->c:I

    const/4 v10, -0x1

    if-eq v11, v10, :cond_11

    int-to-long v10, v11

    invoke-virtual {v15, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_11
    iget v10, v8, Lokhttp3/CacheControl;->i:I

    const/4 v11, -0x1

    move-wide/from16 v18, v12

    if-eq v10, v11, :cond_12

    int-to-long v11, v10

    invoke-virtual {v15, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_c

    :cond_12
    move-wide/from16 v11, v22

    :goto_c
    iget-boolean v10, v9, Lokhttp3/CacheControl;->g:Z

    if-nez v10, :cond_13

    iget v8, v8, Lokhttp3/CacheControl;->h:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_13

    move-wide/from16 v20, v11

    int-to-long v10, v8

    invoke-virtual {v15, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    goto :goto_d

    :cond_13
    move-wide/from16 v20, v11

    move-wide/from16 v10, v22

    :goto_d
    iget-boolean v8, v9, Lokhttp3/CacheControl;->a:Z

    if-nez v8, :cond_16

    add-long v8, v18, v20

    add-long/2addr v10, v1

    cmp-long v10, v8, v10

    if-gez v10, :cond_16

    new-instance v6, Lokhttp3/Response$Builder;

    invoke-direct {v6, v5}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    cmp-long v1, v8, v1

    if-ltz v1, :cond_14

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    const-string v2, "Warning"

    iget-object v7, v6, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    invoke-virtual {v7, v2, v1}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-wide/32 v1, 0x5265c00

    cmp-long v1, v18, v1

    if-lez v1, :cond_15

    invoke-virtual {v5}, Lokhttp3/Response;->h()Lokhttp3/CacheControl;

    move-result-object v1

    iget v1, v1, Lokhttp3/CacheControl;->c:I

    const/4 v10, -0x1

    if-ne v1, v10, :cond_15

    if-nez v16, :cond_15

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    const-string v2, "Warning"

    iget-object v5, v6, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    invoke-virtual {v5, v2, v1}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_11

    :cond_16
    iget-object v1, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->k:Ljava/lang/String;

    if-eqz v1, :cond_17

    move-object/from16 v12, v24

    goto :goto_f

    :cond_17
    if-eqz v17, :cond_18

    iget-object v1, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->g:Ljava/lang/String;

    :goto_e
    move-object v12, v14

    goto :goto_f

    :cond_18
    if-eqz v25, :cond_19

    iget-object v1, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->e:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-virtual {v6}, Lokhttp3/Headers;->h()Lokhttp3/Headers$Builder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v12, v1}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, v3}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->h()Lokhttp3/Headers$Builder;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    new-instance v2, Lokhttp3/Request;

    invoke-direct {v2, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v1, v2, v5}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object v5, v1

    goto :goto_11

    :cond_19
    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_11

    :cond_1a
    :goto_10
    move-object/from16 v26, v1

    move-object/from16 v27, v2

    const/4 v6, 0x0

    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v5, v3, v6}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :goto_11
    iget-object v1, v5, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    if-eqz v1, :cond_1c

    iget-object v1, v3, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    if-nez v1, :cond_1b

    sget-object v1, Lokhttp3/CacheControl;->n:Lokhttp3/CacheControl$Companion;

    iget-object v2, v3, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lokhttp3/CacheControl$Companion;->a(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v1

    iput-object v1, v3, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    :cond_1b
    iget-boolean v1, v1, Lokhttp3/CacheControl;->j:Z

    if-eqz v1, :cond_1c

    new-instance v5, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    :goto_12
    iget-object v1, v5, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    iget-object v2, v5, Lokhttp3/internal/cache/CacheStrategy;->b:Lokhttp3/Response;

    if-eqz v27, :cond_1d

    monitor-enter v27

    monitor-exit v27

    :cond_1d
    if-eqz v4, :cond_1e

    if-nez v2, :cond_1e

    iget-object v3, v4, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_1e
    if-nez v1, :cond_1f

    if-nez v2, :cond_1f

    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    const/16 v2, 0x1f8

    iput v2, v1, Lokhttp3/Response$Builder;->c:I

    const-string v2, "Unsatisfiable Request (only-if-cached)"

    iput-object v2, v1, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokhttp3/Response$Builder;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lokhttp3/Response$Builder;->m:J

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    move-object/from16 v3, v26

    invoke-virtual {v0, v3, v1}, Lokhttp3/EventListener;->satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V

    return-object v1

    :cond_1f
    move-object/from16 v3, v26

    if-nez v1, :cond_20

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1, v2}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    invoke-static {v2}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    const-string v4, "cacheResponse"

    invoke-static {v4, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v2, v1, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v0, v3, v1}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    return-object v1

    :cond_20
    if-eqz v2, :cond_21

    iget-object v5, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v5, v3, v2}, Lokhttp3/EventListener;->cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V

    goto :goto_13

    :cond_21
    if-eqz v27, :cond_22

    iget-object v5, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v5, v3}, Lokhttp3/EventListener;->cacheMiss(Lokhttp3/Call;)V

    :cond_22
    :goto_13
    :try_start_0
    move-object/from16 v5, p1

    check-cast v5, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v5, v1}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2c

    iget v5, v4, Lokhttp3/Response;->e:I

    const/16 v7, 0x130

    if-ne v5, v7, :cond_2b

    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1, v2}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    sget-object v5, Lokhttp3/internal/cache/CacheInterceptor;->a:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    iget-object v6, v2, Lokhttp3/Response;->g:Lokhttp3/Headers;

    iget-object v7, v4, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lokhttp3/Headers$Builder;

    invoke-direct {v5}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_14
    if-ge v10, v8, :cond_27

    invoke-virtual {v6, v10}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Warning"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_23

    const-string v13, "1"

    invoke-static {v12, v13, v9}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_23

    goto :goto_16

    :cond_23
    const-string v13, "Content-Length"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25

    const-string v13, "Content-Encoding"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25

    const-string v13, "Content-Type"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24

    goto :goto_15

    :cond_24
    invoke-static {v11}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-virtual {v7, v11}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_26

    :cond_25
    :goto_15
    invoke-static {v5, v11, v12}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_27
    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v6

    :goto_17
    if-ge v9, v6, :cond_2a

    invoke-virtual {v7, v9}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Content-Length"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_29

    const-string v10, "Content-Encoding"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_29

    const-string v10, "Content-Type"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    goto :goto_18

    :cond_28
    invoke-static {v8}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-virtual {v7, v9}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v8, v10}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_2a
    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Headers;->h()Lokhttp3/Headers$Builder;

    move-result-object v5

    iput-object v5, v1, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    iget-wide v5, v4, Lokhttp3/Response;->m:J

    iput-wide v5, v1, Lokhttp3/Response$Builder;->l:J

    iget-wide v5, v4, Lokhttp3/Response;->n:J

    iput-wide v5, v1, Lokhttp3/Response$Builder;->m:J

    invoke-static {v2}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    const-string v6, "cacheResponse"

    invoke-static {v6, v5}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v5, v1, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    invoke-static {v4}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    const-string v6, "networkResponse"

    invoke-static {v6, v5}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v5, v1, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    iget-object v4, v4, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->close()V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v27

    monitor-exit v27

    invoke-static {v2, v1}, Lokhttp3/Cache;->g(Lokhttp3/Response;Lokhttp3/Response;)V

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v0, v3, v1}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    return-object v1

    :cond_2b
    iget-object v5, v2, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-static {v5}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_2c
    new-instance v5, Lokhttp3/Response$Builder;

    invoke-direct {v5, v4}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    if-eqz v2, :cond_2d

    invoke-static {v2}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v7

    goto :goto_19

    :cond_2d
    move-object v7, v6

    :goto_19
    const-string v8, "cacheResponse"

    invoke-static {v8, v7}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v7, v5, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    invoke-static {v4}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4

    const-string v7, "networkResponse"

    invoke-static {v7, v4}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v4, v5, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v4

    if-eqz v27, :cond_32

    invoke-static {v4}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    move-result v5

    if-eqz v5, :cond_31

    sget-object v5, Lokhttp3/internal/cache/CacheStrategy;->c:Lokhttp3/internal/cache/CacheStrategy$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lokhttp3/internal/cache/CacheStrategy$Companion;->a(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v5

    if-eqz v5, :cond_31

    new-instance v5, Lokhttp3/Response$Builder;

    invoke-direct {v5, v4}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    iput-object v1, v5, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    move-object/from16 v5, v27

    invoke-virtual {v5, v1}, Lokhttp3/Cache;->d(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v1

    if-nez v1, :cond_2e

    goto :goto_1a

    :cond_2e
    invoke-interface {v1}, Lokhttp3/internal/cache/CacheRequest;->a()Lokhttp3/Cache$RealCacheRequest$1;

    move-result-object v5

    iget-object v7, v4, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v7

    invoke-static {v5}, Lokio/Okio;->b(Lokio/Sink;)Lokio/RealBufferedSink;

    move-result-object v5

    new-instance v8, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;

    invoke-direct {v8, v7, v1, v5}, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;-><init>(Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/RealBufferedSink;)V

    const-string v1, "Content-Type"

    iget-object v5, v4, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v5, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    move-object v1, v6

    :cond_2f
    iget-object v5, v4, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    new-instance v7, Lokhttp3/Response$Builder;

    invoke-direct {v7, v4}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    new-instance v9, Lokio/RealBufferedSource;

    invoke-direct {v9, v8}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    invoke-direct {v4, v1, v5, v6, v9}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    iput-object v4, v7, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v7}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v4

    :goto_1a
    if-eqz v2, :cond_30

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v0, v3}, Lokhttp3/EventListener;->cacheMiss(Lokhttp3/Call;)V

    :cond_30
    return-object v4

    :cond_31
    move-object/from16 v5, v27

    iget-object v0, v1, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_1
    invoke-virtual {v5, v1}, Lokhttp3/Cache;->e(Lokhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_32
    return-object v4

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_33

    iget-object v1, v4, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_33
    throw v0
.end method
