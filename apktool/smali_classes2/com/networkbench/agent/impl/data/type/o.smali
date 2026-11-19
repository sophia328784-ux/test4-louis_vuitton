.class public Lcom/networkbench/agent/impl/data/type/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->a:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->b:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->c:Z

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->a:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->b:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->b:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/o;->c:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/o;->e()V

    return-void
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/o;->a:Z

    return p0
.end method
