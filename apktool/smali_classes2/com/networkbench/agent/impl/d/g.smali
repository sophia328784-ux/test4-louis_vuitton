.class public Lcom/networkbench/agent/impl/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/networkbench/agent/impl/d/c;

.field private static final b:Lcom/networkbench/agent/impl/c/e;

.field private static final c:Lcom/networkbench/agent/impl/d/c/a;

.field private static final d:Lcom/networkbench/agent/impl/d/c/d;

.field private static final e:Lcom/networkbench/agent/impl/d/a/b;

.field private static final f:Lcom/networkbench/agent/impl/d/a/a;

.field private static final g:Lcom/networkbench/agent/impl/d/c/e;

.field private static final h:Lcom/networkbench/agent/impl/d/a/e;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/g;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/d/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/d/c;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/d/g;->a:Lcom/networkbench/agent/impl/d/c;

    new-instance v0, Lcom/networkbench/agent/impl/d/c/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/d/c/a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/d/g;->c:Lcom/networkbench/agent/impl/d/c/a;

    new-instance v0, Lcom/networkbench/agent/impl/d/c/d;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/d/c/d;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/d/g;->d:Lcom/networkbench/agent/impl/d/c/d;

    new-instance v0, Lcom/networkbench/agent/impl/d/a/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/d/a/b;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/d/g;->e:Lcom/networkbench/agent/impl/d/a/b;

    new-instance v1, Lcom/networkbench/agent/impl/d/a/a;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/d/a/a;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/d/g;->f:Lcom/networkbench/agent/impl/d/a/a;

    new-instance v2, Lcom/networkbench/agent/impl/d/c/e;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/d/c/e;-><init>()V

    sput-object v2, Lcom/networkbench/agent/impl/d/g;->g:Lcom/networkbench/agent/impl/d/c/e;

    new-instance v2, Lcom/networkbench/agent/impl/d/a/e;

    invoke-direct {v2, v1, v0}, Lcom/networkbench/agent/impl/d/a/e;-><init>(Lcom/networkbench/agent/impl/d/a/a;Lcom/networkbench/agent/impl/d/a/b;)V

    sput-object v2, Lcom/networkbench/agent/impl/d/g;->h:Lcom/networkbench/agent/impl/d/a/e;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/d/g;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/d/g;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Measurement Engine initialized."

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->c()V

    sget-object v0, Lcom/networkbench/agent/impl/d/g;->a:Lcom/networkbench/agent/impl/d/c;

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->c:Lcom/networkbench/agent/impl/d/c/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->a(Lcom/networkbench/agent/impl/d/c/b;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->d:Lcom/networkbench/agent/impl/d/c/d;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->a(Lcom/networkbench/agent/impl/d/c/b;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->e:Lcom/networkbench/agent/impl/d/a/b;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->a(Lcom/networkbench/agent/impl/d/a/c;)V

    sget-object v2, Lcom/networkbench/agent/impl/d/g;->f:Lcom/networkbench/agent/impl/d/a/a;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/d/c;->a(Lcom/networkbench/agent/impl/d/a/c;)V

    sget-object v3, Lcom/networkbench/agent/impl/d/g;->g:Lcom/networkbench/agent/impl/d/c/e;

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/d/c;->a(Lcom/networkbench/agent/impl/d/c/b;)V

    sget-object v3, Lcom/networkbench/agent/impl/d/g;->h:Lcom/networkbench/agent/impl/d/a/e;

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/d/c;->a(Lcom/networkbench/agent/impl/d/a/c;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    invoke-static {v3}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/d/g;->d:Lcom/networkbench/agent/impl/d/c/d;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/d/c/d;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    .line 54
    invoke-static {}, Lcom/networkbench/agent/impl/d/g;->d()V

    return-void

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/d/g;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "TransactionMeasurement is null or hosname isNewlensHostName "

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/d/b/c;)V
    .locals 1

    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lcom/networkbench/agent/impl/d/g;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "TransactionData is null. HttpError measurement not created."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/d/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 58
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/d/g;->g:Lcom/networkbench/agent/impl/d/c/e;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/d/c/e;->a(Lcom/networkbench/agent/impl/d/a;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 59
    sput-boolean p0, Lcom/networkbench/agent/impl/d/g;->i:Z

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->d()V

    sget-object v0, Lcom/networkbench/agent/impl/d/g;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Measurement Engine shutting down."

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/d/g;->a:Lcom/networkbench/agent/impl/d/c;

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->c:Lcom/networkbench/agent/impl/d/c/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->b(Lcom/networkbench/agent/impl/d/c/b;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->d:Lcom/networkbench/agent/impl/d/c/d;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->b(Lcom/networkbench/agent/impl/d/c/b;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->e:Lcom/networkbench/agent/impl/d/a/b;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->b(Lcom/networkbench/agent/impl/d/a/c;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->f:Lcom/networkbench/agent/impl/d/a/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->b(Lcom/networkbench/agent/impl/d/a/c;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->g:Lcom/networkbench/agent/impl/d/c/e;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->b(Lcom/networkbench/agent/impl/d/c/b;)V

    sget-object v1, Lcom/networkbench/agent/impl/d/g;->h:Lcom/networkbench/agent/impl/d/a/e;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/c;->b(Lcom/networkbench/agent/impl/d/a/c;)V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/g;->a:Lcom/networkbench/agent/impl/d/c;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/d/c;->a()V

    return-void
.end method

.method private static d()V
    .locals 1

    sget-boolean v0, Lcom/networkbench/agent/impl/d/g;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/d/g;->c()V

    :cond_0
    return-void
.end method
