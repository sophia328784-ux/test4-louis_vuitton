.class public Lcom/networkbench/agent/impl/performance/a/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/networkbench/agent/impl/performance/a/b/b/c;

.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/a;->b:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/a;->a:Lcom/networkbench/agent/impl/performance/a/b/b/c;

    return-void
.end method

.method private b()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/a/b/b/a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/a;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/a;->b()V

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/a;->b:Z

    return p0
.end method
