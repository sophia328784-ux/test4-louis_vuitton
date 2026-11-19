.class public final synthetic Landroidx/media3/session/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/PlayerInfo;

.field public final synthetic d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/w;->b:I

    iput-object p1, p0, Landroidx/media3/session/w;->c:Landroidx/media3/session/PlayerInfo;

    iput-object p2, p0, Landroidx/media3/session/w;->d:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/w;->b:I

    iget-object v1, p0, Landroidx/media3/session/w;->d:Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/media3/session/w;->c:Landroidx/media3/session/PlayerInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->g0(IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0, p0}, Landroidx/media3/common/Player$Listener;->d0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->m0(Landroidx/media3/common/Timeline;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
