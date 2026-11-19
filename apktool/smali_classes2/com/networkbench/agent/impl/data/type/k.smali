.class public Lcom/networkbench/agent/impl/data/type/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->c:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/k;->b:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/networkbench/agent/impl/data/type/k;->c:Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/data/type/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/k;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/data/type/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/k;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/k;->a:Ljava/lang/String;

    return-void
.end method
