.class final Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final e(J)V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/util/Formatter;

    invoke-static {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->c(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->q()V

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    if-ne v1, p1, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->l()V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-ne v1, p1, :cond_3

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->h()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_c

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->y()V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-ne v1, p1, :cond_4

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->z()V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-ne v1, p1, :cond_5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->d(Lcom/google/android/exoplayer2/Player;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-ne v1, p1, :cond_6

    sget p0, Lcom/google/android/exoplayer2/util/Util;->a:I

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_b

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->i()I

    move-result p1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_a

    add-int v4, p1, v2

    rem-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_8

    if-eq v4, v3, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->E()V

    goto :goto_3

    :cond_b
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-ne p0, p1, :cond_c

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->w()Z

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->g()V

    :cond_c
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

.method public final x(J)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/util/Formatter;

    invoke-static {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->c(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final z(JZ)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->b:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Z

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->p()Lcom/google/android/exoplayer2/Timeline;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->v()I

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->B()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h()V

    :cond_0
    return-void
.end method
