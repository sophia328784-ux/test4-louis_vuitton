.class Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/networkbench/agent/impl/plugin/traceroute/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;->b:Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;->b:Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a(Ljava/util/ArrayList;)Lcom/networkbench/agent/impl/plugin/traceroute/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TraceRouteResult   has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
