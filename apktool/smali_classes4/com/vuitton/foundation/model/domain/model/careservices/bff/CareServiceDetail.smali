.class public final Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;,
        Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\n%&\'()*+,-.B\u00bb\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000c\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006/"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;",
        "transactionId",
        "",
        "description",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;",
        "type",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;",
        "category",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;",
        "steps",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;",
        "action",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;",
        "store",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;",
        "product",
        "trackingURL",
        "Lkotlinx/datetime/Instant;",
        "creationDate",
        "appointmentId",
        "payByLinkURL",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;",
        "preliminaryAssessmentInformation",
        "contactMethod",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;",
        "cancellationReasons",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;",
        "appointmentInformation",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;",
        "shippingInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Step",
        "StepStatus",
        "Store",
        "Assessment",
        "AssessmentItem",
        "CancellationReason",
        "AppointmentInformation",
        "AppointmentDetail",
        "ContactInformation",
        "ShippingInformation",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

.field public final e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

.field public final f:Ljava/util/List;

.field public final g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

.field public final h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

.field public final i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

.field public final j:Ljava/lang/String;

.field public final k:Lkotlinx/datetime/Instant;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/util/List;

.field public final q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

.field public final r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->k:Lkotlinx/datetime/Instant;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    iput-object p15, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->p:Ljava/util/List;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

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
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    if-eq v1, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-eq v1, v3, :cond_9

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-eq v1, v3, :cond_b

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->k:Lkotlinx/datetime/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->k:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v3}, Lkotlinx/datetime/Instant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->p:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->p:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2

    :cond_15
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    :goto_2
    return v2

    :cond_16
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->j:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->k:Lkotlinx/datetime/Instant;

    iget-object v3, v3, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->l:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->o:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->p:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    if-nez p0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    :goto_0
    const-string v1, ", transactionId="

    const-string v2, ", description="

    const-string v3, "CareServiceDetail(id="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->k:Lkotlinx/datetime/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payByLinkURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preliminaryAssessmentInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cancellationReasons="

    const-string v2, ", appointmentInformation="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->p:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
