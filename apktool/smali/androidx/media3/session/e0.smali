.class public final synthetic Landroidx/media3/session/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/e0;->b:I

    iput-object p1, p0, Landroidx/media3/session/e0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p0, Landroidx/media3/session/e0;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/media3/session/e0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    const/4 p1, 0x0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->V0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    :cond_0
    return v1

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->a()V

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
