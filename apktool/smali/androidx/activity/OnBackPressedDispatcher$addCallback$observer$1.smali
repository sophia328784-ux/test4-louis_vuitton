.class public final Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/activity/OnBackPressedDispatcher$addCallback$observer$1",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "activity"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

.field public final synthetic c:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;->b:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;->c:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object p1, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;->b:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/navigationevent/NavigationEventHandler;->h()V

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;->c:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->j(Z)V

    return-void

    :cond_2
    invoke-virtual {p2, v0}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->j(Z)V

    return-void
.end method
