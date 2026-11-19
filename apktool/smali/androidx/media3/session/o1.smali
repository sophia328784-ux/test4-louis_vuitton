.class public final synthetic Landroidx/media3/session/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/o1;->b:I

    iput-object p1, p0, Landroidx/media3/session/o1;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/session/o1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/media3/session/o1;->b:I

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media3/session/o1;->d:I

    iget-object p0, p0, Landroidx/media3/session/o1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->k:Landroidx/collection/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->o:Landroidx/media3/session/SessionToken;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->d()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->m:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/j;

    invoke-direct {v2, p0, v1}, Landroidx/media3/session/j;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    const/16 v3, 0x22

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, -0x64

    if-eq v2, v0, :cond_a

    const/4 v0, -0x1

    if-eq v2, v0, :cond_8

    if-eq v2, v1, :cond_6

    const/16 v0, 0x64

    if-eq v2, v0, :cond_4

    const/16 v0, 0x65

    if-eq v2, v0, :cond_2

    const-string p0, "onAdjustVolume: Ignoring unknown direction: "

    invoke-static {v2, p0}, La;->u(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->b1()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroidx/media3/session/PlayerWrapper;->G(IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->b1()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->X(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1, v2}, Landroidx/media3/session/PlayerWrapper;->G(IZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Landroidx/media3/session/PlayerWrapper;->X(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->I(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c0()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->T(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->H()V

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/PlayerWrapper;->G(IZ)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->X(Z)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    const/16 v3, 0x21

    if-nez v0, :cond_c

    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v2, v1}, Landroidx/media3/session/PlayerWrapper;->t0(II)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v2}, Landroidx/media3/session/PlayerWrapper;->L0(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
