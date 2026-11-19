.class public final synthetic Landroidx/media3/session/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/m1;->b:I

    iput-object p1, p0, Landroidx/media3/session/m1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/media3/session/m1;->b:I

    iget-object p0, p0, Landroidx/media3/session/m1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/m1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/session/m1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->J()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
