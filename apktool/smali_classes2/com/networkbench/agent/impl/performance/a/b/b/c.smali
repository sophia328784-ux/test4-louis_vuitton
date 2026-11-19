.class public Lcom/networkbench/agent/impl/performance/a/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/a/d/e;


# static fields
.field private static a:Lcom/networkbench/agent/impl/performance/a/b/b/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/networkbench/agent/impl/performance/a/b/b/g;

.field private d:Lcom/networkbench/agent/impl/performance/a/b/b/a;

.field private e:Lcom/networkbench/agent/impl/performance/a/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/networkbench/agent/impl/performance/a/a/a;->a:Lcom/networkbench/agent/impl/performance/a/a/a;

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/performance/a/b/b/c;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/a/a/a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->b:Landroid/content/Context;

    if-nez p2, :cond_0

    sget-object p2, Lcom/networkbench/agent/impl/performance/a/a/a;->a:Lcom/networkbench/agent/impl/performance/a/a/a;

    :cond_0
    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->e:Lcom/networkbench/agent/impl/performance/a/a/a;

    new-instance p2, Lcom/networkbench/agent/impl/performance/a/b/b/g;

    invoke-direct {p2, p1, p0}, Lcom/networkbench/agent/impl/performance/a/b/b/g;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/a/d/e;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->c:Lcom/networkbench/agent/impl/performance/a/b/b/g;

    new-instance p1, Lcom/networkbench/agent/impl/performance/a/b/b/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/performance/a/b/b/a;-><init>(Lcom/networkbench/agent/impl/performance/a/b/b/c;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->d:Lcom/networkbench/agent/impl/performance/a/b/b/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/networkbench/agent/impl/performance/a/b/b/c;
    .locals 2

    .line 45
    sget-object v0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->a:Lcom/networkbench/agent/impl/performance/a/b/b/c;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/networkbench/agent/impl/performance/a/b/b/c;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/a/b/b/c;->a:Lcom/networkbench/agent/impl/performance/a/b/b/c;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/networkbench/agent/impl/performance/a/b/b/c;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/a/b/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/networkbench/agent/impl/performance/a/b/b/c;->a:Lcom/networkbench/agent/impl/performance/a/b/b/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 50
    :cond_1
    :goto_2
    sget-object p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->a:Lcom/networkbench/agent/impl/performance/a/b/b/c;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/networkbench/agent/impl/performance/a/d/e;
    .locals 1

    .line 43
    const-string v0, "AssistStatImp start"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->c:Lcom/networkbench/agent/impl/performance/a/b/b/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/b/b/g;->a()V

    return-object p0
.end method

.method public final a(F)Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->d:Lcom/networkbench/agent/impl/performance/a/b/b/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/b/b/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isAbnormalProcess false, cpuSpeed "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", not sample environment"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->e:Lcom/networkbench/agent/impl/performance/a/a/a;

    iget p0, p0, Lcom/networkbench/agent/impl/performance/a/a/a;->b:F

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final b()Lcom/networkbench/agent/impl/performance/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->e:Lcom/networkbench/agent/impl/performance/a/a/a;

    return-object p0
.end method

.method public final c()Lcom/networkbench/agent/impl/performance/a/c/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()V
    .locals 0

    const-string p0, "AssistStatImp stop"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/c;->d:Lcom/networkbench/agent/impl/performance/a/b/b/a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/a;->a()Z

    move-result p0

    return p0
.end method

.method public final f()Lcom/networkbench/agent/impl/performance/a/c/d;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/performance/a/c/d;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/c/d;-><init>()V

    return-object p0
.end method
