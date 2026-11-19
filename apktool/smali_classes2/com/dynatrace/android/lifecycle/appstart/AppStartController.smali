.class public Lcom/dynatrace/android/lifecycle/appstart/AppStartController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

.field public final b:Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;

.field public final c:Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

.field public final f:Landroid/app/Application;

.field public g:Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;

    iput-object p3, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->c:Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;

    iput-object p4, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->f:Landroid/app/Application;

    new-instance p2, Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    invoke-direct {p2, p0, p1}, Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;-><init>(Lcom/dynatrace/android/lifecycle/appstart/AppStartController;Lcom/dynatrace/android/agent/measurement/MeasurementProvider;)V

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->e:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->g:Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;

    iput-object p1, v0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->c:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p2, v0, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->a:Ljava/lang/String;

    new-instance p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;

    invoke-direct {p1, v0}, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;-><init>(Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;)V

    sget-boolean p2, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object p2, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->c:Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;

    invoke-interface {p2, p1}, Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;->a(Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;)V

    iget-object p1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->f:Landroid/app/Application;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->e:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
