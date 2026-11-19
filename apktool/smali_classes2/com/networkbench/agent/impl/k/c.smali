.class public Lcom/networkbench/agent/impl/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/networkbench/agent/impl/data/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/k/c;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/data/a/c;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/k/c;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/a/c;

    return-object v0
.end method

.method public static a(Lcom/networkbench/agent/impl/data/a/c;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/networkbench/agent/impl/k/c;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/networkbench/agent/impl/data/a/c;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/k/c;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method
