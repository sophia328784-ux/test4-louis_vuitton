.class abstract Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "com.google.common.util.concurrent.CycleDetectingLockFactory"

    const-string v2, "com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace"

    const-string v3, "com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->r(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    return-void
.end method
