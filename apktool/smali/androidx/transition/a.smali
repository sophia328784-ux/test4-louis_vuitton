.class public final synthetic Landroidx/transition/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Landroidx/transition/Transition$SeekController;


# direct methods
.method public synthetic constructor <init>(Landroidx/transition/Transition$SeekController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/a;->a:Landroidx/transition/Transition$SeekController;

    return-void
.end method


# virtual methods
.method public final a(FZ)V
    .locals 8

    iget-object p0, p0, Landroidx/transition/a;->a:Landroidx/transition/Transition$SeekController;

    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    if-nez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    sget-object p2, Landroidx/transition/Transition$TransitionNotification;->b:Landroidx/transition/b;

    const/4 v1, 0x0

    if-gez p1, :cond_1

    iget-wide v2, v0, Landroidx/transition/Transition;->y:J

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->W(I)Landroidx/transition/Transition;

    move-result-object p1

    iget-object v1, p1, Landroidx/transition/Transition;->t:Landroidx/transition/Transition;

    const/4 v4, 0x0

    iput-object v4, p1, Landroidx/transition/Transition;->t:Landroidx/transition/Transition;

    iget-wide v4, p0, Landroidx/transition/Transition$SeekController;->a:J

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v6, v7, v4, v5}, Landroidx/transition/TransitionSet;->M(JJ)V

    invoke-virtual {v0, v2, v3, v6, v7}, Landroidx/transition/TransitionSet;->M(JJ)V

    iput-wide v2, p0, Landroidx/transition/Transition$SeekController;->a:J

    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->g:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, v0, Landroidx/transition/Transition;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v1, v1, p2, p0}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    return-void

    :cond_1
    invoke-virtual {v0, v0, p2, v1}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    :cond_2
    return-void
.end method
