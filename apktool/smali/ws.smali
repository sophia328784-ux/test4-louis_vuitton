.class public final synthetic Lws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lws;->b:I

    iput-object p1, p0, Lws;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lws;->b:I

    iget-object p0, p0, Lws;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    :goto_0
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/LoadControl;

    goto :goto_0

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    goto :goto_0

    :pswitch_2
    check-cast p0, Landroidx/media3/exoplayer/RenderersFactory;

    goto :goto_0

    :pswitch_3
    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_0

    :pswitch_4
    check-cast p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    goto :goto_0

    :pswitch_5
    check-cast p0, Landroidx/media3/exoplayer/DefaultLoadControl;

    goto :goto_0

    :pswitch_6
    check-cast p0, Ljava/lang/Class;

    sget v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->l:I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
