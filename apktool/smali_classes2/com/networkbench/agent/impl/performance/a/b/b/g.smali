.class public Lcom/networkbench/agent/impl/performance/a/b/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/networkbench/agent/impl/performance/a/d/e;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/a/d/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/b/g;->b:Lcom/networkbench/agent/impl/performance/a/d/e;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/g;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/g;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/g;->c:Z

    :cond_0
    return-void
.end method
