.class public interface abstract Lcom/dynatrace/android/lifecycle/action/LifecycleAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/concurrent/atomic/AtomicBoolean;
.end method

.method public abstract b()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;
.end method

.method public abstract c(Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;)V
.end method

.method public abstract d()Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;
.end method

.method public abstract e()Ljava/util/HashMap;
.end method

.method public abstract f()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;
.end method

.method public abstract g()Lcom/dynatrace/android/useraction/InternalUserAction;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract h(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)V
.end method
