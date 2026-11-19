.class public abstract Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsBffMockKt;
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
.field public static final a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    sget-object v0, Lcom/vuitton/android/presentation/screen/portal/models/MocksKt;->a:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v1, 0x0

    const-string v2, "Speedy 30"

    if-eqz v0, :cond_0

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v4, "M41414"

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v13, v3

    goto :goto_0

    :cond_0
    move-object v13, v1

    :goto_0
    new-instance v14, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    sget-object v18, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->Distant:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    sget-object v20, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ConfirmEstimate:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v15

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/high16 v25, 0x20000

    const/16 v26, 0x0

    move-object/from16 v9, v18

    const/16 v18, 0x0

    move-object/from16 v10, v19

    const/16 v19, 0x0

    move-object/from16 v12, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-string v6, "cs-001"

    const-string v7, "CS-001-2024"

    const-string v8, "tx-12345"

    const-string v11, "\u00c9valuation pr\u00e9liminaire"

    move-object v5, v14

    const-string v14, "https://tracking.louisvuitton.com/track/12345"

    invoke-direct/range {v5 .. v26}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v14, v5

    new-instance v23, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    const-string v1, "J31"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;-><init>(Ljava/lang/String;)V

    new-instance v26, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    const-wide v4, 0x4075e00000000000L    # 350.0

    const-string v6, "EUR"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;-><init>(Ljava/lang/String;D)V

    const-string v4, "350,00 \u20ac"

    invoke-direct {v1, v4, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    const-wide v7, 0x4062c00000000000L    # 150.0

    invoke-direct {v5, v6, v7, v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;-><init>(Ljava/lang/String;D)V

    const-string v7, "150,00 \u20ac"

    invoke-direct {v4, v7, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;)V

    const-string v5, "Nettoyage complet"

    invoke-direct {v3, v5, v4}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-object v13, v0

    move-object/from16 v18, v1

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    invoke-direct {v11, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;-><init>(Ljava/lang/String;D)V

    const-string v0, "200,00 \u20ac"

    invoke-direct {v8, v0, v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;)V

    const-string v1, "Remplacement fermeture \u00e9clair"

    invoke-direct {v4, v1, v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;)V

    filled-new-array {v3, v4}, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v20, 0x0

    const-string v16, "\u00c9valuation de votre produit"

    const-string v17, "Le sac n\u00e9cessite un nettoyage complet et le remplacement de la fermeture \u00e9clair. L\'\u00e9tat g\u00e9n\u00e9ral est bon."

    move-object/from16 v15, v26

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Ljava/util/List;)V

    sget-object v27, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->VIDEO_CALL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    const-string v4, "reason-1"

    const-string v6, "Prix trop \u00e9lev\u00e9"

    invoke-direct {v3, v4, v6}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    const-string v6, "reason-2"

    const-string v8, "D\u00e9lai trop long"

    invoke-direct {v4, v6, v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    const-string v8, "reason-3"

    const-string v11, "Autre"

    invoke-direct {v6, v8, v11}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v4, v6}, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v29, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    const-string v6, "R\u00e9paration demand\u00e9e en ligne"

    invoke-direct {v4, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    const-string v6, "15 novembre 2024"

    invoke-direct {v3, v2, v4, v6}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V

    new-instance v35, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const-string v19, "350,00 \u20ac"

    const-string v16, "\u00c9valuation de votre produit"

    const-string v17, "Le sac n\u00e9cessite un nettoyage complet et le remplacement de la fermeture \u00e9clair. L\'\u00e9tat g\u00e9n\u00e9ral est bon."

    move-object/from16 v15, v35

    invoke-direct/range {v15 .. v20}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    const-string v1, "step-1"

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->PAST:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    const-string v4, "Demande soumise"

    invoke-direct {v0, v1, v4, v2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    const-string v2, "step-2"

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->CURRENT:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    const-string v6, "\u00c9valuation pr\u00e9liminaire"

    invoke-direct {v1, v2, v6, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->FUTURE:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    const-string v7, "step-3"

    const-string v8, "R\u00e9paration en cours"

    invoke-direct {v2, v7, v8, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    const-string v11, "step-4"

    const-string v15, "Livr\u00e9 au client"

    invoke-direct {v7, v11, v15, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V

    filled-new-array {v0, v1, v2, v7}, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v30, "tx-12345"

    const-string v36, "R\u00e9paration d\'un sac Speedy 30 avec nettoyage et remplacement de la fermeture \u00e9clair"

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v38}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v30, 0x0

    const/16 v24, 0x0

    const-string v16, "cs-001"

    const-string v17, "tx-12345"

    const-string v22, "https://tracking.louisvuitton.com/track/12345"

    move-object/from16 v15, v23

    const-string v23, "15 novembre 2024"

    const-string v25, "https://pay.louisvuitton.com/payment/12345"

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v30}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v15

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REQUEST_SUBMITTED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v3, "Votre demande de r\u00e9paration a \u00e9t\u00e9 soumise avec succ\u00e8s"

    invoke-direct {v1, v2, v4, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->TrackMyShipment:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    const/16 v27, 0x0

    const v28, 0x2bf9c

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v15, "cs-002"

    const-string v16, "CS-002-2024"

    const-string v18, "Exp\u00e9dition en cours"

    invoke-static/range {v14 .. v28}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;JLjava/lang/Long;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v4

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ConfirmAddress:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    const v28, 0x27f9c

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v15, "cs-003"

    const-string v16, "CS-003-2024"

    const-string v18, "Confirmer l\'adresse"

    invoke-static/range {v14 .. v28}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;JLjava/lang/Long;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v5

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->AwaitingPayment:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    const v28, 0x2df9c

    const/16 v23, 0x1

    const/16 v25, 0x0

    const-string v15, "cs-004"

    const-string v16, "CS-004-2024"

    const-string v18, "En attente de paiement"

    invoke-static/range {v14 .. v28}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;JLjava/lang/Long;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v7

    filled-new-array {v14, v4, v5, v7}, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->History:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v5

    invoke-virtual {v5}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v20

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v5

    invoke-virtual {v5}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const v28, 0x2198c

    const/16 v19, 0x0

    const/16 v23, 0x0

    const-string v15, "cs-history-001"

    const-string v16, "CS-H001-2024"

    const-string v18, "Livr\u00e9"

    invoke-static/range {v14 .. v28}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;JLjava/lang/Long;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v9, "Votre produit est en cours d\'\u00e9valuation par nos experts"

    invoke-static {v7, v6, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v16

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Exp\u00e9dition vers l\'atelier"

    const-string v9, "Votre produit est en cours d\'exp\u00e9dition vers notre atelier"

    invoke-static {v6, v7, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v17

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Re\u00e7u \u00e0 l\'atelier"

    const-string v9, "Votre produit a \u00e9t\u00e9 re\u00e7u dans notre atelier"

    invoke-static {v6, v7, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v18

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->UNDER_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "En cours d\'\u00e9valuation"

    const-string v9, "Nos experts \u00e9valuent votre produit"

    invoke-static {v6, v7, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v19

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Votre produit est en cours de r\u00e9paration"

    invoke-static {v6, v8, v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v20

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "En attente de paiement"

    const-string v8, "Nous attendons votre paiement pour finaliser la r\u00e9paration"

    invoke-static {v6, v7, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v21

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Confirmer l\'adresse"

    const-string v8, "Veuillez confirmer votre adresse de livraison"

    invoke-static {v6, v7, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v22

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Exp\u00e9dition"

    const-string v8, "Votre produit r\u00e9par\u00e9 est en cours d\'exp\u00e9dition"

    invoke-static {v6, v7, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v23

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const-string v7, "Livr\u00e9"

    const-string v8, "Votre produit r\u00e9par\u00e9 a \u00e9t\u00e9 livr\u00e9"

    invoke-static {v6, v7, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v24

    move-object v15, v1

    filled-new-array/range {v15 .. v24}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    new-instance v6, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v17, 0x100

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v8, "repairs@louisvuitton.com"

    const-string v9, "+33123456789"

    const-string v10, "https://api.louisvuitton.com/repairs/"

    const-string v11, "https://www.louisvuitton.com/repairs/process"

    const-string v12, "https://tracking.louisvuitton.com/"

    const-string v13, "J31"

    const-string v14, "Louis Vuitton Champs-\u00c9lys\u00e9es"

    invoke-direct/range {v7 .. v18}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    const-string v22, ""

    const-string v25, "https://pay.louisvuitton.com/payment/12345"

    move-object/from16 v23, v0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    invoke-direct/range {v15 .. v27}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;)V

    sput-object v15, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsBffMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    return-void
.end method
