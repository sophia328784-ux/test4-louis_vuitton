.class public final Lcom/batch/android/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "WebserviceLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/batch/android/b1/e;Lcom/batch/android/n1/f;)Lcom/batch/android/e/l0;
    .locals 2

    .line 61
    :try_start_0
    new-instance v0, Lcom/batch/android/a/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/batch/android/a/i;-><init>(Landroid/content/Context;Lcom/batch/android/n1/f;Lcom/batch/android/b1/e;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 62
    const-string p1, "WebserviceLauncher"

    const-string p2, "Error while initializing metrics webservice"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/batch/android/n1/i;)Lcom/batch/android/e/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;",
            "Lcom/batch/android/n1/i;",
            ")",
            "Lcom/batch/android/e/l0;"
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Lcom/batch/android/a/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/batch/android/a/l;-><init>(Landroid/content/Context;Lcom/batch/android/n1/i;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 60
    const-string p1, "WebserviceLauncher"

    const-string p2, "Error while initializing TW"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/batch/android/j1/e;Ljava/util/List;Lcom/batch/android/n1/i;)Lcom/batch/android/e/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/j1/e;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;",
            "Lcom/batch/android/n1/i;",
            ")",
            "Lcom/batch/android/e/l0;"
        }
    .end annotation

    .line 57
    :try_start_0
    new-instance v0, Lcom/batch/android/a/l;

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/batch/android/a/l;-><init>(Landroid/content/Context;Lcom/batch/android/n1/i;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 58
    const-string p1, "WebserviceLauncher"

    const-string p2, "Error while initializing TW"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/batch/android/j1/e;)Z
    .locals 3

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a/h;

    .line 76
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    .line 77
    invoke-static {}, Lcom/batch/android/n/q;->a()Lcom/batch/android/o1/c;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/batch/android/a/h;-><init>(Landroid/content/Context;Lcom/batch/android/n1/e;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 79
    const-string v0, "WebserviceLauncher"

    const-string v1, "Error while initializing LC WS"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/batch/android/j1/e;JLjava/lang/String;)Z
    .locals 7

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a/a;

    .line 72
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/batch/android/o1/a;

    invoke-direct {v6}, Lcom/batch/android/o1/a;-><init>()V

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/batch/android/a/a;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/n1/a;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 74
    const-string p1, "WebserviceLauncher"

    const-string p2, "Error while initializing ATC WS"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/batch/android/j1/e;JLjava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/j1/e;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a/b;

    .line 68
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    new-instance v7, Lcom/batch/android/o1/b;

    invoke-direct {v7}, Lcom/batch/android/o1/b;-><init>()V

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/batch/android/a/b;-><init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lcom/batch/android/n1/b;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 70
    const-string p1, "WebserviceLauncher"

    const-string p2, "Error while initializing ATS WS"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/batch/android/j1/e;Lcom/batch/android/BatchPushRegistration;)Z
    .locals 3

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a/j;

    .line 64
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/batch/android/o1/d;

    invoke-direct {v2}, Lcom/batch/android/o1/d;-><init>()V

    invoke-direct {v1, p0, p1, v2}, Lcom/batch/android/a/j;-><init>(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;Lcom/batch/android/n1/g;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 66
    const-string p1, "WebserviceLauncher"

    const-string v0, "Error while initializing PW"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/batch/android/j1/e;Ljava/util/List;Lcom/batch/android/g1/c$c;Lcom/batch/android/n1/d;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/j1/e;",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;",
            "Lcom/batch/android/g1/c$c;",
            "Lcom/batch/android/n1/d;",
            ")Z"
        }
    .end annotation

    const-string v1, "WebserviceLauncher"

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/batch/android/b1/c;

    invoke-direct {v6, p1, p2}, Lcom/batch/android/b1/c;-><init>(Ljava/util/Collection;Lcom/batch/android/g1/c$c;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object p1

    new-instance v3, Lcom/batch/android/a/g;

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v4

    new-array v8, v2, [Ljava/lang/String;

    move-object v7, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/batch/android/a/g;-><init>(Landroid/content/Context;Lcom/batch/android/n1/d;Lcom/batch/android/b1/c;Lcom/batch/android/g1/c$c;[Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Error while initializing Local Campaigns JIT WS"

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_1
    :goto_0
    const-string p0, "Error while initializing Local Campaigns JIT WS: context is null."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static a(Lcom/batch/android/j1/e;ZLjava/lang/String;Z)Z
    .locals 7

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a/k;

    .line 81
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/batch/android/o1/e;

    invoke-direct {v6}, Lcom/batch/android/o1/e;-><init>()V

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/batch/android/a/k;-><init>(Landroid/content/Context;ZLjava/lang/String;ZLcom/batch/android/n1/h;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 83
    const-string p1, "WebserviceLauncher"

    const-string p2, "Error while initializing SW"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
