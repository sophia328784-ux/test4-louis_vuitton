.class public abstract Lcom/vuitton/android/data/dto/pdp/mapper/DigitalAssetProductMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;->b:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;->a:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "3d-asset-android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->ASSET_ANDROID_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    goto :goto_3

    :sswitch_1
    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->VIDEO:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    goto :goto_3

    :sswitch_2
    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->IMAGE:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    goto :goto_3

    :sswitch_3
    const-string v4, "3d-asset-ios"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->ASSET_IOS_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    :goto_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;->d:Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_4
    const-string p0, "3d-bottom-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_4

    :cond_8
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->BOTTOM_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto/16 :goto_5

    :sswitch_5
    const-string p0, "3d-closeup-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_4

    :cond_9
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->CLOSE_UP_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto/16 :goto_5

    :sswitch_6
    const-string p0, "3d-drop"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_4

    :cond_a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->DROP_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto/16 :goto_5

    :sswitch_7
    const-string p0, "3d-side-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_4

    :cond_b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->SIDE_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto/16 :goto_5

    :sswitch_8
    const-string p0, "3d-detail-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->DETAIL_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_9
    const-string p0, "ld-r"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    :cond_d
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->LD_R:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_a
    const-string p0, "3d-back-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    :cond_e
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->BACK_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_b
    const-string p0, "background3d"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_4

    :cond_f
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->BACKGROUND_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_c
    const-string p0, "3d-drop-video"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_4

    :cond_10
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->DROP_VIDEO_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_d
    const-string p0, "3d-bottom-back-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_4

    :cond_11
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->BOTTOM_BACK_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_e
    const-string p0, "3d-front-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_4

    :cond_12
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->FRONT_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :sswitch_f
    const-string p0, "3d-bottom-front-view"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_4

    :cond_13
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->BOTTOM_FRONT_VIEW_3D:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    goto :goto_5

    :cond_14
    :goto_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    :goto_5
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;

    invoke-direct {v3, v2, v0, v1, p0}, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf09588c -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x14293a56 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6fc71391 -> :sswitch_f
        -0x645dbf7b -> :sswitch_e
        -0x5b38d99b -> :sswitch_d
        -0x584d8727 -> :sswitch_c
        -0x142837c1 -> :sswitch_b
        -0x10880871 -> :sswitch_a
        0x32955d -> :sswitch_9
        0x7a69565 -> :sswitch_8
        0x31b5e51f -> :sswitch_7
        0x372bbcab -> :sswitch_6
        0x4a05435b -> :sswitch_5
        0x5d8c2bcb -> :sswitch_4
    .end sparse-switch
.end method
