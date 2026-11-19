.class public Lcom/dynatrace/android/agent/AppFgBgStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackground()V
    .locals 0

    sget-object p0, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    sget-object p0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/Core;->d()V

    return-void
.end method

.method public final onForeground()V
    .locals 1

    sget-object p0, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    sget-object p0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CommunicationManager;->h(Z)V

    return-void
.end method
