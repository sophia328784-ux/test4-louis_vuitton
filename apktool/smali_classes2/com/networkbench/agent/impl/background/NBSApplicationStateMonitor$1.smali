.class Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;-><init>(IILjava/util/concurrent/TimeUnit;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$1;->a:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "Tingyun-Monitor"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
