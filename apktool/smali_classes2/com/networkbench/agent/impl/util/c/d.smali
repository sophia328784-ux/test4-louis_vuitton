.class public Lcom/networkbench/agent/impl/util/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/util/c/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/d;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/networkbench/agent/impl/util/c/d$1;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/util/c/d$1;-><init>(Lcom/networkbench/agent/impl/util/c/d;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
