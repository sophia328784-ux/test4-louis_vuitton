.class public final synthetic Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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


# static fields
.field public static final a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationDetailDto"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "orderId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "cartId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "email"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shippingMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "deliveryAddress"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "billingAddress"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "items"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "cartPriceInfo"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shoppingBag"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "giftMessage"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "paymentMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "timeline"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "samples"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isClickAndCollect"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "displayName"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "displayDeliveryAddress"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "displayBillingAddress"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "user"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->s:[Lkotlin/Lazy;

    move-object/from16 v18, v2

    const/16 p0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_0
    if-eqz v20, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v24

    packed-switch v24, :pswitch_data_0

    invoke-static/range {v24 .. v24}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v24, v10

    sget-object v10, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto$$serializer;

    move-object/from16 v25, v11

    const/16 v11, 0x11

    invoke-interface {v1, v0, v11, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;

    const/high16 v10, 0x20000

    :goto_1
    or-int/2addr v8, v10

    :goto_2
    move-object/from16 v10, v24

    move-object/from16 v11, v25

    goto :goto_0

    :pswitch_1
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0x10

    aget-object v11, v18, v10

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v10, v11, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/high16 v10, 0x10000

    goto :goto_1

    :pswitch_2
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0xf

    aget-object v11, v18, v10

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v10, v11, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const v10, 0x8000

    goto :goto_1

    :pswitch_3
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0xe

    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v23

    or-int/lit16 v8, v8, 0x4000

    :goto_3
    move-object/from16 v10, v24

    goto :goto_0

    :pswitch_4
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0xd

    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v22

    or-int/lit16 v8, v8, 0x2000

    goto :goto_3

    :pswitch_5
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0xc

    aget-object v11, v18, v10

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v10, v11, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    goto :goto_2

    :pswitch_6
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lcom/vuitton/android/data/dto/account/orders/TimelineDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/TimelineDto$$serializer;

    const/16 v11, 0xb

    invoke-interface {v1, v0, v11, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    or-int/lit16 v8, v8, 0x800

    goto :goto_2

    :pswitch_7
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0xa

    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit16 v8, v8, 0x400

    goto :goto_3

    :pswitch_8
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v11, 0x9

    invoke-interface {v1, v0, v11, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/16 v10, 0x8

    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v17

    or-int/lit16 v8, v8, 0x100

    goto :goto_3

    :pswitch_a
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;

    const/4 v11, 0x7

    invoke-interface {v1, v0, v11, v10, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/4 v10, 0x6

    aget-object v11, v18, v10

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v10, v11, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;->a:Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;

    const/4 v11, 0x5

    invoke-interface {v1, v0, v11, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/vuitton/android/data/dto/address/AddressDto;

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;->a:Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;

    const/4 v11, 0x4

    invoke-interface {v1, v0, v11, v10, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/vuitton/android/data/dto/address/AddressDto;

    or-int/lit8 v8, v8, 0x10

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;

    const/4 v11, 0x3

    invoke-interface {v1, v0, v11, v10, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v11, 0x2

    move-object/from16 v26, v2

    move-object/from16 v2, v25

    invoke-interface {v1, v0, v11, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x4

    :goto_4
    move-object/from16 v10, v24

    :goto_5
    move-object/from16 v2, v26

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v26, v2

    move-object v2, v11

    const/4 v10, 0x1

    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    or-int/lit8 v8, v8, 0x2

    move-object v10, v11

    :goto_6
    move-object v11, v2

    goto :goto_5

    :pswitch_11
    move-object/from16 v26, v2

    move-object/from16 v24, v10

    move-object v2, v11

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v1, v0, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v21

    or-int/lit8 v8, v8, 0x1

    move-object v11, v2

    goto :goto_4

    :pswitch_12
    move-object/from16 v26, v2

    move-object/from16 v24, v10

    move-object v2, v11

    const/4 v11, 0x0

    move/from16 v20, v11

    goto :goto_6

    :cond_0
    move-object/from16 v26, v2

    move-object/from16 v24, v10

    move-object v2, v11

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v16, v7

    new-instance v7, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;

    const/16 v27, 0x0

    move-object/from16 v20, v4

    move-object/from16 v18, v5

    move-object/from16 v25, v6

    move-object/from16 v24, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v3

    invoke-direct/range {v7 .. v27}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;Lcom/vuitton/android/data/dto/address/AddressDto;Lcom/vuitton/android/data/dto/address/AddressDto;Ljava/util/List;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 7

    check-cast p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->s:[Lkotlin/Lazy;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->r:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;

    iget-object v3, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->o:Ljava/lang/String;

    iget-object v4, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->j:Ljava/lang/String;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, p0, v6, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v6, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->b:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v6, 0x2

    invoke-interface {p1, p0, v6, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->d:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;

    const/4 v6, 0x3

    invoke-interface {p1, p0, v6, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;->a:Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->e:Lcom/vuitton/android/data/dto/address/AddressDto;

    const/4 v6, 0x4

    invoke-interface {p1, p0, v6, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v5, 0x5

    iget-object v6, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->f:Lcom/vuitton/android/data/dto/address/AddressDto;

    invoke-interface {p1, p0, v5, v1, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aget-object v5, v0, v1

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->g:Ljava/util/List;

    invoke-interface {p1, p0, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->h:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;

    const/4 v6, 0x7

    invoke-interface {p1, p0, v6, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x8

    iget-boolean v5, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->i:Z

    invoke-interface {p1, p0, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x9

    invoke-interface {p1, p0, v5, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v1, 0xa

    iget-object v4, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->k:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/vuitton/android/data/dto/account/orders/TimelineDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/TimelineDto$$serializer;

    iget-object v4, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->l:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    const/16 v5, 0xb

    invoke-interface {p1, p0, v5, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xc

    aget-object v4, v0, v1

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->m:Ljava/util/List;

    invoke-interface {p1, p0, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xd

    iget-boolean v4, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->n:Z

    invoke-interface {p1, p0, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, ""

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    const/16 v1, 0xe

    invoke-interface {p1, p0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_5
    const/16 v1, 0xf

    aget-object v3, v0, v1

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->p:Ljava/util/List;

    invoke-interface {p1, p0, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->q:Ljava/util/List;

    invoke-interface {p1, p0, v1, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    :goto_3
    sget-object p2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto$$serializer;

    const/16 v0, 0x11

    invoke-interface {p1, p0, v0, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 5

    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->s:[Lkotlin/Lazy;

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;->a:Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;

    aput-object v3, v0, v2

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v3, 0x9

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/vuitton/android/data/dto/account/orders/TimelineDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/TimelineDto$$serializer;

    aput-object v4, v0, v3

    const/16 v3, 0xc

    aget-object v4, p0, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aget-object p0, p0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v1, 0x11

    aput-object p0, v0, v1

    return-object v0
.end method
