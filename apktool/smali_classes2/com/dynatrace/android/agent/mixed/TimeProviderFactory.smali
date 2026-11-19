.class public Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/mixed/TimeProviderFactory$SystemTimeProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dynatrace/agent/common/time/TimeProvider;
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory$SystemTimeProvider;

    sget-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->b:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    invoke-direct {v0, v1}, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory$SystemTimeProvider;-><init>(Lcom/dynatrace/android/agent/DeviceStartTimeProvider;)V

    return-object v0
.end method
