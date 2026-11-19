.class Lcom/dynatrace/android/callback/OkInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final a:Lcom/dynatrace/android/callback/OkInterceptor;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dynatrace/android/callback/OkInterceptor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->a:Lcom/dynatrace/android/callback/OkInterceptor;

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    sget-object p0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    sget-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-nez p0, :cond_2

    :cond_1
    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, p0

    goto :goto_1

    :cond_3
    const-class v2, Ljava/lang/Object;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2}, Lokhttp3/Request;->a(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, p0

    :goto_0
    if-eq v3, v2, :cond_1

    instance-of v3, v2, Lokhttp3/Request;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lokhttp3/Request;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-class v2, Ljava/lang/Object;

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokhttp3/Request;->a(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-nez v3, :cond_5

    move-object v0, v1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/callback/CbWebReqTracker;

    :goto_2
    const/4 v2, 0x0

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v3, "missed request "

    const-string v4, " - orig hc="

    const-string v5, ", cur hc="

    invoke-static {v2, v3, v0, v4, v5}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v4, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    const-string v4, "x-dynatrace"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v5, v4}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v2, "traceparent"

    const-string v3, "tracestate"

    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    iget-object v5, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    iget-object v6, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    if-eqz v6, :cond_d

    iget-object v1, v6, Lcom/dynatrace/android/agent/WebReqTag;->b:Lcom/dynatrace/android/agent/data/Session;

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    iget-object v1, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/agent/events/TracestateHeader;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "Request already instrumented by Dynatrace, skipping Gen3 monitoring"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {p0, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v7, Lcom/dynatrace/agent/events/TracestateHeader;->b:Z

    invoke-static {v1, p0, v7}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    move-result-object p0

    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v4, v2, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Set traceparent: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->c:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v4, v3, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Set tracestate: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->a:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iput-object p0, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->m:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "traceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spanId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_c
    :goto_4
    const-string p0, "x-dynatrace"

    invoke-virtual {v6}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_e

    const-string v0, "Tagged WR %s (hc=%d) with %s"

    invoke-virtual {v5}, Lcom/dynatrace/android/callback/OkRequestStateParms;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    iput-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    :cond_e
    :goto_5
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_f
    sget-boolean v5, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v5, :cond_11

    if-nez v3, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Existing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - linked to hc="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_11
    sget-object v2, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->b:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v2, :cond_12

    iget-object v3, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    if-eqz v3, :cond_12

    iget-wide v3, v3, Lcom/dynatrace/android/agent/WebReqTag;->d:J

    invoke-virtual {v2, v3, v4}, Lcom/dynatrace/android/agent/DTXAutoAction;->F(J)V

    :cond_12
    iput-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
