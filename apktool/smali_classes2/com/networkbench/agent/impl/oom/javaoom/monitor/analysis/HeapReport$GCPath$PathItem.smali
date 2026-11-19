.class public Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathItem"
.end annotation


# instance fields
.field declaredClass:Ljava/lang/String;

.field reference:Ljava/lang/String;

.field referenceId:Ljava/lang/String;

.field referenceType:Ljava/lang/String;

.field retainedHeapByteSize:I

.field retainedObjectCount:I

.field shallowSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
