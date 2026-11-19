.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;,
        Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;,
        Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;,
        Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0004\u001e\u001f !B\u008d\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;",
        "id",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;",
        "transactionId",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;",
        "type",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;",
        "category",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;",
        "action",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;",
        "store",
        "",
        "trackingURL",
        "creationFormattedDate",
        "appointmentId",
        "payByLinkURL",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;",
        "assessment",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;",
        "contactMethod",
        "",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;",
        "cancellationReasons",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;",
        "detail",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Store",
        "Assessment",
        "AssessmentItem",
        "CancellationReason",
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
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

.field public final e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

.field public final f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

.field public final g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

.field public final m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

.field public final n:Ljava/util/List;

.field public final o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->k:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->n:Ljava/util/List;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    if-eq v1, v3, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-eq v1, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-eq v1, v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eq v1, v3, :cond_10

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->n:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->n:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :goto_2
    return v2

    :cond_12
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->c:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->k:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->n:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    :goto_0
    const-string v1, ", transactionId="

    const-string v2, ", type="

    const-string v3, "CareServiceDetailUiModel(id="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationFormattedDate="

    const-string v2, ", appointmentId="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", payByLinkURL="

    const-string v2, ", assessment="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancellationReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->n:Ljava/util/List;

    invoke-static {v0, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    invoke-virtual {v1, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->o:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
