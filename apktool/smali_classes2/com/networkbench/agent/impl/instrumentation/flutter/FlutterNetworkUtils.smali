.class public Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static webTimings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->webTimings:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->webTimings:Ljava/util/Map;

    return-object v0
.end method

.method public static configCrossApplicationInfo(Ljava/util/Map;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ")V"
        }
    .end annotation

    const-string v0, "X-Tingyun-Data"

    const-string v1, "X-Tingyun-Tx-Data"

    const-string v2, ""

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppData(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppDataNew(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "Flutter configCrossApplicationInfo responseHeader is null"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->B(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppDataNew(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "Flutter configCrossApplicationInfo has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getApmsHeaderToRequest()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->at()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->a()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    const-string v2, "Flutter getapms error"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/c/g;->f(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    const-string v2, "Flutter getApmsHeaderToRequest has an error : "

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/c/g;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object v0
.end method

.method public static getExtraHeaderToRequest()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "flutter getExtraHeaderToRequest cross app enabled is false"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->B(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-Tingyun-Id"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->am()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/k/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "X-Tingyun"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :goto_1
    const-string v2, " Flutter  getExtraHeaderToRequest has an error : "

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static reportErrorWebInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "reportErrorType type = "

    const-string v1, ", errorStackTrace:"

    const-string v2, ", type:"

    const-string v3, "reportErrorWeb messge:"

    invoke-static {v3, p0, v1, p2, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->C(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "reportErrorWeb"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->C(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NBSGlobalSettings.getInstance().isUserAction_Enable() is true"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->C(Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/agent/impl/crash/a/d$a;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/crash/a/d$a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/util/Map;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/networkbench/agent/impl/crash/a/d$a;->b(I)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p4

    const/4 v1, 0x3

    invoke-virtual {p4, v1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(I)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/crash/a/d$a;->b()Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/crash/a/d$a;->a()Lcom/networkbench/agent/impl/crash/a/d;

    move-result-object p4

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/a;->c()Lcom/networkbench/agent/impl/crash/a/a;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/networkbench/agent/impl/crash/a/a;->a(Lcom/networkbench/agent/impl/crash/a/d;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n message = "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nmetaData = "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nerrorStackTrace = "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p1

    sget-object p2, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    const-string p1, "error happened in reportError(String message, Exception e, Map<String, Object> metaData)"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static retriveResponseHeader()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " Flutter  retriveResponseHeader cross app enabled is false"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->B(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "X-Tingyun-Tx-Data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ap()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "X-Tingyun-Data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :goto_0
    const-string v2, "Flutter retriveResponseHeader has an error : "

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/c/g;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static startWebRequestTiming(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static stopWebRequestTiming(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
