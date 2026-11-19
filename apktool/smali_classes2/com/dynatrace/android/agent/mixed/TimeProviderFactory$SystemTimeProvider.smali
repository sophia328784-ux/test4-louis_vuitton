.class Lcom/dynatrace/android/agent/mixed/TimeProviderFactory$SystemTimeProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/common/time/TimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemTimeProvider"
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/DeviceStartTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory$SystemTimeProvider;->a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory$SystemTimeProvider;->a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    iget-wide v0, p0, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method
