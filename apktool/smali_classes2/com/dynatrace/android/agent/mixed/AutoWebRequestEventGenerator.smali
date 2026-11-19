.class public Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;
.super Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Exception;

.field public g:Ljava/util/AbstractMap;

.field public h:Ljava/util/AbstractMap;

.field public i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->g:Ljava/util/AbstractMap;

    iput-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->h:Ljava/util/AbstractMap;

    iput-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9

    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "characteristics.has_failed_request"

    const-string v3, "characteristics.has_error"

    const-string v4, "network.protocol.name"

    const/4 v5, 0x1

    if-nez v0, :cond_1

    const-string v0, "https"

    iget-object v6, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "http.request.method"

    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->c:I

    if-lez v0, :cond_2

    const-string v1, "http.response.status_code"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget v0, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->c:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_3

    const/16 v1, 0x257

    if-gt v0, v1, :cond_3

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "http.response.reason_phrase"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->h:Ljava/util/AbstractMap;

    const-string v1, ", "

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http.response.header."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->g:Ljava/util/AbstractMap;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http.request.header."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->f:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    const-string v0, "characteristics.has_exception"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->f:Ljava/lang/Exception;

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v1, "exception.stack_trace"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->f:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception.type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->f:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception.message"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iget-object v0, v0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    const-string v1, "trace.id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iget-object v0, v0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    const-string v1, "span.id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    const-string v0, "request.trace_context_hint"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    return-object p1
.end method
