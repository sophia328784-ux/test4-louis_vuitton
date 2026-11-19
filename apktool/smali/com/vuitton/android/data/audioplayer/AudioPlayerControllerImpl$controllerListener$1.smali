.class public final Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl$controllerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/data/audioplayer/AudioPlayerControllerImpl$controllerListener$1",
        "Landroidx/media3/common/Player$Listener;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl$controllerListener$1;->b:Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    return-void
.end method


# virtual methods
.method public final f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl$controllerListener$1;->b:Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    iget-object v1, v0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->b:Lkotlin/jvm/functions/Function5;

    if-eqz v1, :cond_8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->h()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->r()Z

    move-result v0

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PAUSED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->STOPPED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->STOPPED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    goto :goto_0

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->O0()Landroidx/media3/common/MediaItem;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v6, v0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object v7, v6, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v7, v6, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v0, v6, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Scale;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v6, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v9, v6

    goto :goto_2

    :cond_3
    move-wide v9, v4

    :goto_2
    new-instance v8, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;

    move-object v12, v15

    invoke-direct/range {v8 .. v14}, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;-><init>(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_5

    move-wide v6, v4

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v9

    cmp-long v0, v6, v9

    if-lez v0, :cond_6

    move-wide v6, v9

    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v6

    cmp-long v9, v6, v4

    if-gez v9, :cond_7

    goto :goto_4

    :cond_7
    move-wide v4, v6

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v5, v0

    move-object v4, v8

    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method
