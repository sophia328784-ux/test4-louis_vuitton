.class public Lcom/dynatrace/android/useraction/AppStartAggregatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;


# instance fields
.field public final a:Lcom/dynatrace/android/useraction/ActionNameCustomizer;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/useraction/ActionNameCustomizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/useraction/AppStartAggregatorImpl;->a:Lcom/dynatrace/android/useraction/ActionNameCustomizer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;
    .locals 1

    new-instance v0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    iget-object p0, p0, Lcom/dynatrace/android/useraction/AppStartAggregatorImpl;->a:Lcom/dynatrace/android/useraction/ActionNameCustomizer;

    invoke-interface {p0, p2}, Lcom/dynatrace/android/useraction/ActionNameCustomizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/dynatrace/android/useraction/UserActionUtil;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/agent/DTXAutoAction;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;-><init>(Lcom/dynatrace/android/agent/DTXAutoAction;)V

    return-object v0
.end method

.method public final b(Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;)V
    .locals 0

    iget-object p0, p1, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->A:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->e(Lcom/dynatrace/android/agent/DTXActionImpl;)V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/CalloutTable;->a(Lcom/dynatrace/android/agent/DTXActionImpl;)V

    return-void
.end method
