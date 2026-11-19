.class Lcom/dynatrace/android/agent/Core$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/window/WindowListenerFactory;


# virtual methods
.method public final a(Landroid/view/Window;)Lcom/dynatrace/android/window/OnTouchEventListener;
    .locals 0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    new-instance p1, Lkq;

    invoke-direct {p1, p0}, Lkq;-><init>(Landroid/view/View;)V

    return-object p1
.end method
