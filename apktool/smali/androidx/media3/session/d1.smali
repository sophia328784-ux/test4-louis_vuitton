.class public final synthetic Landroidx/media3/session/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/d1;->b:I

    iput-object p1, p0, Landroidx/media3/session/d1;->c:Landroidx/media3/session/MediaSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/session/d1;->b:I

    iget-object p0, p0, Landroidx/media3/session/d1;->c:Landroidx/media3/session/MediaSessionImpl;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->w()V

    return-void

    :pswitch_0
    invoke-static {p0}, Landroidx/media3/session/MediaSessionImpl;->a(Landroidx/media3/session/MediaSessionImpl;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->x:Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionService$MediaSessionListener;->a:Landroidx/media3/session/MediaSessionService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->w:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->V(Landroidx/media3/common/Player$Listener;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
