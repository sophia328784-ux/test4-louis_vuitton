.class public final Lcom/sightcall/libraries/ui/Views;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0002H\u0001\u00a2\u0006\u0002\u0010\u0003\u001a\u001e\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u001a\u001e\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r\u001a\u0012\u0010\u000e\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0006\u001a\n\u0010\u0013\u001a\u00020\u0012*\u00020\u0006\u001a\u0012\u0010\u0014\u001a\u00020\u00062\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u000b*\u00020\u0002\u00a2\u0006\u0002\u0010\u0018\u001a;\u0010\u0019\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u001f\u0008\u0002\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u001e\u00a2\u0006\u0002\u0008\u001f\u001a3\u0010 \u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001c2\u001f\u0008\u0002\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u001e\u00a2\u0006\u0002\u0008\u001f\u001a3\u0010\u001a\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001c2\u001f\u0008\u0002\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u001e\u00a2\u0006\u0002\u0008\u001f\u001a\u0012\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"*\u00020\u0002H\u0007\u00a8\u0006$"
    }
    d2 = {
        "generateAndSetId",
        "V",
        "Landroid/view/View;",
        "(Landroid/view/View;)Landroid/view/View;",
        "setVisible",
        "visible",
        "",
        "changeAlpha",
        "setInvisible",
        "invisible",
        "onFirstLayout",
        "",
        "runnable",
        "Lkotlin/Function0;",
        "removeOnGlobalLayoutListenerCompat",
        "listener",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "toVisibility",
        "",
        "toInvisibility",
        "checkMainThread",
        "observer",
        "Lio/reactivex/rxjava3/core/Observer;",
        "removeFromParent",
        "(Landroid/view/View;)Lkotlin/Unit;",
        "reveal",
        "show",
        "duration",
        "",
        "consumer",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "hide",
        "layoutSizeChangedEvents",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/libraries/ui/Views;->reveal$lambda$0(Landroid/view/View;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/libraries/ui/Views;->hide$lambda$0(Landroid/view/View;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/animation/Animator;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/libraries/ui/Views;->hide$lambda$1(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/animation/Animator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final checkMainThread(Lio/reactivex/rxjava3/core/Observer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->f(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected to be called on the main thread but was "

    invoke-static {v2, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/libraries/ui/Views;->show$lambda$0(Landroid/view/View;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final generateAndSetId(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    return-object p0
.end method

.method public static final hide(Landroid/view/View;JLkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/sightcall/libraries/ui/AnimatorCompletionListener;

    new-instance v3, Lm21;

    const/16 v4, 0x1c

    invoke-direct {v3, p3, p0, v4}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Lcom/sightcall/libraries/ui/AnimatorCompletionListener;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic hide$default(Landroid/view/View;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    new-instance p3, Le31;

    const/16 p4, 0xc

    invoke-direct {p3, p4}, Le31;-><init>(I)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/libraries/ui/Views;->hide(Landroid/view/View;JLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final hide$lambda$0(Landroid/view/View;Z)Lkotlin/Unit;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sightcall/libraries/ui/Views;->setVisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final hide$lambda$1(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/animation/Animator;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final layoutSizeChangedEvents(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEventObservable;

    invoke-direct {v0, p0}, Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEventObservable;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static final onFirstLayout(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sightcall/libraries/ui/Views$onFirstLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/libraries/ui/Views$onFirstLayout$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static final removeFromParent(Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static final removeOnGlobalLayoutListenerCompat(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static final reveal(Landroid/view/View;ZJLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3, p4}, Lcom/sightcall/libraries/ui/Views;->show(Landroid/view/View;JLkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/sightcall/libraries/ui/Views;->hide(Landroid/view/View;JLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic reveal$default(Landroid/view/View;ZJLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    new-instance p4, Le31;

    const/16 p5, 0xe

    invoke-direct {p4, p5}, Le31;-><init>(I)V

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sightcall/libraries/ui/Views;->reveal(Landroid/view/View;ZJLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final reveal$lambda$0(Landroid/view/View;Z)Lkotlin/Unit;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sightcall/libraries/ui/Views;->setVisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final setInvisible(Landroid/view/View;Z)Landroid/view/View;
    .locals 3

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sightcall/libraries/ui/Views;->setInvisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final setInvisible(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-object p0
.end method

.method public static synthetic setInvisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/libraries/ui/Views;->setInvisible(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final setVisible(Landroid/view/View;Z)Landroid/view/View;
    .locals 3

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sightcall/libraries/ui/Views;->setVisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final setVisible(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-object p0
.end method

.method public static synthetic setVisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/libraries/ui/Views;->setVisible(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final show(Landroid/view/View;JLkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic show$default(Landroid/view/View;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    new-instance p3, Le31;

    const/16 p4, 0xd

    invoke-direct {p3, p4}, Le31;-><init>(I)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/libraries/ui/Views;->show(Landroid/view/View;JLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final show$lambda$0(Landroid/view/View;Z)Lkotlin/Unit;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sightcall/libraries/ui/Views;->setVisible$default(Landroid/view/View;ZZILjava/lang/Object;)Landroid/view/View;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final toInvisibility(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final toVisibility(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method
