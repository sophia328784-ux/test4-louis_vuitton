.class public final synthetic Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;",
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
        "com/vuitton/android/presentation/screen/main/navigation/CatalogRoute.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "presentation"
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
.field public static final a:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;->a:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.presentation.screen.main.navigation.CatalogRoute"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "catalogDeepLinkType"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "rmsCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "storeModeToken"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "storeModeLaunchMode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "skuList"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sku"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isFromNativeShare"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "plpId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "section"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "category"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "subCategory"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "themeId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->m:[Lkotlin/Lazy;

    move-object/from16 v17, v2

    const/16 p0, 0x0

    const/16 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    invoke-static/range {v18 .. v18}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move/from16 v18, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move/from16 v19, v15

    const/16 v15, 0xb

    invoke-interface {v1, v0, v15, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x800

    :goto_1
    move/from16 v6, v18

    :goto_2
    move/from16 v15, v19

    goto :goto_0

    :pswitch_1
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v15, 0xa

    invoke-interface {v1, v0, v15, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x400

    goto :goto_1

    :pswitch_2
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v15, 0x9

    invoke-interface {v1, v0, v15, v6, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x200

    goto :goto_1

    :pswitch_3
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v15, 0x8

    invoke-interface {v1, v0, v15, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x100

    goto :goto_1

    :pswitch_4
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v15, 0x7

    invoke-interface {v1, v0, v15, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x80

    goto :goto_1

    :pswitch_5
    move/from16 v18, v6

    const/4 v6, 0x6

    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    or-int/lit8 v8, v8, 0x40

    move/from16 v6, v18

    goto :goto_0

    :pswitch_6
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v15, 0x5

    invoke-interface {v1, v0, v15, v6, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x20

    goto :goto_1

    :pswitch_7
    move/from16 v18, v6

    move/from16 v19, v15

    const/4 v6, 0x4

    aget-object v15, v17, v6

    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v6, v15, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    goto :goto_1

    :pswitch_8
    move/from16 v18, v6

    move/from16 v19, v15

    const/4 v6, 0x3

    aget-object v15, v17, v6

    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v6, v15, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_1

    :pswitch_9
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v15, 0x2

    invoke-interface {v1, v0, v15, v6, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_1

    :pswitch_a
    move/from16 v18, v6

    move/from16 v19, v15

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v15, 0x1

    invoke-interface {v1, v0, v15, v6, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x2

    goto/16 :goto_1

    :pswitch_b
    move/from16 v18, v6

    move/from16 v19, v15

    const/4 v15, 0x1

    aget-object v6, v17, p1

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v15, p1

    invoke-interface {v1, v0, v15, v6, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    or-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :pswitch_c
    move/from16 v19, v15

    move/from16 v15, p1

    move/from16 v6, p1

    goto/16 :goto_2

    :cond_0
    move/from16 v19, v15

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v16, v7

    new-instance v7, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    const/16 v21, 0x0

    move-object/from16 v20, v2

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v3

    invoke-direct/range {v7 .. v21}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(ILcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v7

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 17

    move-object/from16 v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->k:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->i:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->h:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->g:Z

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->e:Ljava/util/List;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->a:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    sget-object v12, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v13, p1

    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v13

    sget-object v14, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->m:[Lkotlin/Lazy;

    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    const/4 v15, 0x0

    aget-object v16, v14, v15

    invoke-interface/range {v16 .. v16}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p0, v14

    move-object/from16 v14, v16

    check-cast v14, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v13, v12, v15, v14, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object/from16 p0, v14

    :goto_1
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    :goto_2
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x1

    invoke-interface {v13, v12, v14, v0, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_5

    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v11, 0x2

    invoke-interface {v13, v12, v11, v0, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    :goto_4
    const/4 v0, 0x3

    aget-object v10, p0, v0

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v13, v12, v0, v10, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_9

    :goto_5
    const/4 v0, 0x4

    aget-object v9, p0, v0

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v13, v12, v0, v9, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    :goto_6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v8, 0x5

    invoke-interface {v13, v12, v8, v0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v6, :cond_d

    :goto_7
    const/4 v0, 0x6

    invoke-interface {v13, v12, v0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_d
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    if-eqz v5, :cond_f

    :goto_8
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v6, 0x7

    invoke-interface {v13, v12, v6, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v4, :cond_11

    :goto_9
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x8

    invoke-interface {v13, v12, v5, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v3, :cond_13

    :goto_a
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v4, 0x9

    invoke-interface {v13, v12, v4, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_14
    if-eqz v2, :cond_15

    :goto_b
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xa

    invoke-interface {v13, v12, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    if-eqz v1, :cond_17

    :goto_c
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xb

    invoke-interface {v13, v12, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    invoke-interface {v13, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 14

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->m:[Lkotlin/Lazy;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v6, p0, v5

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    invoke-static {v6}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const/4 v7, 0x4

    aget-object p0, p0, v7

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v11

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v12

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v13, 0xc

    new-array v13, v13, [Lkotlinx/serialization/KSerializer;

    aput-object v1, v13, v0

    const/4 v0, 0x1

    aput-object v3, v13, v0

    const/4 v0, 0x2

    aput-object v4, v13, v0

    aput-object v6, v13, v5

    aput-object p0, v13, v7

    const/4 p0, 0x5

    aput-object v8, v13, p0

    sget-object p0, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v0, 0x6

    aput-object p0, v13, v0

    const/4 p0, 0x7

    aput-object v9, v13, p0

    const/16 p0, 0x8

    aput-object v10, v13, p0

    const/16 p0, 0x9

    aput-object v11, v13, p0

    const/16 p0, 0xa

    aput-object v12, v13, p0

    const/16 p0, 0xb

    aput-object v2, v13, p0

    return-object v13
.end method
