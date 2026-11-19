.class public Lcom/networkbench/agent/impl/performance/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I = 0xc8


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/b/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/b/a;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/b;->a:Ljava/util/List;

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/performance/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const-string p0, "FpsModule"

    const-string p1, "metricItems is over max size"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/b;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
