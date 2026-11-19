.class public Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/action/LifecycleAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/dynatrace/android/lifecycle/action/LifecycleAction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

.field public final d:Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/HashMap;

.field public g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    iget-object p1, p1, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->d:Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->d:Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final b()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    return-object p0
.end method

.method public final c(Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;)V
    .locals 4

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->a:Ljava/lang/Enum;

    new-instance v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-wide v2, p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->b:J

    iget p1, p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->c:I

    invoke-direct {v1, v2, v3, p1}, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;-><init>(JI)V

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->f:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->d:Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    return-object p0
.end method

.method public final e()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method public final f()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    return-object p0
.end method

.method public final g()Lcom/dynatrace/android/useraction/InternalUserAction;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LifecycleActionImpl{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', startPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lifecycleEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
