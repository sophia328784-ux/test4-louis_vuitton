.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \r2\u00020\u0001:\u0002\r\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver;",
        "Landroid/os/ResultReceiver;",
        "()V",
        "mResultCallBack",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;",
        "onReceiveResult",
        "",
        "resultCode",
        "",
        "resultData",
        "Landroid/os/Bundle;",
        "setResultCallBack",
        "resultCallBack",
        "Companion",
        "ResultCallBack",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$Companion;

.field public static final RESULT_CODE_FAIL:I = 0x3ea

.field public static final RESULT_CODE_OK:I = 0x3e9


# instance fields
.field private mResultCallBack:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver;->mResultCallBack:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;

    if-eqz p0, :cond_1

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;->onSuccess()V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;->onError()V

    :cond_1
    return-void
.end method

.method public final setResultCallBack(Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver;->mResultCallBack:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;

    return-void
.end method
