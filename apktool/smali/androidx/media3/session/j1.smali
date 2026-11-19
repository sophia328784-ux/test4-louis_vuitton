.class public final synthetic Landroidx/media3/session/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionLegacyStub;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;II)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/j1;->b:I

    iput-object p1, p0, Landroidx/media3/session/j1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    iput p2, p0, Landroidx/media3/session/j1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    iget p1, p0, Landroidx/media3/session/j1;->b:I

    iget v0, p0, Landroidx/media3/session/j1;->d:I

    iget-object p0, p0, Landroidx/media3/session/j1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->u(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->j0(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->s(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->E0(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
