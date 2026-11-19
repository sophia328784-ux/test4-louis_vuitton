.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00af\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;",
        "id",
        "",
        "displayableId",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;",
        "transactionId",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;",
        "type",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;",
        "category",
        "stepTitle",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;",
        "action",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;",
        "product",
        "trackingURL",
        "",
        "creationDateInUtcMs",
        "deliveryDateInUtcMs",
        "updatedDeliveryDateInUtcMs",
        "restitutionHistoryDateInUtcMs",
        "",
        "shouldShowPbl",
        "shouldShowTrackShipment",
        "shouldShowConfirmAddress",
        "shouldShowAcceptAssessment",
        "shouldShowContactAnExpert",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

.field public final f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

.field public final i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Ljava/lang/Long;

.field public final m:Ljava/lang/Long;

.field public final n:Ljava/lang/Long;

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p20

    and-int/lit16 v1, v0, 0x2000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move/from16 v18, v2

    goto :goto_0

    :cond_0
    move/from16 v18, p15

    :goto_0
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    move/from16 v19, v2

    goto :goto_1

    :cond_1
    move/from16 v19, p16

    :goto_1
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    move/from16 v20, v2

    goto :goto_2

    :cond_2
    move/from16 v20, p17

    :goto_2
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move/from16 v21, v2

    goto :goto_3

    :cond_3
    move/from16 v21, p18

    :goto_3
    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    move/from16 v22, v2

    goto :goto_4

    :cond_4
    move/from16 v22, p19

    :goto_4
    const/16 v23, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v3 .. v23}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    .line 92
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    .line 93
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    .line 95
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    .line 96
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    .line 97
    iput-wide p10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    .line 98
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    .line 99
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    .line 100
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    .line 101
    iput-boolean p15, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    move/from16 p1, p16

    .line 102
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    move/from16 p1, p17

    .line 103
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    move/from16 p1, p18

    .line 104
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->r:Z

    move/from16 p1, p19

    .line 105
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;JLjava/lang/Long;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p3

    :goto_2
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p4

    :goto_3
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p5

    :goto_4
    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_5

    iget-wide v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    move-wide v13, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p6

    :goto_5
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    move-object v15, v2

    goto :goto_6

    :cond_6
    move-object/from16 v15, p8

    :goto_6
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    move-object/from16 v16, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    move/from16 v18, v2

    goto :goto_7

    :cond_7
    move/from16 v18, p9

    :goto_7
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    move/from16 v19, v2

    goto :goto_8

    :cond_8
    move/from16 v19, p10

    :goto_8
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    move/from16 v20, v2

    goto :goto_9

    :cond_9
    move/from16 v20, p11

    :goto_9
    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

    move/from16 v22, v0

    goto :goto_a

    :cond_a
    move/from16 v22, p13

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    const/16 v23, 0x0

    move/from16 v21, p12

    invoke-direct/range {v3 .. v23}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
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
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    iget-wide v5, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->r:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

    if-eq p0, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    invoke-static {v0, v1, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->r:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    :goto_0
    const-string v1, ", displayableId="

    const-string v2, ", transactionId="

    const-string v3, "CareServiceShortUiModel(id="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", category="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stepTitle="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", product="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingURL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", creationDateInUtcMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deliveryDateInUtcMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updatedDeliveryDateInUtcMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", restitutionHistoryDateInUtcMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShowPbl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShowTrackShipment="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShowConfirmAddress="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShowAcceptAssessment="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->r:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShowContactAnExpert="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

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

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->k:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->l:Ljava/lang/Long;

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_3
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->m:Ljava/lang/Long;

    if-nez p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_4
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->n:Ljava/lang/Long;

    if-nez p2, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_5
    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->p:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->q:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->s:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
