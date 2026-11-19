.class public Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/measurement/MeasurementProvider;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/TimeLineProvider;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/TimeLineProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;->a:Lcom/dynatrace/android/agent/TimeLineProvider;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;
    .locals 3

    new-instance v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object p0, p0, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;->a:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    sget-object p0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;-><init>(JI)V

    return-object v0
.end method
