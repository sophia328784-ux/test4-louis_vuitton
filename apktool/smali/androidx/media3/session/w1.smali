.class public final synthetic Landroidx/media3/session/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/w1;->b:I

    iput-object p1, p0, Landroidx/media3/session/w1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 0

    iget p3, p0, Landroidx/media3/session/w1;->b:I

    iget-object p0, p0, Landroidx/media3/session/w1;->c:Ljava/util/List;

    packed-switch p3, :pswitch_data_0

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->m(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->m(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
