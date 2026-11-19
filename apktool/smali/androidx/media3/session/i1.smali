.class public final synthetic Landroidx/media3/session/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionLegacyStub;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;JI)V
    .locals 0

    iput p4, p0, Landroidx/media3/session/i1;->b:I

    iput-object p1, p0, Landroidx/media3/session/i1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-wide p2, p0, Landroidx/media3/session/i1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget p1, p0, Landroidx/media3/session/i1;->b:I

    iget-wide v0, p0, Landroidx/media3/session/i1;->d:J

    iget-object p0, p0, Landroidx/media3/session/i1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->y0(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
