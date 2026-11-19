.class public Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

.field public final d:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final e:Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->d:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->e:Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->e:Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    iget-object p1, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->c:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->d:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppStartAction{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', startPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->d:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
