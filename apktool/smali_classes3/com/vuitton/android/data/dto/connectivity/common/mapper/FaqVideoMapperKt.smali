.class public abstract Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqVideoMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
