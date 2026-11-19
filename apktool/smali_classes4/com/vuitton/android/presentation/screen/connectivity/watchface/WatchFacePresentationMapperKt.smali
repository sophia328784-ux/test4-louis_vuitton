.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;)Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->e:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->f:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/connectivity/ConnectivityMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;)Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v8

    :goto_0
    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->h:Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    if-eqz v9, :cond_1

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/connectivity/ConnectivityMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;)Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    move-result-object v8

    :cond_1
    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->j:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
