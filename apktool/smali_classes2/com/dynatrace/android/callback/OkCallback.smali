.class public Lcom/dynatrace/android/callback/OkCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lokhttp3/Call;Lokhttp3/Callback;)V
    .locals 4

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lokhttp3/Call;->r(Lokhttp3/Callback;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/dynatrace/android/callback/OkRequestStateParms;

    invoke-interface {p0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->enqueue:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    sget-object v3, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-direct {v0, v1, v2, v3}, Lcom/dynatrace/android/callback/OkRequestStateParms;-><init>(Lokhttp3/Request;Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    invoke-static {v0}, Lcom/dynatrace/android/callback/OkCallback;->f(Lcom/dynatrace/android/callback/OkRequestStateParms;)V

    :try_start_0
    invoke-interface {p0, p1}, Lokhttp3/Call;->r(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "tracked failed \'enqueue\' method call"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p1, v1}, Lcom/dynatrace/android/callback/OkCallback;->g(Lcom/dynatrace/android/callback/WebReqStateParms;ILjava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    throw p0
.end method

.method public static b(Lokhttp3/Call;)Lokhttp3/Response;
    .locals 5

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/dynatrace/android/callback/OkRequestStateParms;

    invoke-interface {p0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->execute:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    sget-object v3, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-direct {v0, v1, v2, v3}, Lcom/dynatrace/android/callback/OkRequestStateParms;-><init>(Lokhttp3/Request;Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/OkCallback;->f(Lcom/dynatrace/android/callback/OkRequestStateParms;)V

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/dynatrace/android/callback/OkRequestStateParms;->j(Lokhttp3/Response;)V

    const-string v2, "Server-Timing"

    iget-object v3, p0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v3, v2}, Lokhttp3/Headers;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dynatrace/android/callback/WebReqStateParms;->a(Ljava/util/List;)V

    iget-object v2, p0, Lokhttp3/Response;->c:Lokhttp3/Protocol;

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-eq v2, v3, :cond_2

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v2, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    :goto_1
    iget v3, p0, Lokhttp3/Response;->e:I

    sget-object v4, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/dynatrace/android/callback/OkCallback;->g(Lcom/dynatrace/android/callback/WebReqStateParms;ILjava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    const-string v2, "tracked failed \'execute\' method call"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/dynatrace/android/callback/OkCallback;->g(Lcom/dynatrace/android/callback/WebReqStateParms;ILjava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    throw p0
.end method

.method public static c(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    iget-object p0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    sget-object v1, Lcom/dynatrace/android/callback/OkInterceptor;->a:Lcom/dynatrace/android/callback/OkInterceptor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/callback/OkHeaderInterceptor;->a:Lcom/dynatrace/android/callback/OkHeaderInterceptor;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    return-void
.end method

.method public static d(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/callback/CbWebReqTracker;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    iput-object p1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/dynatrace/android/callback/OkCallback;->g(Lcom/dynatrace/android/callback/WebReqStateParms;ILjava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/callback/CbWebReqTracker;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    invoke-virtual {v0, p1}, Lcom/dynatrace/android/callback/OkRequestStateParms;->j(Lokhttp3/Response;)V

    iget-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    const-string v1, "Server-Timing"

    iget-object v2, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->a(Ljava/util/List;)V

    iget-object v0, p1, Lokhttp3/Response;->c:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    :goto_1
    iget-object p0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    iget p1, p1, Lokhttp3/Response;->e:I

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {p0, p1, v0, v2, v1}, Lcom/dynatrace/android/callback/OkCallback;->g(Lcom/dynatrace/android/callback/WebReqStateParms;ILjava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static f(Lcom/dynatrace/android/callback/OkRequestStateParms;)V
    .locals 7

    iget-object v0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "%s of %s of %s to %s (%d)"

    iget-object v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    const-class v3, Lokhttp3/Request;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/OkRequestStateParms;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/OkInterceptor;->b:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/callback/CbWebReqTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    sget-object v3, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v4, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    if-ne v3, v4, :cond_c

    iget-object v1, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    move-object v1, v2

    goto/16 :goto_2

    :cond_2
    sget-object v3, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "OneAgent not correctly initialized"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v4, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v3, v4}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "x-dynatrace"

    iget-object v4, v1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "Ignore WR %s to %s (hc=%d)"

    const-class v3, Lokhttp3/Request;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/OkRequestStateParms;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "x-dtc"

    iget-object v4, v1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "Ignore WR, request already tagged with x-dtc: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v3, v1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v3, v3, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/android/callback/CallbackCore;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skip WR (URL filtered): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v3, :cond_8

    const-string v3, "Add WR %s to %s (hc=%d)"

    const-class v4, Lokhttp3/Request;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/OkRequestStateParms;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_8
    sget-object v3, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v3, v3, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/DTXActionImpl;->u()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v4

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/dynatrace/android/agent/AgentUtil;->a()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance v5, Lcom/dynatrace/android/callback/CbWebReqTracker;

    iget-object v6, v4, Lcom/dynatrace/android/agent/WebReqTag;->b:Lcom/dynatrace/android/agent/data/Session;

    invoke-direct {v5, v3, v6}, Lcom/dynatrace/android/callback/CbWebReqTracker;-><init>(Lcom/dynatrace/android/agent/DTXAutoAction;Lcom/dynatrace/android/agent/data/Session;)V

    iput-object p0, v5, Lcom/dynatrace/android/callback/CbWebReqTracker;->d:Lcom/dynatrace/android/callback/OkRequestStateParms;

    iput-object v4, v5, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    move-object v1, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_c
    :goto_2
    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v1, p0}, Lcom/dynatrace/android/callback/CbWebReqTracker;->b(Lcom/dynatrace/android/callback/WebReqStateParms;)V

    iget-boolean v3, v1, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    if-eqz v3, :cond_13

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->n:Lokhttp3/Response;

    if-eqz v0, :cond_f

    sget-object v3, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_3

    :cond_e
    new-instance v2, Lag0;

    const/16 v4, 0x16

    invoke-direct {v2, v3, v0, v4}, Lag0;-><init>(Lokhttp3/Request;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a(Lkotlin/jvm/functions/Function1;)Lcom/dynatrace/agent/events/enrichment/WebContext;

    move-result-object v2

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    sget-object v3, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_3

    :cond_10
    new-instance v2, Lag0;

    const/16 v4, 0x17

    invoke-direct {v2, v3, v0, v4}, Lag0;-><init>(Lokhttp3/Request;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;->a(Lkotlin/jvm/functions/Function1;)Lcom/dynatrace/agent/events/enrichment/WebContext;

    move-result-object v2

    goto :goto_3

    :cond_11
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_12

    const-string v0, "Both response and exception are null"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_12
    :goto_3
    iput-object v2, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->o:Lcom/dynatrace/agent/events/enrichment/WebContext;

    invoke-virtual {v1, p0}, Lcom/dynatrace/android/callback/CbWebReqTracker;->c(Lcom/dynatrace/android/callback/WebReqStateParms;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_13
    :goto_4
    return-void
.end method

.method public static g(Lcom/dynatrace/android/callback/WebReqStateParms;ILjava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V
    .locals 0

    if-eqz p0, :cond_1

    iput p1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    check-cast p0, Lcom/dynatrace/android/callback/OkRequestStateParms;

    invoke-static {p0}, Lcom/dynatrace/android/callback/OkCallback;->f(Lcom/dynatrace/android/callback/OkRequestStateParms;)V

    :cond_1
    return-void
.end method
