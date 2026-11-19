.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;)Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->f:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v6

    goto :goto_0

    :cond_0
    move-object v8, v6

    move-object v6, v7

    :goto_0
    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->i:Ljava/lang/String;

    const v10, 0x7f080404

    if-eqz v9, :cond_2

    :cond_1
    :goto_1
    move v7, v10

    goto :goto_3

    :cond_2
    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "QA080Z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const v10, 0x7f08040b

    goto :goto_1

    :sswitch_1
    const-string v8, "QA004Z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const v10, 0x7f08040a

    goto :goto_1

    :sswitch_2
    const-string v8, "QA003Z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    const v10, 0x7f080409

    goto :goto_1

    :sswitch_3
    const-string v8, "QA002Z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    const v10, 0x7f080408

    goto :goto_1

    :sswitch_4
    const-string v8, "QA000Z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    const v10, 0x7f080407

    goto :goto_1

    :goto_3
    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->g:Ljava/lang/String;

    iget v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->h:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x721cf1c6 -> :sswitch_4
        -0x721cf188 -> :sswitch_3
        -0x721cf169 -> :sswitch_2
        -0x721cf14a -> :sswitch_1
        -0x721cd3be -> :sswitch_0
    .end sparse-switch
.end method
