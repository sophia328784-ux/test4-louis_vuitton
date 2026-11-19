.class public Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OOMSinglePath"
.end annotation


# instance fields
.field public childIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public declaredClass:Ljava/lang/String;

.field public reference:Ljava/lang/String;

.field public referenceId:Ljava/lang/String;

.field public referenceType:Ljava/lang/String;

.field public retainedHeapByteSize:I

.field public retainedObjectCount:I

.field public shallowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->childIds:Ljava/util/Set;

    return-void
.end method
