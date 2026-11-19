.class public Lcom/networkbench/agent/impl/performance/a/e/f;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lcom/networkbench/agent/impl/performance/a/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/performance/a/e/f;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/networkbench/agent/impl/performance/a/e/f;->a:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/a/c/g;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/performance/a/c/g;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/a/e/f;->a(Lcom/networkbench/agent/impl/performance/a/c/g;)Z

    move-result p0

    return p0
.end method
