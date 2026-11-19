.class public final Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;

.field public static final b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;

    const-string v0, "LinkTypeDto"

    sget-object v1, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->a:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "exclusive-offer"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->EXCLUSIVE_OFFER:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_1
    const-string p1, "wishlist-shared"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->WISHLIST_SHARED:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_2
    const-string p1, "booking-form"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->BOOKING_FORM:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_3
    const-string p1, "immersive-article"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_4
    const-string p1, "shade-finder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->SHADE_FINDER:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_5
    const-string p1, "native-story"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->STORY:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_6
    const-string p1, "webview"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->WEBVIEW:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_7
    const-string p1, "product-list"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->PRODUCT_LIST:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_8
    const-string p1, "seo-landing-page"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->SEO_LANDING_PAGE:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_9
    const-string p1, "my-care-service/create"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->REPAIR_CREATE:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_a
    const-string p1, "other"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->OTHER:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_b
    const-string p1, "category"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->CATEGORY:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_c
    const-string p1, "my-appointment/create"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->OSA:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_d
    const-string p1, "profile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->MY_LV:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_e
    const-string p1, "product"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->PRODUCT:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_f
    const-string p1, "my-monogram"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->MONOGRAM:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_10
    const-string p1, "spotlight"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->SPOTLIGHT:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_11
    const-string p1, "wishlist"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->WISHLIST:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_12
    const-string p1, "portal"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->PORTAL:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_13
    const-string p1, "ai-companion"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->AI_COMPANION:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_14
    const-string p1, "push-notification"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    :goto_0
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->UNKNOWN:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :cond_14
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->PUSH_NOTIFICATION:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6dd72742 -> :sswitch_14
        -0x67304059 -> :sswitch_13
        -0x3a8f7794 -> :sswitch_12
        -0x39bc4a3b -> :sswitch_11
        -0x36d572ac -> :sswitch_10
        -0x272c4d45 -> :sswitch_f
        -0x12723311 -> :sswitch_e
        -0x12717657 -> :sswitch_d
        -0x4aa50d3 -> :sswitch_c
        0x302bcfe -> :sswitch_b
        0x6527f10 -> :sswitch_a
        0x358d7231 -> :sswitch_9
        0x38e827f5 -> :sswitch_8
        0x39b4c2bc -> :sswitch_7
        0x48fb3bf9 -> :sswitch_6
        0x4e4aafbf -> :sswitch_5
        0x689db7c6 -> :sswitch_4
        0x6c6f6fe4 -> :sswitch_3
        0x6e5375b8 -> :sswitch_2
        0x73fb496d -> :sswitch_1
        0x7c6ffe6d -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    const-string p0, "profile"

    goto :goto_0

    :pswitch_1
    const-string p0, "wishlist-shared"

    goto :goto_0

    :pswitch_2
    const-string p0, "wishlist"

    goto :goto_0

    :pswitch_3
    const-string p0, "booking-form"

    goto :goto_0

    :pswitch_4
    const-string p0, "unknown"

    goto :goto_0

    :pswitch_5
    const-string p0, "other"

    goto :goto_0

    :pswitch_6
    const-string p0, "seo-landing-page"

    goto :goto_0

    :pswitch_7
    const-string p0, "my-care-service/create"

    goto :goto_0

    :pswitch_8
    const-string p0, "my-appointment/create"

    goto :goto_0

    :pswitch_9
    const-string p0, "webview"

    goto :goto_0

    :pswitch_a
    const-string p0, "native-story"

    goto :goto_0

    :pswitch_b
    const-string p0, "spotlight"

    goto :goto_0

    :pswitch_c
    const-string p0, "shade-finder"

    goto :goto_0

    :pswitch_d
    const-string p0, "push-notification"

    goto :goto_0

    :pswitch_e
    const-string p0, "product-list"

    goto :goto_0

    :pswitch_f
    const-string p0, "product"

    goto :goto_0

    :pswitch_10
    const-string p0, "portal"

    goto :goto_0

    :pswitch_11
    const-string p0, "my-monogram"

    goto :goto_0

    :pswitch_12
    const-string p0, "immersive-article"

    goto :goto_0

    :pswitch_13
    const-string p0, "exclusive-offer"

    goto :goto_0

    :pswitch_14
    const-string p0, "category"

    goto :goto_0

    :pswitch_15
    const-string p0, "ai-companion"

    :goto_0
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->E(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
