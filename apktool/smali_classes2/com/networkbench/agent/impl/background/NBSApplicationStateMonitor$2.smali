.class Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$2;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->run()V
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

    iput-object p1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$2;->a:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$2;->a:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    invoke-static {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->a(Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;)V

    return-void
.end method
