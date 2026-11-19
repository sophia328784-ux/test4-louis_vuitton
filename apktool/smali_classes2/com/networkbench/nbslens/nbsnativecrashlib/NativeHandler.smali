.class Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;


# instance fields
.field private a:J

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

.field private e:Z

.field private f:Z

.field private g:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

.field private h:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

.field private i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    invoke-direct {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;-><init>()V

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->j:Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->i:Z

    return-void
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    .line 185
    :try_start_0
    const-string p0, "main"

    invoke-static {p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a(Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 187
    invoke-static {p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a(Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 190
    const-string v3, "    at "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 192
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p1

    const-string v0, "NBSAgent"

    const-string v1, "NativeHandler getStacktraceByThreadName failed"

    invoke-interface {p1, v0, v1, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;>;"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->getAllStackTraces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "NBSAgent"

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/m;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/networkbench/nbslens/nbsnativecrashlib/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/networkbench/nbslens/nbsnativecrashlib/j;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    invoke-virtual {v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/j;->g()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/j;->a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->saveFeature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/j;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->storeUUID(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/j;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/j;->d()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, p2, p0, v1}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->answerAnomalousCallBack(ILjava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->storeCrashInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p1

    const-string p2, "error saveInfo:"

    invoke-interface {p1, v0, p2, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .locals 4

    .line 194
    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    .line 198
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    new-array v1, v2, [Ljava/lang/Thread;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 200
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    aget-object p0, v1, v2

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->j:Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    return-object v0
.end method

.method private static crashCallback(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 9

    const-string v0, "NBSAgent"

    const-string v1, "cost 6:"

    const-string v2, "cost 5:"

    const-string v3, "in java stacktrace:"

    const-string v4, "logPath:"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->g()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emergency:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dumpJavaStacktrace:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isMainThread:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", threadName:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p3, p4}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->g()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v0, v3}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "java stacktrace"

    invoke-static {p0, p4, p2}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v0, p4}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p3, p2}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a(Ljava/lang/String;ZLjava/util/List;)V

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object p2

    iget-object p2, p2, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->d:Lcom/networkbench/nbslens/nbsnativecrashlib/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    :try_start_1
    invoke-interface {p2, p0, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p1

    const-string p2, "NativeHandler native crash callback.onCrash failed"

    invoke-interface {p1, v0, p2, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object p0

    iget-boolean p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->c:Z

    if-nez p0, :cond_5

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p1

    const-string p2, "error crashCallback:"

    invoke-interface {p1, v0, p2, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private static native nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I
.end method

.method private static native nativeTestCrash(I)V
.end method

.method private static traceCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trace slow callback time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSAgent"

    invoke-interface {v0, v2, v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "memory info"

    invoke-static {p0, v1, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "yes"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    :goto_0
    const-string v1, "foreground"

    invoke-static {p0, v1, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->f:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b:Landroid/content/Context;

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object v1

    iget-wide v3, v1, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a:J

    invoke-static {v0, v3, v4}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d(Ljava/io/File;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->e()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".anr.nbscrash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d(Ljava/io/File;)Z

    return-void

    :cond_4
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->g:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p1

    const-string v0, "NativeHandler ANR callback.onCrash failed"

    invoke-interface {p1, v2, v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static traceCallbackBeforeDump()V
    .locals 4

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trace fast callback time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSAgent"

    invoke-interface {v0, v2, v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->h:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v1

    const-string v3, "NativeHandler ANR callback.onCrash failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/networkbench/nbslens/nbsnativecrashlib/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lcom/networkbench/nbslens/nbsnativecrashlib/g;ZZZIIIZZLcom/networkbench/nbslens/nbsnativecrashlib/g;Lcom/networkbench/nbslens/nbsnativecrashlib/g;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "NativeHandler init failed"

    const/4 v3, -0x2

    const-string v4, "nbscrash"

    const-string v5, "NBSAgent"

    if-nez v1, :cond_0

    .line 203
    :try_start_0
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object/from16 v1, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 204
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v1

    const-string v2, "NativeHandler System.loadLibrary failed"

    invoke-interface {v1, v5, v2, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    .line 205
    :cond_0
    :try_start_1
    invoke-interface {v1, v4}, Lcom/networkbench/nbslens/nbsnativecrashlib/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 206
    :goto_1
    iput-object v1, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b:Landroid/content/Context;

    move/from16 v3, p7

    .line 207
    iput-boolean v3, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->c:Z

    move-object/from16 v4, p18

    .line 208
    iput-object v4, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->d:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    move/from16 v4, p19

    .line 209
    iput-boolean v4, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->e:Z

    move/from16 v6, p21

    .line 210
    iput-boolean v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->f:Z

    move-object/from16 v6, p27

    .line 211
    iput-object v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->g:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    move-object/from16 v6, p28

    .line 212
    iput-object v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->h:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    if-eqz p20, :cond_1

    const-wide/16 v6, 0x61a8

    goto :goto_2

    :cond_1
    const-wide/32 v6, 0xafc8

    .line 213
    :goto_2
    iput-wide v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a:J

    const/16 v36, -0x3

    .line 214
    :try_start_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->d()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 217
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v19, p8

    move/from16 v20, p9

    move/from16 v21, p10

    move/from16 v22, p11

    move/from16 v23, p12

    move/from16 v24, p13

    move/from16 v25, p14

    move/from16 v26, p15

    move/from16 v27, p16

    move-object/from16 v28, p17

    move/from16 v30, p20

    move/from16 v31, p22

    move/from16 v32, p23

    move/from16 v33, p24

    move/from16 v34, p25

    move/from16 v35, p26

    move/from16 v18, v3

    move/from16 v29, v4

    .line 218
    invoke-static/range {v6 .. v35}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v36

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    .line 220
    iput-boolean v1, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    return v0

    .line 221
    :goto_3
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v1

    invoke-interface {v1, v5, v2, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v36

    :catchall_2
    move-exception v0

    .line 222
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object v1

    const-string v2, "NativeHandler ILibLoader.loadLibrary failed"

    invoke-interface {v1, v5, v2, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public a(Z)V
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->i:Z

    if-eqz p0, :cond_0

    .line 184
    invoke-static {p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->nativeTestCrash(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
