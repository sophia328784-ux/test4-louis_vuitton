.class public final synthetic Lie0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lie0;->a:I

    iput-object p1, p0, Lie0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget v0, p0, Lie0;->a:I

    iget-object p0, p0, Lie0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->M(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p0, p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->a(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Landroid/media/MediaPlayer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
