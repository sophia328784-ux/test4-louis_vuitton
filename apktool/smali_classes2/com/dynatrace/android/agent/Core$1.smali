.class Lcom/dynatrace/android/agent/Core$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    const-string p0, "EventThrottlingInvalidEventType"

    invoke-static {p0, p1}, Lcom/dynatrace/android/internal/api/SelfMonitoring;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    const-string p0, "EventThrottling"

    invoke-static {p0, p1}, Lcom/dynatrace/android/internal/api/SelfMonitoring;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
