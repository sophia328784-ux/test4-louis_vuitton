.class public final synthetic Landroidx/media3/session/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/c1;->b:I

    iput-object p3, p0, Landroidx/media3/session/c1;->d:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/session/c1;->c:I

    iput-object p4, p0, Landroidx/media3/session/c1;->e:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/c1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/media3/session/c1;->b:I

    iget-object v1, p0, Landroidx/media3/session/c1;->f:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/session/c1;->e:Ljava/lang/Object;

    iget v3, p0, Landroidx/media3/session/c1;->c:I

    iget-object p0, p0, Landroidx/media3/session/c1;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaSessionLegacyStub$2;

    check-cast v2, Ljava/util/List;

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerWrapper;->J0(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v3, v2}, Landroidx/media3/session/PlayerWrapper;->A0(ILjava/util/List;)V

    :goto_0
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v2, 0x14

    iget-object v3, v0, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v3, v2}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    invoke-virtual {p0, v1}, Landroidx/media3/session/MediaSessionImpl;->s(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaNotificationManager;

    check-cast v2, Landroidx/media3/session/MediaSession;

    check-cast v1, Landroidx/media3/session/MediaNotification;

    iget v0, p0, Landroidx/media3/session/MediaNotificationManager;->k:I

    if-ne v3, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaNotificationManager;->c(Z)Z

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/media3/session/MediaNotificationManager;->e(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
