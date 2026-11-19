.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModelKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;)Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;
    .locals 13

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "QA080Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const v0, 0x7f08040b

    :goto_2
    move v9, v0

    goto :goto_4

    :sswitch_1
    const-string v0, "QA004Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const v0, 0x7f08040a

    goto :goto_2

    :sswitch_2
    const-string v0, "QA003Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0x7f080409

    goto :goto_2

    :sswitch_3
    const-string v0, "QA002Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const v0, 0x7f080408

    goto :goto_2

    :sswitch_4
    const-string v0, "QA000Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const v0, 0x7f080407

    goto :goto_2

    :cond_8
    :goto_3
    const v0, 0x7f080404

    goto :goto_2

    :goto_4
    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->g:Ljava/lang/String;

    iget v11, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->h:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x721cf1c6 -> :sswitch_4
        -0x721cf188 -> :sswitch_3
        -0x721cf169 -> :sswitch_2
        -0x721cf14a -> :sswitch_1
        -0x721cd3be -> :sswitch_0
    .end sparse-switch
.end method
