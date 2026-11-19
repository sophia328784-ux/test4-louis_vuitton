.class final Landroidx/media3/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final e(J)V
    .locals 3

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->z1:Z

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->N:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->O:Ljava/util/Formatter;

    invoke-static {v1, v2, p1, p2}, Landroidx/media3/common/util/Util;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->B1:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/common/Player;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/common/Player;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can\'t enable scrubbing mode). player.class="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/common/Player;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-static {p0, v0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V

    :cond_4
    return-void
.end method

.method public final f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 3

    const/4 p1, 0x4

    const/4 v0, 0x5

    const/16 v1, 0xd

    filled-new-array {p1, v0, v1}, [I

    move-result-object v2

    iget-object p2, p2, Landroidx/media3/common/Player$Events;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {p2, v2}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result v2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    :cond_0
    const/4 v2, 0x7

    filled-new-array {p1, v0, v2, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->r()V

    :cond_1
    const/16 p1, 0x8

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->s()V

    :cond_2
    const/16 p1, 0x9

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->u()V

    :cond_3
    new-array p1, v2, [I

    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->o()V

    :cond_4
    const/16 p1, 0xb

    const/4 v0, 0x0

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->v()V

    :cond_5
    const/16 p1, 0xc

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->q()V

    :cond_6
    const/4 p1, 0x2

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->w()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->J:Landroid/view/View;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->I:Landroid/view/View;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/view/View;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    return-void

    :cond_0
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_1

    const/16 p0, 0x9

    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->q()V

    goto/16 :goto_3

    :cond_1
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_2

    const/4 p0, 0x7

    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->l()V

    goto/16 :goto_3

    :cond_2
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    if-ne v6, p1, :cond_3

    invoke-interface {v5}, Landroidx/media3/common/Player;->h()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_11

    const/16 p0, 0xc

    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->y()V

    goto/16 :goto_3

    :cond_3
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    if-ne v6, p1, :cond_4

    const/16 p0, 0xb

    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->z()V

    goto/16 :goto_3

    :cond_4
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    const/4 v7, 0x1

    if-ne v6, p1, :cond_6

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->x1:Z

    invoke-static {v5, p0}, Landroidx/media3/common/util/Util;->b0(Landroidx/media3/common/Player;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v5}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    goto/16 :goto_3

    :cond_5
    invoke-interface {v5, v7}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->pause()V

    goto/16 :goto_3

    :cond_6
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->B:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_c

    const/16 p1, 0xf

    invoke-interface {v5, p1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->i()I

    move-result p1

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->D1:I

    move v0, v7

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    add-int v2, p1, v0

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_a

    if-eq v2, v7, :cond_8

    if-eq v2, v1, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    move p1, v2

    :cond_b
    invoke-interface {v5, p1}, Landroidx/media3/common/Player;->E0(I)V

    goto :goto_3

    :cond_c
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_d

    const/16 p0, 0xe

    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {v5}, Landroidx/media3/common/Player;->w()Z

    move-result p0

    xor-int/2addr p0, v7

    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->j0(Z)V

    goto :goto_3

    :cond_d
    if-ne v3, p1, :cond_e

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {p0, p1, v3}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_3

    :cond_e
    if-ne v2, p1, :cond_f

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    invoke-virtual {p0, p1, v2}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_3

    :cond_f
    if-ne v1, p1, :cond_10

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-virtual {p0, p1, v1}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_3

    :cond_10
    if-ne v0, p1, :cond_11

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    :cond_11
    :goto_3
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    throw p0
.end method

.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->J1:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    :cond_0
    return-void
.end method

.method public final x(J)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->N:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->O:Ljava/util/Formatter;

    invoke-static {v1, v2, p1, p2}, Landroidx/media3/common/util/Util;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/common/Player;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-static {p0, v0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V

    :cond_1
    return-void
.end method

.method public final z(JZ)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->b:Landroidx/media3/ui/PlayerControlView;

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->z1:Z

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    invoke-static {p0, v0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/common/Player;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->g:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/common/Player;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->j:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    return-void
.end method
