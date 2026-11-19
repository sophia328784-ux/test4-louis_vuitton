.class public Lcom/dynatrace/android/agent/TimeLineProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

.field public static final c:Lcom/dynatrace/android/agent/TimeLineProvider;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;-><init>(JJJ)V

    sput-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->b:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    new-instance v1, Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/TimeLineProvider;-><init>(Lcom/dynatrace/android/agent/DeviceStartTimeProvider;)V

    sput-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/DeviceStartTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/TimeLineProvider;->a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object p0, p0, Lcom/dynatrace/android/agent/TimeLineProvider;->a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    iget-wide v0, p0, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method
