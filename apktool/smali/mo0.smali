.class public final synthetic Lmo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    iput p2, p0, Lmo0;->b:I

    iput-object p1, p0, Lmo0;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lmo0;->b:I

    iget-object p0, p0, Lmo0;->c:Landroidx/media3/ui/PlayerControlView;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->u1:Z

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->q1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->o1:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->p1:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->n1:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->u1:Z

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/widget/ImageView;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/widget/ImageView;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->t1:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;->x(Z)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    throw p0

    :pswitch_0
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_1
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->u1:Z

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->q1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->o1:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->p1:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->n1:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    goto :goto_5

    :cond_6
    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->u1:Z

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/widget/ImageView;

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/widget/ImageView;

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->t1:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    if-eqz p0, :cond_b

    invoke-interface {p0, v0}, Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;->x(Z)V

    :cond_b
    :goto_5
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
