.class public final Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b9\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;",
        "id",
        "",
        "transactionId",
        "storeRetailCode",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;",
        "myLVCareStatus",
        "Ljava/util/Date;",
        "createdDate",
        "deliveryDate",
        "updatedDeliveryDate",
        "lastMyRepairStatusChangedDate",
        "productName",
        "productFamily",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "productSkuUnknown",
        "productImage",
        "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;",
        "repairType",
        "trackingNumber",
        "",
        "isOnGoing",
        "shouldShowPbl",
        "shouldShowTrackShipment",
        "shouldShowConfirmAddress",
        "shouldShowAcceptAssessment",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
            "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

.field public final f:Ljava/util/Date;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object/from16 v17, v1

    goto :goto_0

    :cond_0
    move-object/from16 v17, p15

    :goto_0
    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move/from16 v18, v2

    goto :goto_1

    :cond_1
    move/from16 v18, p16

    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    move/from16 v19, v2

    goto :goto_2

    :cond_2
    move/from16 v19, p17

    :goto_2
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move/from16 v20, v2

    goto :goto_3

    :cond_3
    move/from16 v20, p18

    :goto_3
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move/from16 v21, v2

    goto :goto_4

    :cond_4
    move/from16 v21, p19

    :goto_4
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    move/from16 v22, v2

    goto :goto_5

    :cond_5
    move/from16 v22, p20

    :goto_5
    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v2 .. v23}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-static/range {p9 .. p13}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    .line 109
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    .line 110
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    .line 112
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    .line 113
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    .line 114
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    .line 115
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    .line 116
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    .line 117
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    .line 118
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    .line 119
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    move/from16 p1, p16

    .line 120
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    move/from16 p1, p17

    .line 121
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    move/from16 p1, p18

    .line 122
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    move/from16 p1, p19

    .line 123
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    move/from16 p1, p20

    .line 124
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p9

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    move-object v7, v4

    move-object v4, v5

    move-object v5, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_1

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v14, p2

    :goto_1
    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    move-object/from16 v16, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    const v17, 0x8000

    and-int v17, v1, v17

    if-eqz v17, :cond_3

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    goto :goto_3

    :cond_3
    move/from16 v1, p4

    :goto_3
    const/high16 v17, 0x10000

    and-int v17, p9, v17

    move/from16 p1, v1

    if-eqz v17, :cond_4

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    move/from16 v17, v1

    goto :goto_4

    :cond_4
    move/from16 v17, p5

    :goto_4
    const/high16 v1, 0x20000

    and-int v1, p9, v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    move/from16 v18, v1

    goto :goto_5

    :cond_5
    move/from16 v18, p6

    :goto_5
    const/high16 v1, 0x40000

    and-int v1, p9, v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    move/from16 v19, v1

    goto :goto_6

    :cond_6
    move/from16 v19, p7

    :goto_6
    const/high16 v1, 0x80000

    and-int v1, p9, v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    move/from16 v20, v1

    goto :goto_7

    :cond_7
    move/from16 v20, p8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    const/16 v21, 0x0

    move-object v1, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v2

    move-object/from16 v2, v16

    move/from16 v16, p1

    invoke-direct/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    if-eq p0, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", transactionId="

    const-string v1, ", storeRetailCode="

    const-string v2, "CareServiceUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", myLVCareStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedDeliveryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastMyRepairStatusChangedDate="

    const-string v2, ", productName="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", productFamily="

    const-string v2, ", sku="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", productSkuUnknown="

    const-string v2, ", productImage="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repairType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isOnGoing="

    const-string v2, ", shouldShowPbl="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", shouldShowTrackShipment="

    const-string v2, ", shouldShowConfirmAddress="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", shouldShowAcceptAssessment="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->f:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->o:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->q:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->u:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
