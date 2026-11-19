.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->startLoop(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2$1;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2$1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p0, v0, v1}, Lcom/networkbench/agent/impl/base/Monitor_ThreadKt;->async$default(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
