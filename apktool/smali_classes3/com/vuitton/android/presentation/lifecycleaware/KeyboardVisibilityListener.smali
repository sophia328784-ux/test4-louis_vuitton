.class public final Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroid/view/View;",
        "view",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;",
        "listener",
        "<init>",
        "(Landroid/view/View;Landroidx/lifecycle/Lifecycle;Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;)V",
        "OnKeyboardVisibilityListener",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/lifecycle/Lifecycle;

.field public final c:Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;

.field public final d:Landroid/view/View;

.field public final e:Ly40;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/lifecycle/Lifecycle;Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->b:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->c:Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->d:Landroid/view/View;

    new-instance p1, Ly40;

    invoke-direct {p1, p0}, Ly40;-><init>(Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->e:Ly40;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->e:Ly40;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->e:Ly40;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->b:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
