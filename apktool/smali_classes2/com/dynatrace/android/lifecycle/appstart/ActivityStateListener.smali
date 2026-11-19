.class public Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

.field public final c:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/lifecycle/appstart/AppStartController;Lcom/dynatrace/android/agent/measurement/MeasurementProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;->c:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;->c:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {v0}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    invoke-virtual {p0, v0, p1}, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
