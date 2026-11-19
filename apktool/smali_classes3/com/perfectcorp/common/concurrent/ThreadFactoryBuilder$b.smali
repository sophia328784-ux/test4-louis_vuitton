.class final Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:Lcom/perfectcorp/common/concurrent/NamedThreadFactory;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->c:Z

    iput-boolean v0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;->b:Z

    iget v0, p1, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->d:I

    iput v0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;->c:I

    iget-boolean v0, p1, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->b:Z

    iget-object p1, p1, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/common/concurrent/c;

    invoke-direct {v0, p1}, Lcom/perfectcorp/common/concurrent/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/common/concurrent/d;

    invoke-direct {v0, p1}, Lcom/perfectcorp/common/concurrent/d;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;->d:Lcom/perfectcorp/common/concurrent/NamedThreadFactory;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;

    iget v1, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$a;-><init>(Ljava/lang/Runnable;IB)V

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder$b;->d:Lcom/perfectcorp/common/concurrent/NamedThreadFactory;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
