.class public Lcom/networkbench/agent/impl/performance/a/b/a/a/b;
.super Lcom/networkbench/agent/impl/performance/a/b/a/a/a;
.source "SourceFile"


# instance fields
.field private c:Lcom/networkbench/agent/impl/performance/a/b/c/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/a/b/a/a/b;)Lcom/networkbench/agent/impl/performance/a/b/c/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;->c:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->a()V

    .line 42
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;->c:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->b:Z

    return-void
.end method

.method public final a(Lcom/networkbench/agent/impl/performance/a/a/b;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->a(Lcom/networkbench/agent/impl/performance/a/a/b;Ljava/lang/String;)V

    const-string p1, "NormalIdleState startexceptionstate"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->b:Z

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/b$1;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;->b()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/performance/a/b/a/a/b$1;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/a/b;JJ)V

    iput-object v0, v1, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;->c:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    return-void
.end method

.method public final b()J
    .locals 2

    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method

.method public final c()Lcom/networkbench/agent/impl/performance/a/b/a/c;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/performance/a/b/a/c;->b:Lcom/networkbench/agent/impl/performance/a/b/a/c;

    return-object p0
.end method
