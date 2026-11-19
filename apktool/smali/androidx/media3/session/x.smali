.class public final synthetic Landroidx/media3/session/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/PlayerInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/PlayerInfo;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/x;->b:I

    iput-object p1, p0, Landroidx/media3/session/x;->c:Landroidx/media3/session/PlayerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/x;->b:I

    iget-object p0, p0, Landroidx/media3/session/x;->c:Landroidx/media3/session/PlayerInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->A:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->K(I)V

    return-void

    :pswitch_0
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->y:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->e0(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->Q(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->q0(Landroidx/media3/common/Tracks;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->R(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :pswitch_4
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->E:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->u0(J)V

    return-void

    :pswitch_5
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->D:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->p0(J)V

    return-void

    :pswitch_6
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->C:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->P(J)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->b(Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_8
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->t:I

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_9
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->r0(Landroidx/media3/common/DeviceInfo;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->B(Landroidx/media3/common/text/CueGroup;)V

    return-void

    :pswitch_b
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    iget-object p0, p0, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->n(Ljava/util/List;)V

    return-void

    :pswitch_c
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->p:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->f(I)V

    return-void

    :pswitch_d
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->i0(Landroidx/media3/common/AudioAttributes;)V

    return-void

    :pswitch_e
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->n:F

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->h0(F)V

    return-void

    :pswitch_f
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->o0(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :pswitch_10
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->N(Z)V

    return-void

    :pswitch_11
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->h:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->A(I)V

    return-void

    :pswitch_12
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->h(Landroidx/media3/common/PlaybackParameters;)V

    return-void

    :pswitch_13
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->x:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->x0(Z)V

    return-void

    :pswitch_14
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->z:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->H(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
