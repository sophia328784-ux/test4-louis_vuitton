.class public final synthetic Lhe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V
    .locals 0

    iput p2, p0, Lhe0;->b:I

    iput-object p1, p0, Lhe0;->c:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lhe0;->b:I

    iget-object p0, p0, Lhe0;->c:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->showBar()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->f(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->e(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->i(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_3
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->k(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_4
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->d(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_5
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->b(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_6
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->j(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :pswitch_7
    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->c(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
