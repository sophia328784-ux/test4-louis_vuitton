.class public abstract Lcom/perfectcorp/uma/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/uma/b$d;,
        Lcom/perfectcorp/uma/b$a;,
        Lcom/perfectcorp/uma/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/content/Context; = null

.field public static volatile c:Lcom/perfectcorp/uma/p; = null

.field public static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 3

    sget v0, Lcom/perfectcorp/uma/b$a;->b:I

    sget-object v0, Lcom/perfectcorp/uma/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/perfectcorp/uma/p;->a_()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UMA.init() must be called first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "serverURL should be a http:// or https:// URL."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/perfectcorp/uma/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    if-eqz v1, :cond_3

    sget-boolean p0, Lcom/perfectcorp/uma/b;->d:Z

    if-nez p0, :cond_2

    const-string p0, "UMA"

    const-string p1, "init() was called. It must not be called multiple times."

    sget-object p2, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    const/4 v1, 0x5

    invoke-interface {p2, v1, p0, p1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "init() was called. It must not be called multiple times."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/perfectcorp/uma/b;->b:Landroid/content/Context;

    new-instance v1, Lcom/perfectcorp/uma/c;

    new-instance v2, Lcom/perfectcorp/uma/j;

    new-instance v3, Lcom/perfectcorp/uma/k;

    invoke-direct {v3, p0}, Lcom/perfectcorp/uma/k;-><init>(Landroid/content/Context;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {v4}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/perfectcorp/uma/countly/d;->b(Landroid/content/Context;Lcom/perfectcorp/uma/internal/b;)V

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/perfectcorp/uma/c;-><init>(Lcom/perfectcorp/uma/p;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    const-string p0, "appKey must not be null or empty."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "serverURL must not be null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "context must not be null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    sget-object v0, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/perfectcorp/uma/t;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2
    :try_end_0
    .catch Lcom/perfectcorp/uma/b$b; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1388

    if-gt v2, v3, :cond_0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/perfectcorp/uma/p;->a(Ljava/lang/String;Ljava/util/Map;ID)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/perfectcorp/uma/b$b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "The estimated size is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is greater than 5000. key:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/perfectcorp/uma/b$b; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-boolean p1, Lcom/perfectcorp/uma/b;->d:Z

    if-nez p1, :cond_2

    const-string p1, "UMA"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/uma/b$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x800

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " (truncated)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "stack_trace"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_UMA_EventTooLargeException"

    invoke-static {p0, p1}, Lcom/perfectcorp/uma/b;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    throw p0

    :cond_3
    const-string p0, "key must not be null or empty."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "UMA.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 3

    sget-object v0, Lcom/perfectcorp/uma/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/perfectcorp/uma/p;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UMA.init() must be called first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e()V
    .locals 3

    sget-object v0, Lcom/perfectcorp/uma/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/perfectcorp/uma/p;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UMA.init() must be called first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
