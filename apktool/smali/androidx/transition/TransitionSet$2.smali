.class Landroidx/transition/TransitionSet$2;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/TransitionSet$2;->a:Landroidx/transition/TransitionSet;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p0, p0, Landroidx/transition/TransitionSet$2;->a:Landroidx/transition/TransitionSet;

    iget-object v0, p0, Landroidx/transition/TransitionSet;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->A()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/transition/Transition$TransitionNotification;->c:Landroidx/transition/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/Transition;->s:Z

    sget-object p1, Landroidx/transition/Transition$TransitionNotification;->b:Landroidx/transition/b;

    invoke-virtual {p0, p0, p1, v0}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    :cond_0
    return-void
.end method
