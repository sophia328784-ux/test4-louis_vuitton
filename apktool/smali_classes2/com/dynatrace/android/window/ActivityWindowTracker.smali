.class public Lcom/dynatrace/android/window/ActivityWindowTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final b:Lcom/dynatrace/android/window/WindowCallbackInstrumentation;

.field public final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/window/WindowCallbackInstrumentation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/window/ActivityWindowTracker;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/dynatrace/android/window/ActivityWindowTracker;->b:Lcom/dynatrace/android/window/WindowCallbackInstrumentation;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/window/ActivityWindowTracker;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/dynatrace/android/window/ActivityWindowTracker;->c:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/window/ActivityWindowTracker;->b:Lcom/dynatrace/android/window/WindowCallbackInstrumentation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/dynatrace/android/window/DefaultWindowCallback;

    invoke-direct {v1}, Lcom/dynatrace/android/window/DefaultWindowCallback;-><init>()V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/dynatrace/android/window/WindowCallbackInstrumentation;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dynatrace/android/window/WindowListenerFactory;

    invoke-interface {v5, p1}, Lcom/dynatrace/android/window/WindowListenerFactory;->a(Landroid/view/Window;)Lcom/dynatrace/android/window/OnTouchEventListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/dynatrace/android/window/WindowCallbackWrapper;

    new-instance v5, Lcom/dynatrace/android/window/WindowEventSegmentation;

    invoke-direct {v5, v3, v4}, Lcom/dynatrace/android/window/WindowEventSegmentation;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1, v5}, Lcom/dynatrace/android/window/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;Lcom/dynatrace/android/window/WindowEventSegmentation;)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
