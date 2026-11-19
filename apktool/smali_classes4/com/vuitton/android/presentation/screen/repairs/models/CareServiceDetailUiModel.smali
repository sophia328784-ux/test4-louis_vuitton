.class public final Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00dd\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u0012\u0006\u0010\u0012\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u0008\u0012\u0006\u0010\u0014\u001a\u00020\u0008\u0012\u0006\u0010\u0015\u001a\u00020\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u0008\u0012\u0006\u0010\u0017\u001a\u00020\u0008\u0012\u0006\u0010\u0018\u001a\u00020\u0008\u0012\u0006\u0010\u0019\u001a\u00020\u0008\u0012\u0006\u0010\u001a\u001a\u00020\u0008\u0012\u0006\u0010\u001b\u001a\u00020\u0008\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d\u0012\u0006\u0010 \u001a\u00020\u0008\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010#\u001a\u00020\u0008\u0012\u0006\u0010$\u001a\u00020\u0008\u0012\u0006\u0010%\u001a\u00020\u0008\u0012\u0006\u0010&\u001a\u00020\u0008\u0012\u0006\u0010\'\u001a\u00020\u0008\u0012\u0008\u0010)\u001a\u0004\u0018\u00010(\u0012\u0006\u0010*\u001a\u00020\u0008\u0012\u0006\u0010+\u001a\u00020\u0008\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010.\u001a\u00020\u0008\u0012\u0006\u0010/\u001a\u00020\u0008\u0012\u0006\u00100\u001a\u00020\u0008\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u00104\u001a\u000203\u00a2\u0006\u0004\u00085\u00106\u00a8\u00067"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;",
        "recordType",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;",
        "myLVCareStatus",
        "",
        "createdDate",
        "currencyCode",
        "repairType",
        "",
        "totalAmount",
        "totalAmountUpdated",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "productImage",
        "careExpertNote",
        "shippingAddressId",
        "shippingAddressLine1",
        "shippingAddressLine2",
        "shippingAddressLine3",
        "shippingCity",
        "shippingZipPostalCode",
        "shippingStateProvince",
        "shippingCountry",
        "appointmentDateTime",
        "appointmentId",
        "",
        "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;",
        "careServicesItems",
        "trackingNumber",
        "Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;",
        "origin",
        "email",
        "phoneNumber",
        "productDescription",
        "deliveryDate",
        "updatedDeliveryDate",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;",
        "transactionId",
        "productName",
        "productFamily",
        "storeName",
        "storeRetailCode",
        "addressTitle",
        "addressFirstName",
        "addressLastName",
        "confirmAddressExpirationDate",
        "payByLinkUrl",
        "",
        "shouldShowPbl",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

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

.field public final O:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

.field public final d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:D

.field public final i:Ljava/lang/Double;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/util/List;

.field public final x:Ljava/lang/String;

.field public final y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 44

    move/from16 v0, p43

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move/from16 v42, v0

    goto :goto_0

    :cond_0
    move/from16 v42, p41

    :goto_0
    const/16 v43, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    .line 211
    invoke-direct/range {v1 .. v43}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p30

    move-object/from16 v6, p32

    move-object/from16 v7, p33

    move-object/from16 v8, p36

    move-object/from16 v9, p37

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3, v4}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p14 .. p18}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v7, v8, v9}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p38 .. p38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    move-wide/from16 p1, p7

    iput-wide p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    move/from16 p1, p41

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;ZII)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;
    .locals 45

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    iget-wide v7, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    move-object/from16 p1, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    move-object/from16 v26, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    move-object/from16 v29, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    move-wide/from16 v30, v7

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    move-object/from16 v32, v7

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    move-object/from16 v33, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    move-object/from16 v34, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    move-object/from16 v35, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    move-object/from16 v36, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    move-object/from16 v37, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    move-object/from16 v38, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    move-object/from16 v39, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    move-object/from16 v40, v3

    move/from16 v3, p4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    move/from16 v41, v3

    goto :goto_1

    :cond_1
    move/from16 v41, p2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v10, v11, v12}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14, v15, v1, v2}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v36

    invoke-static {v0, v4, v8, v7, v9}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    const/16 v42, 0x0

    move-object/from16 v3, v16

    move-object/from16 v16, v1

    move-object v1, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move-wide/from16 v43, v30

    move-object/from16 v30, v4

    move-object/from16 v4, v29

    move-object/from16 v31, v32

    move-object/from16 v29, v36

    move-object/from16 v32, v8

    move-object/from16 v36, v9

    move-object/from16 v9, v33

    move-object/from16 v33, v7

    move-wide/from16 v7, v43

    invoke-direct/range {v0 .. v42}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    iget-wide v5, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    if-nez v3, :cond_20

    if-nez v1, :cond_1f

    move v1, v0

    goto :goto_1

    :cond_1f
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_20
    if-nez v1, :cond_21

    goto :goto_0

    :cond_21
    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    if-eq p0, p1, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CareServiceDetailUiModel(id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", recordType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", myLVCareStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", createdDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currencyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", repairType="

    const-string v3, ", totalAmount="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v4, v2, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", totalAmountUpdated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sku="

    const-string v3, ", productImage="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", careExpertNote="

    const-string v3, ", shippingAddressId="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", shippingAddressLine1="

    const-string v3, ", shippingAddressLine2="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", shippingAddressLine3="

    const-string v3, ", shippingCity="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", shippingZipPostalCode="

    const-string v3, ", shippingStateProvince="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", shippingCountry="

    const-string v3, ", appointmentDateTime="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", appointmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", careServicesItems="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", trackingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", email="

    const-string v3, ", phoneNumber="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", productDescription="

    const-string v3, ", deliveryDate="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", updatedDeliveryDate="

    const-string v3, ", transactionId="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3, v0}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", productName="

    const-string v2, ", productFamily="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    invoke-static {v1, v0, v3, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", storeName="

    const-string v2, ", storeRetailCode="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    invoke-static {v1, v0, v3, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", addressTitle="

    const-string v2, ", addressFirstName="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    invoke-static {v1, v0, v3, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", addressLastName="

    const-string v2, ", confirmAddressExpirationDate="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    invoke-static {v1, v0, v3, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", payByLinkUrl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShowPbl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    invoke-static {v2, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;

    invoke-virtual {v3, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->O:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
