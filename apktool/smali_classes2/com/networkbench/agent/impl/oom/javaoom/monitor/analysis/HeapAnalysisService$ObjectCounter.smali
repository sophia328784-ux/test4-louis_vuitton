.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectCounter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;",
        "",
        "()V",
        "allCnt",
        "",
        "getAllCnt",
        "()I",
        "setAllCnt",
        "(I)V",
        "leakCnt",
        "getLeakCnt",
        "setLeakCnt",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private allCnt:I

.field private leakCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllCnt()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->allCnt:I

    return p0
.end method

.method public final getLeakCnt()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->leakCnt:I

    return p0
.end method

.method public final setAllCnt(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->allCnt:I

    return-void
.end method

.method public final setLeakCnt(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->leakCnt:I

    return-void
.end method
