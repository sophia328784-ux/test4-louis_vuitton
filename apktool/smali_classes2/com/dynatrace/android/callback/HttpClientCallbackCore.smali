.class abstract Lcom/dynatrace/android/callback/HttpClientCallbackCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lcom/dynatrace/android/callback/CbWebReqTracker;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v2, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1, v2}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lcom/dynatrace/android/callback/CbURIDesc;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lcom/dynatrace/android/callback/CbURIDesc;

    move-result-object p1

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/dynatrace/android/callback/CbURIDesc;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add WR to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_7

    const-string p0, "OneAgent not correctly initialized"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object p1, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean p1, p1, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz p1, :cond_5

    invoke-static {p1, p0}, Lcom/dynatrace/android/agent/ApacheUtil;->c(Lcom/dynatrace/android/agent/DTXAutoAction;Lorg/apache/http/HttpRequest;)Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/dynatrace/android/agent/ApacheUtil;->d(Lorg/apache/http/HttpRequest;)Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/dynatrace/android/callback/CbWebReqTracker;

    iget-object v2, v1, Lcom/dynatrace/android/agent/WebReqTag;->b:Lcom/dynatrace/android/agent/data/Session;

    invoke-direct {v0, p1, v2}, Lcom/dynatrace/android/callback/CbWebReqTracker;-><init>(Lcom/dynatrace/android/agent/DTXAutoAction;Lcom/dynatrace/android/agent/data/Session;)V

    sget-object p1, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->a:Ljava/util/WeakHashMap;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static b(Lcom/dynatrace/android/callback/UriReqStateParms;)V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/UriReqStateParms;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/callback/CbWebReqTracker;

    if-nez v1, :cond_1

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    iget-object v2, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->o:Lorg/apache/http/HttpHost;

    invoke-static {v1, v2}, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lcom/dynatrace/android/callback/CbWebReqTracker;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    sget-object v3, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    const-string v3, "x-dynatrace"

    invoke-static {v2, v3}, Lcom/dynatrace/android/agent/ApacheUtil;->a(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-dtc"

    invoke-static {v2, v4}, Lcom/dynatrace/android/agent/ApacheUtil;->a(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dynatrace/android/callback/CbWebReqTracker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/dynatrace/android/agent/ApacheUtil;->b(Lorg/apache/http/HttpRequest;)V

    :cond_3
    invoke-virtual {v1, p0}, Lcom/dynatrace/android/callback/CbWebReqTracker;->b(Lcom/dynatrace/android/callback/WebReqStateParms;)V

    iget-boolean v2, v1, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    if-eqz v2, :cond_4

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p0}, Lcom/dynatrace/android/callback/CbWebReqTracker;->c(Lcom/dynatrace/android/callback/WebReqStateParms;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method
