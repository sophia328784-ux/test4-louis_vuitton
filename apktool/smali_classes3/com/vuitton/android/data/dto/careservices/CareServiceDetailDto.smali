.class public final Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 F2\u00020\u0001:\u0002GFB\u00cd\u0004\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020403\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008>\u0010?B\u008f\u0004\u0008\u0010\u0012\u0006\u0010A\u001a\u00020@\u0012\u0006\u0010B\u001a\u00020@\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00100\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u00105\u001a\n\u0012\u0004\u0012\u000204\u0018\u000103\u0012\u0008\u00106\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00107\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00108\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00109\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010=\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010D\u001a\u0004\u0018\u00010C\u00a2\u0006\u0004\u0008>\u0010E\u00a8\u0006H"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;",
        "",
        "",
        "status",
        "responseId",
        "transactionDate",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "Lcom/vuitton/android/data/dto/repair/RepairTypeDto;",
        "recordType",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;",
        "transactionId",
        "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;",
        "myLVCareStatus",
        "storeName",
        "storeRetailCode",
        "createdDate",
        "myRepairCreatedDate",
        "lastModifiedDate",
        "lastMyRepairStatusChangedDate",
        "currencyCode",
        "typeOfRepair",
        "",
        "totalAmount",
        "totalAmountUpdated",
        "deliveryDate",
        "updatedDeliveryDate",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "isGenericSKU",
        "productName",
        "productSkuUnknown",
        "productFamily",
        "productImage",
        "isNotRepaired",
        "appointementDateTime",
        "appointmentId",
        "Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;",
        "origin",
        "careExpertNote",
        "shippingAddressId",
        "shippingAddressLine1",
        "shippingAddressLine2",
        "shippingAddressLine3",
        "shippingCity",
        "shippingZipPostalCode",
        "shippingStateProvince",
        "shippingCountry",
        "trackingNumber",
        "carrier",
        "",
        "Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;",
        "careServiceLineItem",
        "email",
        "phoneNumber",
        "productDescription",
        "addressTitle",
        "addressFirstName",
        "addressLastName",
        "confirmAddressExpirationDate",
        "payByLinkUrl",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "seen1",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

