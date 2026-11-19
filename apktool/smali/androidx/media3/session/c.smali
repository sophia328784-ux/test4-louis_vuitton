.class public final synthetic Landroidx/media3/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionImpl;

.field public final synthetic d:Landroidx/media3/session/MediaSession$ControllerInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/c;->b:I

    iput-object p1, p0, Landroidx/media3/session/c;->c:Landroidx/media3/session/MediaSessionImpl;

    iput-object p2, p0, Landroidx/media3/session/c;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/media3/session/c;->b:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/16 v3, 0xc

    const/high16 v4, -0x80000000

    iget-object v5, p0, Landroidx/media3/session/c;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/c;->c:Landroidx/media3/session/MediaSessionImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    invoke-direct {v0, v3}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v5, v4, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v5, v4, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    invoke-virtual {p0, v5, v4, v2, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, v5, v4}, Landroidx/media3/session/MediaSessionStub;->I2(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, v5, v4}, Landroidx/media3/session/MediaSessionStub;->I2(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    invoke-virtual {p0, v5, v4, v2, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v5, v4, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    invoke-virtual {p0, v5, v4, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    invoke-virtual {p0, v5, v4, v3, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Landroidx/media3/session/MediaSessionImpl;->p(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
