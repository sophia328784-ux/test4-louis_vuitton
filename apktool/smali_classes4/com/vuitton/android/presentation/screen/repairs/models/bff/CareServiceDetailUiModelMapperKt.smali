.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModelMapperKt;
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


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->k:Lkotlinx/datetime/Instant;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v2

    :goto_0
    move-object v10, v5

    goto :goto_1

    :cond_0
    move-object v9, v2

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    if-eqz v11, :cond_1

    new-instance v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;->a:Ljava/lang/String;

    invoke-direct {v12, v11}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->j:Ljava/lang/String;

    sget-object v13, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v0, v7}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlinx/datetime/Instant;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v9

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->l:Ljava/lang/String;

    move-object v15, v10

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v8, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v19

    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    move-result-object v16

    move-object/from16 v20, v16

    goto :goto_3

    :cond_2
    const/16 v20, 0x0

    :goto_3
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_4

    :cond_3
    const/16 v21, 0x0

    :goto_4
    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v24, v5

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v17, v8

    move-object/from16 v25, v9

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;

    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;

    move-object/from16 v16, v2

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    if-eqz v8, :cond_4

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v8

    goto :goto_6

    :cond_4
    const/4 v8, 0x0

    :goto_6
    invoke-direct {v9, v2, v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    goto :goto_5

    :cond_5
    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Ljava/util/List;)V

    goto :goto_7

    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    const/16 v16, 0x0

    :goto_7
    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->o:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v8, -0x3d5d3b14

    if-eq v5, v8, :cond_b

    const v8, 0x5c24b9c

    if-eq v5, v8, :cond_9

    const v8, 0x4f6b4d79

    if-eq v5, v8, :cond_7

    goto :goto_8

    :cond_7
    const-string v5, "videoCall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->VIDEO_CALL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    goto :goto_9

    :cond_9
    const-string v5, "email"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->EMAIL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    goto :goto_9

    :cond_b
    const-string v5, "phoneCall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->PHONE_CALL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v2, 0x0

    :goto_9
    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->p:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    move-object v8, v13

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    const/16 v9, 0xa

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;

    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    move-object/from16 v18, v2

    iget-object v2, v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;->b:Ljava/lang/String;

    invoke-direct {v9, v2, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    goto :goto_a

    :cond_e
    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->i:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    sget-object v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v14, :cond_f

    move-object/from16 v27, v14

    goto :goto_b

    :cond_f
    sget-object v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->d:Ljava/lang/String;

    move-object/from16 v27, v5

    :goto_b
    if-eqz v2, :cond_10

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v5, :cond_10

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    move-object/from16 v28, v5

    goto :goto_c

    :cond_10
    const/16 v28, 0x0

    :goto_c
    new-instance v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->b:Ljava/lang/String;

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :goto_d
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->Distant:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    const/4 v14, 0x2

    if-ne v3, v9, :cond_12

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    move-object/from16 v18, v3

    const v3, 0x7f1408c1

    move-object/from16 v19, v8

    const/4 v8, 0x0

    invoke-direct {v9, v3, v8, v14, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_12
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    const/4 v8, 0x0

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f1408c0

    invoke-direct {v9, v3, v8, v14, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_e
    sget-object v3, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v0, v7}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlinx/datetime/Instant;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v2, v9, v7}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->r:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    if-eqz v2, :cond_13

    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;->d:Ljava/lang/String;

    iget-object v14, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;->a:Ljava/util/List;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;->b:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;->c:Z

    invoke-direct {v7, v9, v14, v8, v2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    move-object/from16 v30, v7

    goto :goto_f

    :cond_13
    const/16 v30, 0x0

    :goto_f
    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->q:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    const-string v7, ""

    if-eqz v2, :cond_18

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;->b:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;

    if-eqz v8, :cond_14

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;->b:Ljava/lang/String;

    goto :goto_10

    :cond_14
    const/4 v9, 0x0

    :goto_10
    if-eqz v8, :cond_15

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;->a:Lkotlinx/datetime/Instant;

    if-eqz v8, :cond_15

    sget-object v14, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v20, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v8, v8, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v29, v5

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-static {v3, v14}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->m:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_12

    :catchall_0
    move-exception v0

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object/from16 v29, v5

    :goto_11
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_12

    :cond_15
    move-object/from16 v29, v5

    const/4 v0, 0x0

    :goto_12
    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;

    if-eqz v2, :cond_16

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;->b:Ljava/lang/String;

    goto :goto_13

    :cond_16
    const/4 v3, 0x0

    :goto_13
    if-eqz v2, :cond_17

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;->a:Ljava/lang/String;

    goto :goto_14

    :cond_17
    const/4 v2, 0x0

    :goto_14
    new-instance v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    invoke-direct {v5, v9, v0, v3, v2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v5

    goto :goto_15

    :cond_18
    move-object/from16 v29, v5

    const/16 v31, 0x0

    :goto_15
    if-eqz v6, :cond_1d

    iget-object v0, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    if-nez v2, :cond_19

    move-object/from16 v34, v7

    goto :goto_16

    :cond_19
    move-object/from16 v34, v2

    :goto_16
    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    if-eqz v5, :cond_1a

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->a:Ljava/lang/String;

    goto :goto_18

    :cond_1a
    const/4 v5, 0x0

    :goto_18
    if-nez v5, :cond_1b

    move-object v5, v7

    :cond_1b
    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v8, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1c
    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->a:Ljava/lang/String;

    iget-object v5, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->g:Ljava/lang/String;

    new-instance v32, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    move-object/from16 v33, v0

    move-object/from16 v36, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v37}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_1d
    const/16 v32, 0x0

    :goto_19
    if-eqz v6, :cond_1e

    iget-boolean v0, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->f:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    goto :goto_1a

    :cond_1e
    const/16 v32, 0x0

    :goto_1a
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->c:Ljava/lang/String;

    if-nez v0, :cond_1f

    move-object/from16 v33, v7

    goto :goto_1b

    :cond_1f
    move-object/from16 v33, v0

    :goto_1b
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;->c:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    invoke-direct {v3, v5, v6, v2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_20
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-ne v4, v0, :cond_21

    move-object/from16 v34, v1

    goto :goto_1d

    :cond_21
    const/16 v34, 0x0

    :goto_1d
    new-instance v14, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    const/16 v35, 0x0

    move-object/from16 v26, v14

    invoke-direct/range {v26 .. v35}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    move-object v1, v15

    const/4 v15, 0x0

    move-object v7, v11

    move-object v6, v12

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v19

    move-object/from16 v2, v23

    move-object/from16 v5, v24

    move-object/from16 v9, v25

    invoke-direct/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