.field public static final X:[Lkotlin/Lazy;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public final O:Ljava/util/List;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public final S:Ljava/lang/String;

.field public final T:Ljava/lang/String;

.field public final U:Ljava/lang/String;

.field public final V:Ljava/lang/String;

.field public final W:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Double;

.field public final q:Ljava/lang/Double;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Z

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Llg;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Llg;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Llg;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Llg;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v6, Llg;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Llg;-><init>(I)V

    invoke-static {v0, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    new-instance v8, Llg;

    const/16 v9, 0x17

    invoke-direct {v8, v9}, Llg;-><init>(I)V

    invoke-static {v0, v8}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v8, 0x31

    new-array v8, v8, [Lkotlin/Lazy;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    const/4 v10, 0x1

    aput-object v1, v8, v10

    const/4 v10, 0x2

    aput-object v1, v8, v10

    const/4 v10, 0x3

    aput-object v1, v8, v10

    const/4 v10, 0x4

    aput-object v2, v8, v10

    const/4 v2, 0x5

    aput-object v1, v8, v2

    const/4 v2, 0x6

    aput-object v4, v8, v2

    const/4 v2, 0x7

    aput-object v1, v8, v2

    const/16 v2, 0x8

    aput-object v1, v8, v2

    const/16 v2, 0x9

    aput-object v1, v8, v2

    const/16 v2, 0xa

    aput-object v1, v8, v2

    const/16 v2, 0xb

    aput-object v1, v8, v2

    const/16 v2, 0xc

    aput-object v1, v8, v2

    const/16 v2, 0xd

    aput-object v1, v8, v2

    const/16 v2, 0xe

    aput-object v1, v8, v2

    const/16 v2, 0xf

    aput-object v1, v8, v2

    const/16 v2, 0x10

    aput-object v1, v8, v2

    const/16 v2, 0x11

    aput-object v1, v8, v2

    aput-object v1, v8, v3

    const/16 v2, 0x13

    aput-object v1, v8, v2

    aput-object v1, v8, v5

    const/16 v2, 0x15

    aput-object v1, v8, v2

    aput-object v1, v8, v7

    aput-object v1, v8, v9

    const/16 v2, 0x18

    aput-object v1, v8, v2

    const/16 v2, 0x19

    aput-object v1, v8, v2

    const/16 v2, 0x1a

    aput-object v1, v8, v2

    const/16 v2, 0x1b

    aput-object v1, v8, v2

    const/16 v2, 0x1c

    aput-object v6, v8, v2

    const/16 v2, 0x1d

    aput-object v1, v8, v2

    const/16 v2, 0x1e

    aput-object v1, v8, v2

    const/16 v2, 0x1f

    aput-object v1, v8, v2

    const/16 v2, 0x20

    aput-object v1, v8, v2

    const/16 v2, 0x21

    aput-object v1, v8, v2

    const/16 v2, 0x22

    aput-object v1, v8, v2

    const/16 v2, 0x23

    aput-object v1, v8, v2

    const/16 v2, 0x24

    aput-object v1, v8, v2

    const/16 v2, 0x25

    aput-object v1, v8, v2

    const/16 v2, 0x26

    aput-object v1, v8, v2

    const/16 v2, 0x27

    aput-object v1, v8, v2

    const/16 v2, 0x28

    aput-object v0, v8, v2

    const/16 v0, 0x29

    aput-object v1, v8, v0

    const/16 v0, 0x2a

    aput-object v1, v8, v0

    const/16 v0, 0x2b

    aput-object v1, v8, v0

    const/16 v0, 0x2c

    aput-object v1, v8, v0

    const/16 v0, 0x2d

    aput-object v1, v8, v0

    const/16 v0, 0x2e

    aput-object v1, v8, v0

    const/16 v0, 0x2f

    aput-object v1, v8, v0

    const/16 v0, 0x30

    aput-object v1, v8, v0

    sput-object v8, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->X:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    const/high16 v0, 0x2100000

    and-int v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit16 v4, p2, 0x100

    const/16 v5, 0x100

    if-eq v5, v4, :cond_1

    move v2, v3

    :cond_1
    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_30

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    :goto_1
    and-int/lit8 p3, p1, 0x2

    if-nez p3, :cond_3

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    :goto_2
    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_4

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    :goto_3
    and-int/lit8 p3, p1, 0x8

    if-nez p3, :cond_5

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    :goto_4
    and-int/lit8 p3, p1, 0x10

    if-nez p3, :cond_6

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    goto :goto_5

    :cond_6
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    :goto_5
    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_7

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    :goto_6
    and-int/lit8 p3, p1, 0x40

    if-nez p3, :cond_8

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    goto :goto_7

    :cond_8
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    :goto_7
    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_9

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object/from16 p3, p10

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    :goto_8
    and-int/lit16 p3, p1, 0x100

    if-nez p3, :cond_a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object/from16 p3, p11

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    :goto_9
    and-int/lit16 p3, p1, 0x200

    if-nez p3, :cond_b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 p3, p12

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    :goto_a
    and-int/lit16 p3, p1, 0x400

    if-nez p3, :cond_c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    goto :goto_b

    :cond_c
    move-object/from16 p3, p13

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    :goto_b
    and-int/lit16 p3, p1, 0x800

    if-nez p3, :cond_d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    goto :goto_c

    :cond_d
    move-object/from16 p3, p14

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    :goto_c
    and-int/lit16 p3, p1, 0x1000

    if-nez p3, :cond_e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move-object/from16 p3, p15

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    :goto_d
    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    goto :goto_e

    :cond_f
    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    :goto_e
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_10

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    goto :goto_f

    :cond_10
    move-object/from16 p3, p17

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    :goto_f
    const p3, 0x8000

    and-int p4, p1, p3

    if-nez p4, :cond_11

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    goto :goto_10

    :cond_11
    move-object/from16 p4, p18

    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    :goto_10
    const/high16 p4, 0x10000

    and-int p5, p1, p4

    if-nez p5, :cond_12

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    goto :goto_11

    :cond_12
    move-object/from16 p5, p19

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    :goto_11
    const/high16 p5, 0x20000

    and-int/2addr p5, p1

    if-nez p5, :cond_13

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    goto :goto_12

    :cond_13
    move-object/from16 p5, p20

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    :goto_12
    const/high16 p5, 0x40000

    and-int/2addr p5, p1

    if-nez p5, :cond_14

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    goto :goto_13

    :cond_14
    move-object/from16 p5, p21

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    :goto_13
    const/high16 p5, 0x80000

    and-int/2addr p5, p1

    if-nez p5, :cond_15

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    :goto_14
    move/from16 p5, p23

    goto :goto_15

    :cond_15
    move-object/from16 p5, p22

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    goto :goto_14

    :goto_15
    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    const/high16 p5, 0x200000

    and-int/2addr p5, p1

    if-nez p5, :cond_16

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 p5, p24

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    :goto_16
    const/high16 p5, 0x400000

    and-int/2addr p5, p1

    if-nez p5, :cond_17

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 p5, p25

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    :goto_17
    const/high16 p5, 0x800000

    and-int/2addr p5, p1

    if-nez p5, :cond_18

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 p5, p26

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    :goto_18
    const/high16 p5, 0x1000000

    and-int/2addr p5, p1

    if-nez p5, :cond_19

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    :goto_19
    move/from16 p5, p28

    goto :goto_1a

    :cond_19
    move-object/from16 p5, p27

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    goto :goto_19

    :goto_1a
    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    const/high16 p5, 0x4000000

    and-int/2addr p5, p1

    if-nez p5, :cond_1a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object/from16 p5, p29

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    :goto_1b
    const/high16 p5, 0x8000000

    and-int/2addr p5, p1

    if-nez p5, :cond_1b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    move-object/from16 p5, p30

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    :goto_1c
    const/high16 p5, 0x10000000

    and-int/2addr p5, p1

    if-nez p5, :cond_1c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    goto :goto_1d

    :cond_1c
    move-object/from16 p5, p31

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    :goto_1d
    const/high16 p5, 0x20000000

    and-int/2addr p5, p1

    if-nez p5, :cond_1d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    goto :goto_1e

    :cond_1d
    move-object/from16 p5, p32

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    :goto_1e
    const/high16 p5, 0x40000000    # 2.0f

    and-int/2addr p5, p1

    if-nez p5, :cond_1e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    move-object/from16 p5, p33

    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    :goto_1f
    const/high16 p5, -0x80000000

    and-int/2addr p1, p5

    if-nez p1, :cond_1f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    goto :goto_20

    :cond_1f
    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    :goto_20
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_20

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    goto :goto_21

    :cond_20
    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    :goto_21
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_21

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    goto :goto_22

    :cond_21
    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    :goto_22
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_22

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    :goto_23
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_23

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    :goto_24
    and-int/lit8 p1, p2, 0x10

    if-nez p1, :cond_24

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    goto :goto_25

    :cond_24
    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    :goto_25
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_25

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    goto :goto_26

    :cond_25
    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    :goto_26
    and-int/lit8 p1, p2, 0x40

    if-nez p1, :cond_26

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    goto :goto_27

    :cond_26
    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    :goto_27
    and-int/lit16 p1, p2, 0x80

    if-nez p1, :cond_27

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    :goto_28
    move-object/from16 p1, p43

    goto :goto_29

    :cond_27
    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    goto :goto_28

    :goto_29
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    and-int/lit16 p1, p2, 0x200

    if-nez p1, :cond_28

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    move-object/from16 p1, p44

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    :goto_2a
    and-int/lit16 p1, p2, 0x400

    if-nez p1, :cond_29

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    goto :goto_2b

    :cond_29
    move-object/from16 p1, p45

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    :goto_2b
    and-int/lit16 p1, p2, 0x800

    if-nez p1, :cond_2a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    goto :goto_2c

    :cond_2a
    move-object/from16 p1, p46

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    :goto_2c
    and-int/lit16 p1, p2, 0x1000

    if-nez p1, :cond_2b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    move-object/from16 p1, p47

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    :goto_2d
    and-int/lit16 p1, p2, 0x2000

    if-nez p1, :cond_2c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    move-object/from16 p1, p48

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    :goto_2e
    and-int/lit16 p1, p2, 0x4000

    if-nez p1, :cond_2d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    goto :goto_2f

    :cond_2d
    move-object/from16 p1, p49

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    :goto_2f
    and-int p1, p2, p3

    if-nez p1, :cond_2e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    goto :goto_30

    :cond_2e
    move-object/from16 p1, p50

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    :goto_30
    and-int p1, p2, p4

    if-nez p1, :cond_2f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    return-void

    :cond_2f
    move-object/from16 p1, p51

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    return-void

    :cond_30
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p0

    filled-new-array {v0, v5}, [I

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v2
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 55

    move/from16 v0, p50

    move/from16 v1, p51

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    move-object v9, v3

    goto :goto_4

    :cond_4
    move-object/from16 v9, p5

    :goto_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    move-object v10, v3

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    move-object v11, v3

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    move-object v12, v3

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    move-object v13, v3

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_9

    move-object v14, v3

    goto :goto_9

    :cond_9
    move-object/from16 v14, p10

    :goto_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    move-object v15, v3

    goto :goto_a

    :cond_a
    move-object/from16 v15, p11

    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    move-object/from16 v16, v3

    goto :goto_b

    :cond_b
    move-object/from16 v16, p12

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    move-object/from16 v17, v3

    goto :goto_c

    :cond_c
    move-object/from16 v17, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    move-object/from16 v18, v3

    goto :goto_d

    :cond_d
    move-object/from16 v18, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    move-object/from16 v19, v3

    goto :goto_e

    :cond_e
    move-object/from16 v19, p15

    :goto_e
    const v2, 0x8000

    and-int v4, v0, v2

    if-eqz v4, :cond_f

    move-object/from16 v20, v3

    goto :goto_f

    :cond_f
    move-object/from16 v20, p16

    :goto_f
    const/high16 v4, 0x10000

    and-int v21, v0, v4

    if-eqz v21, :cond_10

    move-object/from16 v21, v3

    goto :goto_10

    :cond_10
    move-object/from16 v21, p17

    :goto_10
    const/high16 v22, 0x20000

    and-int v22, v0, v22

    if-eqz v22, :cond_11

    move-object/from16 v22, v3

    goto :goto_11

    :cond_11
    move-object/from16 v22, p18

    :goto_11
    const/high16 v23, 0x40000

    and-int v23, v0, v23

    if-eqz v23, :cond_12

    move-object/from16 v23, v3

    goto :goto_12

    :cond_12
    move-object/from16 v23, p19

    :goto_12
    const/high16 v24, 0x80000

    and-int v24, v0, v24

    if-eqz v24, :cond_13

    move-object/from16 v24, v3

    goto :goto_13

    :cond_13
    move-object/from16 v24, p20

    :goto_13
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_14

    move-object/from16 v26, v3

    goto :goto_14

    :cond_14
    move-object/from16 v26, p22

    :goto_14
    const/high16 v25, 0x400000

    and-int v25, v0, v25

    if-eqz v25, :cond_15

    move-object/from16 v27, v3

    goto :goto_15

    :cond_15
    move-object/from16 v27, p23

    :goto_15
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_16

    move-object/from16 v28, v3

    goto :goto_16

    :cond_16
    move-object/from16 v28, p24

    :goto_16
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    move-object/from16 v29, v3

    goto :goto_17

    :cond_17
    move-object/from16 v29, p25

    :goto_17
    const/high16 v25, 0x4000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    move-object/from16 v31, v3

    goto :goto_18

    :cond_18
    move-object/from16 v31, p27

    :goto_18
    const/high16 v25, 0x8000000

    and-int v25, v0, v25

    if-eqz v25, :cond_19

    move-object/from16 v32, v3

    goto :goto_19

    :cond_19
    move-object/from16 v32, p28

    :goto_19
    const/high16 v25, 0x10000000

    and-int v25, v0, v25

    if-eqz v25, :cond_1a

    move-object/from16 v33, v3

    goto :goto_1a

    :cond_1a
    move-object/from16 v33, p29

    :goto_1a
    const/high16 v25, 0x20000000

    and-int v25, v0, v25

    if-eqz v25, :cond_1b

    move-object/from16 v34, v3

    goto :goto_1b

    :cond_1b
    move-object/from16 v34, p30

    :goto_1b
    const/high16 v25, 0x40000000    # 2.0f

    and-int v25, v0, v25

    if-eqz v25, :cond_1c

    move-object/from16 v35, v3

    goto :goto_1c

    :cond_1c
    move-object/from16 v35, p31

    :goto_1c
    const/high16 v25, -0x80000000

    and-int v0, v0, v25

    if-eqz v0, :cond_1d

    move-object/from16 v36, v3

    goto :goto_1d

    :cond_1d
    move-object/from16 v36, p32

    :goto_1d
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1e

    move-object/from16 v37, v3

    goto :goto_1e

    :cond_1e
    move-object/from16 v37, p33

    :goto_1e
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1f

    move-object/from16 v38, v3

    goto :goto_1f

    :cond_1f
    move-object/from16 v38, p34

    :goto_1f
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_20

    move-object/from16 v39, v3

    goto :goto_20

    :cond_20
    move-object/from16 v39, p35

    :goto_20
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_21

    move-object/from16 v40, v3

    goto :goto_21

    :cond_21
    move-object/from16 v40, p36

    :goto_21
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_22

    move-object/from16 v41, v3

    goto :goto_22

    :cond_22
    move-object/from16 v41, p37

    :goto_22
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_23

    move-object/from16 v42, v3

    goto :goto_23

    :cond_23
    move-object/from16 v42, p38

    :goto_23
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_24

    move-object/from16 v43, v3

    goto :goto_24

    :cond_24
    move-object/from16 v43, p39

    :goto_24
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_25

    move-object/from16 v44, v3

    goto :goto_25

    :cond_25
    move-object/from16 v44, p40

    :goto_25
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_26

    move-object/from16 v46, v3

    goto :goto_26

    :cond_26
    move-object/from16 v46, p42

    :goto_26
    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_27

    move-object/from16 v47, v3

    goto :goto_27

    :cond_27
    move-object/from16 v47, p43

    :goto_27
    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_28

    move-object/from16 v48, v3

    goto :goto_28

    :cond_28
    move-object/from16 v48, p44

    :goto_28
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_29

    move-object/from16 v49, v3

    goto :goto_29

    :cond_29
    move-object/from16 v49, p45

    :goto_29
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2a

    move-object/from16 v50, v3

    goto :goto_2a

    :cond_2a
    move-object/from16 v50, p46

    :goto_2a
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2b

    move-object/from16 v51, v3

    goto :goto_2b

    :cond_2b
    move-object/from16 v51, p47

    :goto_2b
    and-int v0, v1, v2

    if-eqz v0, :cond_2c

    move-object/from16 v52, v3

    goto :goto_2c

    :cond_2c
    move-object/from16 v52, p48

    :goto_2c
    and-int v0, v1, v4

    if-eqz v0, :cond_2d

    move-object/from16 v53, v3

    goto :goto_2d

    :cond_2d
    move-object/from16 v53, p49

    :goto_2d
    const/16 v54, 0x0

    move-object/from16 v4, p0

    move/from16 v25, p21

    move/from16 v30, p26

    move-object/from16 v45, p41

    .line 620
    invoke-direct/range {v4 .. v54}, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 569
    invoke-virtual/range {p41 .. p41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    .line 572
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    .line 573
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    .line 574
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    .line 575
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    .line 576
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    .line 577
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    .line 578
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    .line 579
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    .line 580
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    .line 581
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    .line 582
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    .line 583
    iput-object p13, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    .line 584
    iput-object p14, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    .line 585
    iput-object p15, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 586
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    move-object/from16 p1, p17

    .line 587
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    move-object/from16 p1, p18

    .line 588
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 589
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 590
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    move/from16 p1, p21

    .line 591
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    move-object/from16 p1, p22

    .line 592
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 593
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 594
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 595
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    move/from16 p1, p26

    .line 596
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    move-object/from16 p1, p27

    .line 597
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 598
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 599
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    move-object/from16 p1, p30

    .line 600
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 601
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 602
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    move-object/from16 p1, p33

    .line 603
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    move-object/from16 p1, p34

    .line 604
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    move-object/from16 p1, p35

    .line 605
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 606
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    move-object/from16 p1, p37

    .line 607
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    move-object/from16 p1, p38

    .line 608
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    move-object/from16 p1, p39

    .line 609
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    move-object/from16 p1, p40

    .line 610
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    move-object/from16 p1, p41

    .line 611
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    move-object/from16 p1, p42

    .line 612
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    move-object/from16 p1, p43

    .line 613
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    move-object/from16 p1, p44

    .line 614
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    move-object/from16 p1, p45

    .line 615
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    move-object/from16 p1, p46

    .line 616
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    move-object/from16 p1, p47

    .line 617
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    move-object/from16 p1, p48

    .line 618
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    move-object/from16 p1, p49

    .line 619
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    if-nez v3, :cond_6

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    if-nez v3, :cond_b

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_3

    :cond_a
    :goto_2
    move v1, v2

    goto :goto_3

    :cond_b
    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    if-nez v3, :cond_1c

    if-nez v1, :cond_1b

    move v1, v0

    goto :goto_5

    :cond_1b
    :goto_4
    move v1, v2

    goto :goto_5

    :cond_1c
    if-nez v1, :cond_1d

    goto :goto_4

    :cond_1d
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    if-eq v1, v3, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    if-nez v3, :cond_f

    move v3, v0

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v0

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    if-nez v3, :cond_12

    move v3, v0

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    if-nez v3, :cond_13

    move v3, v0

    goto :goto_13

    :cond_13
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v0

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v0

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    if-nez v3, :cond_17

    move v3, v0

    goto :goto_17

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_17
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_18

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    if-nez v3, :cond_19

    move v3, v0

    goto :goto_19

    :cond_19
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    if-nez v3, :cond_1a

    move v3, v0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    if-nez v3, :cond_1b

    move v3, v0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    if-nez v3, :cond_1c

    move v3, v0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    if-nez v3, :cond_1d

    move v3, v0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    if-nez v3, :cond_1e

    move v3, v0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1e
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    if-nez v3, :cond_1f

    move v3, v0

    goto :goto_1f

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    if-nez v3, :cond_20

    move v3, v0

    goto :goto_20

    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_20
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    if-nez v3, :cond_21

    move v3, v0

    goto :goto_21

    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_21
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    if-nez v3, :cond_22

    move v3, v0

    goto :goto_22

    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_22
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    if-nez v3, :cond_23

    move v3, v0

    goto :goto_23

    :cond_23
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_23
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    if-nez v3, :cond_24

    move v3, v0

    goto :goto_24

    :cond_24
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_24
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    if-nez v3, :cond_25

    move v3, v0

    goto :goto_25

    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_25
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    if-nez v3, :cond_26

    move v3, v0

    goto :goto_26

    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    if-nez v3, :cond_27

    move v3, v0

    goto :goto_27

    :cond_27
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_27
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    if-nez v3, :cond_28

    move v3, v0

    goto :goto_28

    :cond_28
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_28
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    if-nez v3, :cond_29

    move v3, v0

    goto :goto_29

    :cond_29
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_29
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    if-nez v3, :cond_2a

    move v3, v0

    goto :goto_2a

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    if-nez v3, :cond_2b

    move v3, v0

    goto :goto_2b

    :cond_2b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    if-nez v3, :cond_2c

    move v3, v0

    goto :goto_2c

    :cond_2c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    if-nez p0, :cond_2d

    goto :goto_2d

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2d
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const-string v0, "null"

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    :goto_1
    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object v0, v3

    :goto_2
    const-string v3, ", responseId="

    const-string v4, ", transactionDate="

    const-string v5, "CareServiceDetailDto(status="

    iget-object v6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->b:Ljava/lang/String;

    invoke-static {v5, v6, v3, v7, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    const-string v5, ", recordType="

    iget-object v6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->c:Ljava/lang/String;

    invoke-static {v3, v6, v4, v1, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", myLVCareStatus="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeName="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeRetailCode="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdDate="

    const-string v2, ", myRepairCreatedDate="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lastModifiedDate="

    const-string v2, ", lastMyRepairStatusChangedDate="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->l:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", currencyCode="

    const-string v2, ", typeOfRepair="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmount="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmountUpdated="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryDate="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedDeliveryDate="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    const-string v2, ", isGenericSKU="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", productName="

    const-string v1, ", productSkuUnknown="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->u:Z

    invoke-static {v0, v2, v1, v3, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v0, ", productFamily="

    const-string v1, ", productImage="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", isNotRepaired="

    const-string v1, ", appointementDateTime="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->z:Z

    invoke-static {v2, v0, v1, v3, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v0, ", appointmentId="

    const-string v1, ", origin="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", careExpertNote="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingAddressId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingAddressLine1="

    const-string v1, ", shippingAddressLine2="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", shippingAddressLine3="

    const-string v1, ", shippingCity="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", shippingZipPostalCode="

    const-string v1, ", shippingStateProvince="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", shippingCountry="

    const-string v1, ", trackingNumber="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", carrier="

    const-string v1, ", careServiceLineItem="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->N:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", email="

    const-string v1, ", phoneNumber="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    invoke-static {v0, v2, v1, v3, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v0, ", productDescription="

    const-string v1, ", addressTitle="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", addressFirstName="

    const-string v1, ", addressLastName="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", confirmAddressExpirationDate="

    const-string v1, ", payByLinkUrl="

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
