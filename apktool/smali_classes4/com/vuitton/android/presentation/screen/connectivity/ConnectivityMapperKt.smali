.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/ConnectivityMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;)Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
