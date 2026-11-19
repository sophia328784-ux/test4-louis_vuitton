.class public Lcom/dynatrace/android/agent/DeviceStartTimeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-long p3, p1, p3

    iput-wide p3, p0, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;->a:J

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    sub-long/2addr p1, p5

    iput-wide p1, p0, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;->b:J

    return-void
.end method
