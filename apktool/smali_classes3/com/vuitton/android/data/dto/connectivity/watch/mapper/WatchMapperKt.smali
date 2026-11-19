.class public abstract Lcom/vuitton/android/data/dto/connectivity/watch/mapper/WatchMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->g:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    move v8, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    move-object v9, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
