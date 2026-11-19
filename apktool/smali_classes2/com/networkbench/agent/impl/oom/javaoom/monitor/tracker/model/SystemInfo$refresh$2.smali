.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;
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
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;

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

    .line 134
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "MemTotal"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getMEM_TOTAL_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->setTotalInKb(I)V

    return-void

    :cond_0
    const-string p0, "MemFree"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getMEM_FREE_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->setFreeInKb(I)V

    return-void

    :cond_1
    const-string p0, "MemAvailable"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getMEM_AVA_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->setAvailableInKb(I)V

    return-void

    :cond_2
    const-string p0, "CmaTotal"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getMEM_CMA_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->setCmaTotal(I)V

    return-void

    :cond_3
    const-string p0, "ION_heap"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$getMEM_ION_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->setIONHeap(I)V

    :cond_4
    return-void
.end method
