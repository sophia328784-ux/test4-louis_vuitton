.class public final synthetic Landroidx/media3/session/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/u1;->b:I

    iput p1, p0, Landroidx/media3/session/u1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/u1;->b:I

    iget p0, p0, Landroidx/media3/session/u1;->c:F

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->g(F)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->t(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
