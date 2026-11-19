.class public Lcom/networkbench/agent/impl/asyncaction/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->isOverTime()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->releaseHandler()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 42
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->releaseHandler()V

    .line 45
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static b(Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/j;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
