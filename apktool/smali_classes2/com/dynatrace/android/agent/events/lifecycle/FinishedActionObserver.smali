.class public Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/action/LifecycleActionObserver;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;->a:Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

    return-void
.end method
