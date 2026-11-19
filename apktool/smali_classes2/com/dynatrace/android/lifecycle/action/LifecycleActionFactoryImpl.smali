.class public Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;
    .locals 0

    new-instance p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;

    invoke-direct {p0}, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    new-instance p3, Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    invoke-direct {p3, p1, p2}, Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;-><init>(Ljava/lang/String;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;)V

    iput-object p3, p0, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;->d:Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    new-instance p1, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;

    invoke-direct {p1, p0}, Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;-><init>(Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl$ImmutableData;)V

    return-object p1
.end method
