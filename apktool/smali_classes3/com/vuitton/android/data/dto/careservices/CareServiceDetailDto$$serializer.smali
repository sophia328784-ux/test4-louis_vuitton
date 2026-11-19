.class public final synthetic Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;",
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
        "com/vuitton/android/data/dto/careservices/CareServiceDetailDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.careservices.CareServiceDetailDto"

    const/16 v3, 0x31

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "status"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "responseId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "transactionDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "recordType"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "transactionId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "myLV_Care_Status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "storeName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "storeRetailCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "createdDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "myRepair_CreatedDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastModifiedDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "last_MyRepair_Status_Changed_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "currencyCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "type_of_Repair"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "totalAmount"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "totalAmount_Updated"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "delivery_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "updated_Delivery_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sku"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "is_Generic_SKU"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Sku_unknown"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Family"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Image"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "is_Not_Repaired"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "appointement_DateTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "appointmentId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "origin"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "care_Expert_Note"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_Address_Id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_Address_Line_1"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_Address_Line_2"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_Address_Line_3"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_City"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_Zip_Postal_Code"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_State_Province"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shipping_Country"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tracking_Number"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "carrier"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "careServiceLineItem"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "email"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "phone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "addressTitle"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "addressFirstName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "addressLastName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "confirm_Address_Expiration_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "pbl_Link"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 61

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->X:[Lkotlin/Lazy;

    move-object/from16 v17, v2

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

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    :goto_0
    if-eqz v18, :cond_6

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v56

    const v57, 0x8000

    const/high16 v58, 0x10000

    packed-switch v56, :pswitch_data_0

    invoke-static/range {v56 .. v56}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v56, v5

    const/16 v5, 0x30

    move-object/from16 v59, v4

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v5, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    or-int v14, v14, v58

    :goto_1
    move-object/from16 v16, v20

    move-object/from16 v5, v56

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_10

    :pswitch_1
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    const/16 v4, 0x2f

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v4, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    or-int v14, v14, v57

    goto :goto_1

    :pswitch_2
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    const/16 v4, 0x2e

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v4, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x4000

    goto :goto_1

    :pswitch_3
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    const/16 v4, 0x2d

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v4, v5, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x2000

    goto :goto_1

    :pswitch_4
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    const/16 v4, 0x2c

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v4, v5, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x1000

    goto :goto_1

    :pswitch_5
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    const/16 v4, 0x2b

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v4, v5, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x800

    goto :goto_1

    :pswitch_6
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x2a

    invoke-interface {v1, v0, v5, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x400

    goto :goto_1

    :pswitch_7
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x29

    invoke-interface {v1, v0, v5, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x200

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    const/16 v4, 0x28

    aget-object v5, v17, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v4, v5, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    or-int/lit16 v14, v14, 0x100

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x27

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v14, v14, 0x80

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x26

    invoke-interface {v1, v0, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x40

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v59, v4

    move-object/from16 v56, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x25

    move-object/from16 v60, v2

    move-object/from16 v2, v59

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x20

    move-object/from16 v59, v4

    :goto_3
    move-object/from16 v16, v20

    move-object/from16 v5, v56

    :goto_4
    move-object/from16 v2, v60

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v60, v2

    move-object v2, v4

    move-object/from16 v56, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x24

    move-object/from16 v59, v2

    move-object/from16 v2, v56

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x10

    :goto_5
    move-object/from16 v16, v20

    goto :goto_4

    :pswitch_d
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object v2, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x23

    move-object/from16 v56, v2

    move-object/from16 v2, v53

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x8

    move-object/from16 v53, v2

    goto :goto_3

    :pswitch_e
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v53

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x22

    move-object/from16 v2, v52

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x4

    move-object/from16 v52, v2

    goto :goto_3

    :pswitch_f
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v52

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x21

    move-object/from16 v2, v51

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v51, v2

    goto :goto_3

    :pswitch_10
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v51

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x20

    move-object/from16 v2, v50

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v14, v14, 0x1

    move-object/from16 v50, v2

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v50

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x1f

    move-object/from16 v2, v49

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, -0x80000000

    or-int v4, v33, v4

    move-object/from16 v49, v2

    :goto_6
    move/from16 v33, v4

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v49

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x1e

    move-object/from16 v2, v48

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x40000000    # 2.0f

    or-int v4, v33, v4

    move-object/from16 v48, v2

    goto :goto_6

    :pswitch_13
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v48

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x1d

    move-object/from16 v2, v47

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x20000000

    or-int v4, v33, v4

    move-object/from16 v47, v2

    goto :goto_6

    :pswitch_14
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v47

    const/16 v4, 0x1c

    aget-object v5, v17, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v2, v46

    invoke-interface {v1, v0, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    const/high16 v4, 0x10000000

    or-int v4, v33, v4

    move-object/from16 v46, v2

    goto :goto_6

    :pswitch_15
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v46

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x1b

    move-object/from16 v2, v45

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x8000000

    or-int v4, v33, v4

    move-object/from16 v45, v2

    goto :goto_6

    :pswitch_16
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v45

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x1a

    move-object/from16 v2, v44

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x4000000

    or-int v4, v33, v4

    move-object/from16 v44, v2

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v44

    const/16 v4, 0x19

    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v55

    const/high16 v4, 0x2000000

    :goto_7
    or-int v4, v33, v4

    move/from16 v33, v4

    goto/16 :goto_5

    :pswitch_18
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v44

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x18

    move-object/from16 v2, v43

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x1000000

    or-int v4, v33, v4

    move-object/from16 v43, v2

    goto/16 :goto_6

    :pswitch_19
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v43

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x17

    move-object/from16 v2, v42

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/high16 v2, 0x800000

    or-int v2, v33, v2

    move/from16 v33, v2

    move-object/from16 v42, v4

    goto/16 :goto_3

    :pswitch_1a
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v42

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x16

    move-object/from16 v2, v41

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/high16 v2, 0x400000

    or-int v2, v33, v2

    move/from16 v33, v2

    move-object/from16 v41, v5

    goto/16 :goto_3

    :pswitch_1b
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v41

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x15

    move-object/from16 v2, v40

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x200000

    or-int v4, v33, v4

    move-object/from16 v40, v2

    goto/16 :goto_6

    :pswitch_1c
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v40

    const/16 v4, 0x14

    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v54

    const/high16 v4, 0x100000

    goto/16 :goto_7

    :pswitch_1d
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v40

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v39, :cond_0

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    move-object/from16 v40, v2

    move-object/from16 v2, v39

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_0
    move-object/from16 v40, v2

    move-object/from16 v5, p0

    :goto_8
    const/16 v2, 0x13

    invoke-interface {v1, v0, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    goto :goto_9

    :cond_1
    move-object/from16 v2, p0

    :goto_9
    const/high16 v4, 0x80000

    or-int v4, v33, v4

    move-object/from16 v39, v2

    goto/16 :goto_6

    :pswitch_1e
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v39

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x12

    move-object/from16 v2, v38

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x40000

    or-int v4, v33, v4

    move-object/from16 v38, v2

    goto/16 :goto_6

    :pswitch_1f
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v38

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x11

    move-object/from16 v2, v37

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x20000

    or-int v4, v33, v4

    move-object/from16 v37, v2

    goto/16 :goto_6

    :pswitch_20
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v37

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->a:Lkotlinx/serialization/internal/DoubleSerializer;

    const/16 v5, 0x10

    move-object/from16 v2, v36

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    or-int v4, v33, v58

    move-object/from16 v36, v2

    goto/16 :goto_6

    :pswitch_21
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v36

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->a:Lkotlinx/serialization/internal/DoubleSerializer;

    const/16 v5, 0xf

    move-object/from16 v2, v35

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    or-int v4, v33, v57

    move-object/from16 v35, v2

    goto/16 :goto_6

    :pswitch_22
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v2, v35

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xe

    move-object/from16 v2, v34

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v4, v33

    or-int/lit16 v4, v4, 0x4000

    move-object/from16 v34, v2

    goto/16 :goto_6

    :pswitch_23
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v2, v34

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v33, v2

    const/16 v2, 0xd

    move-object/from16 v34, v3

    move-object/from16 v3, v32

    invoke-interface {v1, v0, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v3, v4, 0x2000

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v32, v2

    goto/16 :goto_3

    :pswitch_24
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v32

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xc

    move-object/from16 v3, v31

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v3, v4, 0x1000

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v31, v2

    goto/16 :goto_3

    :pswitch_25
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v31

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xb

    move-object/from16 v3, v30

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v3, v4, 0x800

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v30, v2

    goto/16 :goto_3

    :pswitch_26
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v30

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xa

    move-object/from16 v3, v29

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v4, 0x400

    move-object/from16 v29, v3

    :goto_a
    move-object/from16 v16, v20

    move-object/from16 v3, v34

    move-object/from16 v5, v56

    const/4 v4, 0x0

    move-object/from16 v34, v33

    move/from16 v33, v2

    move-object/from16 v2, v60

    goto/16 :goto_10

    :pswitch_27
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v29

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x9

    move-object/from16 v3, v28

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v3, v4, 0x200

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v28, v2

    goto/16 :goto_3

    :pswitch_28
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v28

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x8

    move-object/from16 v3, v27

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v2, v4, 0x100

    move-object/from16 v27, v5

    goto :goto_a

    :pswitch_29
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v27

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x7

    move-object/from16 v3, v26

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v3, v4, 0x80

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v26, v2

    goto/16 :goto_3

    :pswitch_2a
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v26

    const/4 v2, 0x6

    aget-object v5, v17, v2

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v3, v25

    invoke-interface {v1, v0, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    or-int/lit8 v3, v4, 0x40

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v25, v2

    goto/16 :goto_3

    :pswitch_2b
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v25

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    if-eqz v24, :cond_2

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    move-object/from16 v25, v3

    move-object/from16 v3, v24

    invoke-direct {v5, v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_2
    move-object/from16 v25, v3

    move-object/from16 v5, p0

    :goto_b
    const/4 v3, 0x5

    invoke-interface {v1, v0, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->a:Ljava/lang/String;

    goto :goto_c

    :cond_3
    move-object/from16 v2, p0

    :goto_c
    or-int/lit8 v3, v4, 0x20

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v24, v2

    goto/16 :goto_3

    :pswitch_2c
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v24

    const/4 v2, 0x4

    aget-object v5, v17, v2

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v3, v23

    invoke-interface {v1, v0, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    or-int/lit8 v3, v4, 0x10

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v23, v2

    goto/16 :goto_3

    :pswitch_2d
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v23

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    if-eqz v22, :cond_4

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    invoke-direct {v5, v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_4
    move-object/from16 v23, v3

    move-object/from16 v5, p0

    :goto_d
    const/4 v3, 0x3

    invoke-interface {v1, v0, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->a:Ljava/lang/String;

    goto :goto_e

    :cond_5
    move-object/from16 v2, p0

    :goto_e
    or-int/lit8 v3, v4, 0x8

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v22, v2

    goto/16 :goto_3

    :pswitch_2e
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v22

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x2

    move-object/from16 v3, v21

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v3, v4, 0x4

    move-object/from16 v4, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v21, v2

    goto/16 :goto_3

    :pswitch_2f
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v21

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v16, v3

    move-object/from16 v5, v20

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v21, v16

    move-object/from16 v3, v34

    move-object/from16 v5, v56

    move-object/from16 v16, v2

    move-object/from16 v34, v33

    move-object/from16 v2, v60

    move/from16 v33, v4

    goto/16 :goto_2

    :pswitch_30
    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v5, v20

    move-object/from16 v16, v21

    move/from16 v4, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    const/4 v3, 0x1

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v19

    move/from16 v19, v4

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v3, v19, 0x1

    move-object/from16 v19, v33

    move/from16 v33, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v19

    move-object/from16 v19, v2

    :goto_f
    move-object/from16 v2, v60

    move-object/from16 v16, v5

    move-object/from16 v5, v56

    goto :goto_10

    :pswitch_31
    move-object/from16 v16, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v19

    move/from16 v19, v33

    move-object/from16 v33, v16

    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v5, v20

    move-object/from16 v16, v21

    const/4 v4, 0x0

    move/from16 v2, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v33

    move/from16 v33, v2

    move/from16 v18, v4

    goto :goto_f

    :goto_10
    move-object/from16 v20, v16

    move-object/from16 v4, v59

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v19

    move/from16 v19, v33

    move-object/from16 v33, v16

    move-object/from16 v60, v2

    move-object/from16 v59, v4

    move-object/from16 v56, v5

    move-object/from16 v5, v20

    move-object/from16 v16, v21

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v57, v7

    new-instance v7, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;

    move-object/from16 v2, v59

    const/16 v59, 0x0

    move-object/from16 v58, v9

    move v9, v14

    move-object/from16 v14, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v41

    move-object/from16 v41, v49

    move-object/from16 v49, v60

    const/16 v60, 0x0

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v20, v29

    move-object/from16 v21, v30

    move-object/from16 v26, v36

    move-object/from16 v27, v37

    move-object/from16 v29, v39

    move-object/from16 v36, v44

    move-object/from16 v37, v45

    move-object/from16 v39, v47

    move-object/from16 v44, v52

    move-object/from16 v45, v53

    move/from16 v30, v54

    move-object/from16 v47, v2

    move-object/from16 v52, v8

    move-object/from16 v53, v11

    move-object/from16 v54, v12

    move-object/from16 v12, v16

    move/from16 v8, v19

    move-object/from16 v16, v25

    move-object/from16 v19, v28

    move-object/from16 v25, v35

    move-object/from16 v28, v38

    move-object/from16 v38, v46

    move/from16 v35, v55

    move-object/from16 v46, v56

    move-object v11, v5

    move-object/from16 v55, v13

    move-object/from16 v56, v15

    move-object/from16 v13, v22

    move-object/from16 v15, v24

    move-object/from16 v22, v31

    move-object/from16 v24, v33

    move-object/from16 v31, v40

    move-object/from16 v33, v42

    move-object/from16 v40, v48

    move-object/from16 v42, v50

    move-object/from16 v50, v6

    move-object/from16 v48, v34

    move-object/from16 v34, v43

    move-object/from16 v43, v51

    move-object/from16 v51, v10

    move-object v10, v3

    invoke-direct/range {v7 .. v60}, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 39

    move-object/from16 v0, p2

    check-cast v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    move-object/from16 p0, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    move-object/from16 p2, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    move-object/from16 v18, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    move-object/from16 v19, v6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    move-object/from16 v20, v7

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    move-object/from16 v21, v8

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    move-object/from16 v23, v10

    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    move-object/from16 v24, v11

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    move-object/from16 v25, v12

    iget-object v12, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    move-object/from16 v26, v13

    iget-object v13, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    move-object/from16 v27, v14

    iget-object v14, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    move-object/from16 v28, v15

    iget-object v15, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    move-object/from16 v31, v3

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    move-object/from16 v32, v4

    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    move-object/from16 v33, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    move-object/from16 v34, v0

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v35, v6

    move-object/from16 v6, p1

    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v6

    sget-object v36, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->X:[Lkotlin/Lazy;

    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v37

    if-eqz v37, :cond_0

    :goto_0
    move-object/from16 v37, v7

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    goto :goto_0

    :goto_1
    sget-object v7, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v38, v8

    const/4 v8, 0x0

    invoke-interface {v6, v0, v8, v7, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 v37, v7

    move-object/from16 v38, v8

    :goto_2
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    :goto_3
    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7, v5, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    :goto_4
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x2

    invoke-interface {v6, v0, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_8

    :goto_5
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    if-eqz v2, :cond_7

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v5, v4

    :goto_6
    const/4 v2, 0x3

    invoke-interface {v6, v0, v2, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_a

    :goto_7
    const/4 v2, 0x4

    aget-object v3, v36, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v6, v0, v2, v3, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_a
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v15, :cond_d

    :goto_8
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    if-eqz v15, :cond_c

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    invoke-direct {v2, v15}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move-object v2, v4

    :goto_9
    const/4 v3, 0x5

    invoke-interface {v6, v0, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_a

    :cond_e
    if-eqz v14, :cond_f

    :goto_a
    const/4 v1, 0x6

    aget-object v2, v36, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v6, v0, v1, v2, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    if-eqz v13, :cond_11

    :goto_b
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x7

    invoke-interface {v6, v0, v2, v1, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_c

    :cond_12
    if-eqz v12, :cond_13

    :goto_c
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x8

    invoke-interface {v6, v0, v2, v1, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    if-eqz v11, :cond_15

    :goto_d
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x9

    invoke-interface {v6, v0, v2, v1, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_e

    :cond_16
    if-eqz v10, :cond_17

    :goto_e
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xa

    invoke-interface {v6, v0, v2, v1, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_f

    :cond_18
    if-eqz v9, :cond_19

    :goto_f
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xb

    invoke-interface {v6, v0, v2, v1, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_10

    :cond_1a
    if-eqz v38, :cond_1b

    :goto_10
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xc

    move-object/from16 v3, v38

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_11

    :cond_1c
    if-eqz v37, :cond_1d

    :goto_11
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xd

    move-object/from16 v3, v37

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_12

    :cond_1e
    if-eqz v35, :cond_1f

    :goto_12
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xe

    move-object/from16 v3, v35

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_13

    :cond_20
    if-eqz v33, :cond_21

    :goto_13
    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->a:Lkotlinx/serialization/internal/DoubleSerializer;

    const/16 v2, 0xf

    move-object/from16 v3, v33

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_14

    :cond_22
    if-eqz v32, :cond_23

    :goto_14
    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->a:Lkotlinx/serialization/internal/DoubleSerializer;

    const/16 v2, 0x10

    move-object/from16 v3, v32

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_15

    :cond_24
    if-eqz v31, :cond_25

    :goto_15
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x11

    move-object/from16 v3, v31

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_16

    :cond_26
    if-eqz v30, :cond_27

    :goto_16
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x12

    move-object/from16 v3, v30

    invoke-interface {v6, v0, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_17

    :cond_28
    if-eqz v29, :cond_2a

    :goto_17
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v29, :cond_29

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    move-object/from16 v2, v29

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    :cond_29
    const/16 v2, 0x13

    invoke-interface {v6, v0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v1, v34

    iget-boolean v2, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    iget-object v3, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    iget-object v9, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    iget-object v10, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    iget-object v12, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    const/16 v15, 0x14

    invoke-interface {v6, v0, v15, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_18

    :cond_2b
    if-eqz v14, :cond_2c

    :goto_18
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v15, 0x15

    invoke-interface {v6, v0, v15, v2, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2c
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_19

    :cond_2d
    if-eqz v13, :cond_2e

    :goto_19
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v14, 0x16

    invoke-interface {v6, v0, v14, v2, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2e
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_1a

    :cond_2f
    if-eqz v12, :cond_30

    :goto_1a
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v13, 0x17

    invoke-interface {v6, v0, v13, v2, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_30
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_1b

    :cond_31
    if-eqz v11, :cond_32

    :goto_1b
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v12, 0x18

    invoke-interface {v6, v0, v12, v2, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_32
    const/16 v2, 0x19

    iget-boolean v11, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    invoke-interface {v6, v0, v2, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_1c

    :cond_33
    if-eqz v10, :cond_34

    :goto_1c
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v11, 0x1a

    invoke-interface {v6, v0, v11, v2, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_34
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_1d

    :cond_35
    if-eqz v9, :cond_36

    :goto_1d
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v10, 0x1b

    invoke-interface {v6, v0, v10, v2, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_36
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_1e

    :cond_37
    if-eqz v8, :cond_38

    :goto_1e
    const/16 v2, 0x1c

    aget-object v9, v36, v2

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v6, v0, v2, v9, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_38
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_1f

    :cond_39
    if-eqz v7, :cond_3a

    :goto_1f
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v8, 0x1d

    invoke-interface {v6, v0, v8, v2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3a
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_20

    :cond_3b
    if-eqz v5, :cond_3c

    :goto_20
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v7, 0x1e

    invoke-interface {v6, v0, v7, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3c
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_21

    :cond_3d
    if-eqz v4, :cond_3e

    :goto_21
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x1f

    invoke-interface {v6, v0, v5, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3e
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_22

    :cond_3f
    if-eqz v3, :cond_40

    :goto_22
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v4, 0x20

    invoke-interface {v6, v0, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_40
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_23

    :cond_41
    if-eqz v28, :cond_42

    :goto_23
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x21

    move-object/from16 v4, v28

    invoke-interface {v6, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_42
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_24

    :cond_43
    if-eqz v27, :cond_44

    :goto_24
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x22

    move-object/from16 v4, v27

    invoke-interface {v6, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_44
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_25

    :cond_45
    if-eqz v26, :cond_46

    :goto_25
    const/16 v2, 0x23

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v26

    invoke-interface {v6, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_46
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_26

    :cond_47
    if-eqz v25, :cond_48

    :goto_26
    const/16 v2, 0x24

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v25

    invoke-interface {v6, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_48
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_27

    :cond_49
    if-eqz v24, :cond_4a

    :goto_27
    const/16 v2, 0x25

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v24

    invoke-interface {v6, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4a
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_28

    :cond_4b
    if-eqz v23, :cond_4c

    :goto_28
    const/16 v2, 0x26

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v23

    invoke-interface {v6, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4c
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_29

    :cond_4d
    if-eqz v22, :cond_4e

    :goto_29
    const/16 v2, 0x27

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v22

    invoke-interface {v6, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4e
    const/16 v2, 0x28

    aget-object v3, v36, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    invoke-interface {v6, v0, v2, v3, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_2a

    :cond_4f
    if-eqz v21, :cond_50

    :goto_2a
    const/16 v1, 0x29

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v21

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_50
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_2b

    :cond_51
    if-eqz v20, :cond_52

    :goto_2b
    const/16 v1, 0x2a

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v20

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_52
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_2c

    :cond_53
    if-eqz v19, :cond_54

    :goto_2c
    const/16 v1, 0x2b

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v19

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_54
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_2d

    :cond_55
    if-eqz v18, :cond_56

    :goto_2d
    const/16 v1, 0x2c

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v18

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_56
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_2e

    :cond_57
    if-eqz v17, :cond_58

    :goto_2e
    const/16 v1, 0x2d

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v17

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_58
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_2f

    :cond_59
    if-eqz v16, :cond_5a

    :goto_2f
    const/16 v1, 0x2e

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v16

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5a
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_30

    :cond_5b
    if-eqz p2, :cond_5c

    :goto_30
    const/16 v1, 0x2f

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, p2

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5c
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_31

    :cond_5d
    if-eqz p0, :cond_5e

    :goto_31
    const/16 v1, 0x30

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, p0

    invoke-interface {v6, v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5e
    invoke-interface {v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 5

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->X:[Lkotlin/Lazy;

    const/16 v0, 0x31

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xb

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xc

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xe

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lkotlinx/serialization/internal/DoubleSerializer;->a:Lkotlinx/serialization/internal/DoubleSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v0, v4

    const/16 v3, 0x10

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, v3

    const/16 v2, 0x11

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x12

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v0, v3

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v3, 0x14

    aput-object v2, v0, v3

    const/16 v3, 0x15

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x16

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x17

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x18

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const/16 v2, 0x1a

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x20

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x21

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x22

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x23

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x24

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x25

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x26

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x27

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x28

    aget-object p0, p0, v2

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v2

    const/16 p0, 0x29

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2a

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2b

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2c

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2d

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2e

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2f

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x30

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0
.end method
