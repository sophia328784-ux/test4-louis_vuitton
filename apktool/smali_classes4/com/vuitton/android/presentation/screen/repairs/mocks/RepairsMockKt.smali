.class public abstract Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsMockKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->DISTANT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    const/high16 v21, 0xf0000

    const/16 v22, 0x0

    const-string v1, "1"

    const-string v2, "12345"

    const-string v3, "J31"

    const-string v6, "2022-12-20"

    const-string v7, "2022-12-20"

    move-object v14, v8

    const-string v8, "2022-12-20"

    const-string v9, "Repairs"

    const-string v10, "Sac"

    const-string v11, "M41414"

    const-string v12, "M41414"

    const-string v13, ""

    const-string v15, ""

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RECEIVED_AT_ATELIER:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    sget-object v37, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v39, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->VideoCall:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    const-string v54, ""

    const/16 v55, 0x0

    const-string v7, "1"

    const-string v10, "String"

    const-string v11, ""

    const-string v12, ""

    move-object v8, v14

    const-wide v13, 0x4058e00000000000L    # 99.5

    const-string v16, "M41414"

    const-string v17, ""

    const-string v18, "Notes"

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    const-string v33, ""

    const-string v34, ""

    const-string v35, ""

    const-string v36, ""

    const-string v38, ""

    const-string v40, "test@gmail.com"

    const-string v41, "+33650999999"

    const-string v42, "Description"

    const-string v43, ""

    const-string v44, ""

    const-string v45, "1111"

    const-string v46, "Product Name"

    const-string v47, "Family"

    const-string v48, "Paris"

    const-string v49, "J31"

    const-string v50, "AddressTitle"

    const-string v51, "John"

    const-string v52, "Doe"

    const-string v53, ""

    invoke-direct/range {v6 .. v55}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v6

    new-instance v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REQUEST_SUBMITTED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v12, "Request submitted"

    invoke-direct {v11, v1, v12, v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v27, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const/4 v8, 0x0

    const v9, 0xffff7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v13, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v14

    move-object v15, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-object v4, v2

    const/4 v2, 0x0

    move-object v5, v1

    move-object v1, v3

    const/4 v3, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v18, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v2

    filled-new-array {v0, v14, v12, v2}, [Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    move-object v2, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const v9, 0xf7ff7

    move-object v3, v2

    const/4 v2, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v12, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    move-result-object v2

    const-string v3, "Preliminary assessment"

    invoke-static {v15, v3, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v5, "Shipping to atelier"

    invoke-static {v4, v5, v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v8, "Preliminary assessment acc"

    invoke-static {v7, v8, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    invoke-direct {v15, v4, v5, v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Received at atelier"

    invoke-static {v4, v7, v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v4

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPED_FROM_EHUB:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v8, "Shipping to Louis Vuitton Atelier in France"

    invoke-static {v7, v8, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v17

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->UNDER_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v8, "Under assessment"

    invoke-static {v7, v8, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v7

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v9, "Repair in progress"

    invoke-static {v8, v9, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v19

    const-string v8, "Awaiting payment"

    invoke-static {v12, v8, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v20

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v9, "Payment initiated"

    invoke-static {v8, v9, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v21

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONTACT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v9, "Payment contact"

    invoke-static {v8, v9, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v22

    const-string v8, "Confirm address"

    invoke-static {v13, v8, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v23

    const-string v9, "Shipping"

    invoke-static {v11, v9, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v24

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_IN_PREPARATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v10, "Shipping in preparation"

    invoke-static {v9, v10, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v25

    const-string v9, "Delivered to client"

    invoke-static {v1, v9, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v26

    move-object v12, v3

    move-object v13, v6

    move-object/from16 v1, v16

    move-object/from16 v11, v18

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    filled-new-array/range {v11 .. v26}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    new-instance v3, Lkotlin/Pair;

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/FollowUp;->PAST:Lcom/vuitton/android/presentation/screen/repairs/FollowUp;

    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    sget-object v6, Lcom/vuitton/android/presentation/screen/repairs/FollowUp;->CURRENT:Lcom/vuitton/android/presentation/screen/repairs/FollowUp;

    invoke-direct {v4, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    sget-object v7, Lcom/vuitton/android/presentation/screen/repairs/FollowUp;->FUTURE:Lcom/vuitton/android/presentation/screen/repairs/FollowUp;

    invoke-direct {v6, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v1, v5, v4, v6}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    new-instance v13, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    move-object/from16 v17, v28

    const/16 v28, 0x3d44

    const/16 v29, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v14, v27

    const/16 v27, 0x0

    move-object/from16 v18, v0

    move-object/from16 v21, v2

    invoke-direct/range {v13 .. v29}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v13, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    return-void
.end method
