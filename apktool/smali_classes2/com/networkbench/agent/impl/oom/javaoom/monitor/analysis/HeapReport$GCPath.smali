.class public Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCPath"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;
    }
.end annotation


# instance fields
.field public gcRoot:Ljava/lang/String;

.field public instanceCount:Ljava/lang/Integer;

.field public leakObjectId:Ljava/lang/String;

.field public leakReason:Ljava/lang/String;

.field public path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;",
            ">;"
        }
    .end annotation
.end field

.field public selfTracePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->path:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->selfTracePath:Ljava/util/List;

    return-void
.end method
