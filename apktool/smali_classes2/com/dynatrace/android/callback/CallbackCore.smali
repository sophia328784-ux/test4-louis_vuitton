.class abstract Lcom/dynatrace/android/callback/CallbackCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;,
        Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Lcom/dynatrace/android/agent/conf/Configuration;

.field public static final c:Ljava/util/WeakHashMap;

.field public static volatile d:Lcom/dynatrace/android/agent/DTXAutoAction;

.field public static volatile e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;->a()Lcom/dynatrace/android/agent/conf/Configuration;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->c:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Lcom/dynatrace/android/callback/CbWebReqTracker;
    .locals 8

    const-string v0, "traceId: "

    const-string v1, "Set tracestate: "

    const-string v2, "Set traceparent: "

    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Add WR "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_5

    const-string p0, "OneAgent not correctly initialized"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/callback/CallbackCore;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip WR (URL filtered): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-object v4

    :cond_2
    sget-object v3, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v3, v3, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/DTXActionImpl;->u()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/dynatrace/android/agent/AgentUtil;->a()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_6

    :cond_5
    :goto_1
    return-object v4

    :cond_6
    new-instance v4, Lcom/dynatrace/android/callback/CbWebReqTracker;

    iget-object v6, v5, Lcom/dynatrace/android/agent/WebReqTag;->b:Lcom/dynatrace/android/agent/data/Session;

    invoke-direct {v4, v3, v6}, Lcom/dynatrace/android/callback/CbWebReqTracker;-><init>(Lcom/dynatrace/android/agent/DTXAutoAction;Lcom/dynatrace/android/agent/data/Session;)V

    iget-boolean v3, v6, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v3, :cond_a

    :try_start_0
    sget-object v3, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    const-string v3, "tracestate"

    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/agent/events/TracestateHeader;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "Request already instrumented by Dynatrace, skipping Gen3 monitoring"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    const-string v3, "traceparent"

    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "tracestate"

    invoke-virtual {p0, v6}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/dynatrace/agent/events/TracestateHeader;->b:Z

    invoke-static {v3, v6, v7}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    move-result-object v3

    iget-object v6, v3, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->b:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v7, "traceparent"

    invoke-virtual {p0, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v2, v3, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->c:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v6, "tracestate"

    invoke-virtual {p0, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v1, v3, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->a:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iput-object v1, v4, Lcom/dynatrace/android/callback/CbWebReqTracker;->m:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " spanId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hint: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_a
    :goto_3
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->c:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, v4, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    return-object v4

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static b(Ljava/net/HttpURLConnection;Z)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v1, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v0, v1}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;-><init>(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/CallbackCore$1;)V

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->access$100(Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;)Lcom/dynatrace/android/callback/CbWebReqTracker;

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->access$100(Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;)Lcom/dynatrace/android/callback/CbWebReqTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initiate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/CallbackCore;->f(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/MenuItem;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/CallbackCore;->c(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Touch on "

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/dynatrace/android/callback/CallbackCore;->f(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/CallbackCore;->c(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Touch on "

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    const/16 v3, 0x81

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x91

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "Touch on ****"

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/CallbackCore;->f(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->s:Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;->b(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public static f(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v1, "onUA: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " entry=true actionName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {v0, v2}, Lcom/dynatrace/android/agent/DTXAutoAction;->H(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    :cond_2
    :goto_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-nez v0, :cond_3

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->m:Lcom/dynatrace/android/agent/data/RandomFactory;

    sget-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    invoke-static {p1, v0, v2}, Lcom/dynatrace/android/agent/DTXAutoAction;->B(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)Lcom/dynatrace/android/agent/DTXAutoAction;

    move-result-object p1

    sput-object p1, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    sput-object p0, Lcom/dynatrace/android/callback/CallbackCore;->e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    :cond_3
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " entry=true"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V
    .locals 2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " entry=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    if-ne v0, p0, :cond_1

    sget-object p0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    sget v0, Lcom/dynatrace/android/agent/DTXAutoAction;->K:I

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->H(I)V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->D()V

    const/4 p0, 0x0

    sput-object p0, Lcom/dynatrace/android/callback/CallbackCore;->d:Lcom/dynatrace/android/agent/DTXAutoAction;

    sput-object p0, Lcom/dynatrace/android/callback/CallbackCore;->e:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    :cond_1
    return-void
.end method

.method public static h(Ljava/net/HttpURLConnection;)V
    .locals 3

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/callback/CbWebReqTracker;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    iget-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-dynatrace"

    invoke-virtual {p0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "webReqState is: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/Configuration;->q:[Ljava/lang/String;

    sget v1, Lcom/dynatrace/android/callback/UrlFilter;->a:I

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v5, :cond_2

    sget v5, Lcom/dynatrace/android/callback/UrlFilter;->a:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL filtered by pattern \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method public static j(Lcom/dynatrace/android/callback/ConnStateParms;)V
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/ConnStateParms;->c()Ljava/lang/String;

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
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/callback/CbWebReqTracker;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v3, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    const-string v3, "x-dynatrace"

    const/4 v4, 0x0

    if-nez v2, :cond_2

    :catch_0
    move-object v2, v4

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    const-string v5, "x-dtc"

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    invoke-virtual {v1, v2, v4}, Lcom/dynatrace/android/callback/CbWebReqTracker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    invoke-virtual {v1, p0}, Lcom/dynatrace/android/callback/CbWebReqTracker;->b(Lcom/dynatrace/android/callback/WebReqStateParms;)V

    iget-boolean v2, v1, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    if-eqz v2, :cond_5

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, p0}, Lcom/dynatrace/android/callback/CbWebReqTracker;->c(Lcom/dynatrace/android/callback/WebReqStateParms;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method
