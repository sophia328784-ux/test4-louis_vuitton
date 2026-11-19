.class public Lcom/networkbench/agent/impl/data/type/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "AppLaunchConfig"

.field private static volatile c:Lcom/networkbench/agent/impl/data/type/d;


# instance fields
.field protected a:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Lcom/networkbench/agent/impl/util/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/d;->f:Lcom/networkbench/agent/impl/util/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/d;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/d;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/networkbench/agent/impl/data/type/d;
    .locals 3

    .line 278
    sget-object v0, Lcom/networkbench/agent/impl/data/type/d;->c:Lcom/networkbench/agent/impl/data/type/d;

    .line 279
    sget-object v1, Lcom/networkbench/agent/impl/data/type/d;->c:Lcom/networkbench/agent/impl/data/type/d;

    if-nez v1, :cond_1

    .line 280
    const-class v1, Lcom/networkbench/agent/impl/data/type/d;

    monitor-enter v1

    .line 281
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/d;->c:Lcom/networkbench/agent/impl/data/type/d;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/networkbench/agent/impl/data/type/d;

    new-instance v2, Lcom/networkbench/agent/impl/util/c;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/util/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/networkbench/agent/impl/data/type/d;-><init>(Lcom/networkbench/agent/impl/util/c;)V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/d;->c:Lcom/networkbench/agent/impl/data/type/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 283
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method private a(I)Z
    .locals 0

    .line 285
    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(II)Z
    .locals 0

    .line 277
    if-eq p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/networkbench/agent/impl/util/af;)V
    .locals 3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->f()Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->i()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveSdkEnabled   enabledInt : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/af;->d(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/af;->d(I)V

    return-void
.end method

.method private c(Lcom/networkbench/agent/impl/util/af;)V
    .locals 3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->i()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/util/r;->d(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->O()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/util/r;->c(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u51b7\u542f\u52a8 ,enabledInt = 1  , setModuleSwitch :  "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->O()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/af;->a(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->e(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/r;->c(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/r;->e(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u51b7\u542f\u52a8 ,enabledInt : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", setModuleSwitch :  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/harvest/b/b;->a(Z)V

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/b/b;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/util/af;)V
    .locals 6

    const-string v0, "AppLaunchConfig"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/util/r;->b(J)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->f(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->d()I

    move-result v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/h;->b(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->l()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/harvest/b/b;->e(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/data/type/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "isRealFirstRuning true"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/d;->d:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/d;->e:Z

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/d;->f:Lcom/networkbench/agent/impl/util/c;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    const v2, 0x7ffff

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->c(I)V

    const-string v1, "first launch, debug model,set opt value 511"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/harvest/b/b;->e(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/b;->f()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/d;->f:Lcom/networkbench/agent/impl/util/c;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/d;->b(Lcom/networkbench/agent/impl/util/af;)V

    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/f$a;->b:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    goto :goto_2

    :cond_3
    const-string v1, "isRealFirstRuning false"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/d;->f:Lcom/networkbench/agent/impl/util/c;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/c;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/d;->c(Lcom/networkbench/agent/impl/util/af;)V

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/d;->b(Lcom/networkbench/agent/impl/util/af;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/d;->c(Lcom/networkbench/agent/impl/util/af;)V

    :cond_5
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/type/d;->a:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/d;->d:Z

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/b;->e()V

    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/data/type/d;->a(I)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/f$a;->b:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/f$a;->c:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    :goto_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ag()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "begin initLogTrack"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->b()Lcom/networkbench/agent/impl/plugin/c/b;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSLogger;->initLogTrack(Landroid/content/Context;Lcom/networkbench/agent/impl/plugin/c/b;)V

    return-void

    :cond_7
    const-string p0, "isLogModuleEnabled false, skip init log track"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    const-string p1, "sdkConfig error:"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/d;->d:Z

    return p0
.end method

.method public b()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/d;->e:Z

    return p0
.end method

.method public c()Lcom/networkbench/agent/impl/util/c;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/d;->f:Lcom/networkbench/agent/impl/util/c;

    return-object p0
.end method
