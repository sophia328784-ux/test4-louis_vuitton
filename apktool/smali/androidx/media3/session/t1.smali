.class public final synthetic Landroidx/media3/session/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/t1;->b:I

    iput-boolean p1, p0, Landroidx/media3/session/t1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/t1;->b:I

    iget-boolean p0, p0, Landroidx/media3/session/t1;->c:Z

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->j0(Z)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->X(Z)V

    return-void

    :pswitch_1
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->P(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
