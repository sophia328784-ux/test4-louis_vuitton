.class public final synthetic Lje0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lje0;->a:I

    iput-object p1, p0, Lje0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget v0, p0, Lje0;->a:I

    iget-object p0, p0, Lje0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->L(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->g(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
