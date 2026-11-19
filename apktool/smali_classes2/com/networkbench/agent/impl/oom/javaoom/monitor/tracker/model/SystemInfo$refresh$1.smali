.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "line",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getVssInKb()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getRssInKb()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getThread()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VmSize"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getVSS_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->setVssInKb(I)V

    return-void

    :cond_1
    const-string v0, "VmRSS"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getRSS_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->setRssInKb(I)V

    return-void

    :cond_2
    const-string v0, "Threads"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getTHREADS_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->setThread(I)V

    :cond_3
    :goto_0
    return-void
.end method
