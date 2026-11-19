.class public abstract Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->m:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->m:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;

    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->l:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->m:I

    const/4 v6, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->k:Ljava/lang/String;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->j:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->i:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->h:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->g:Ljava/lang/String;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->f:Ljava/lang/String;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->e:Ljava/lang/String;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->b:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    :goto_1
    move-object/from16 v25, v11

    move-object/from16 v30, v13

    goto/16 :goto_9

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v8

    :goto_2
    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_5
    move-object v9, v8

    :goto_3
    check-cast v9, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v9, :cond_7

    iget-object v5, v9, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object v2, v5

    goto :goto_4

    :cond_6
    move-object v2, v8

    :cond_7
    :goto_4
    if-nez v2, :cond_8

    move-object v11, v7

    goto :goto_5

    :cond_8
    move-object v11, v2

    :goto_5
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->e:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->a(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    move-result-object v5

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v9, v8

    :goto_6
    if-nez v9, :cond_a

    move-object v9, v7

    :cond_a
    if-eqz v0, :cond_b

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    goto :goto_7

    :cond_b
    move-object v10, v8

    :goto_7
    if-nez v10, :cond_c

    move-object v10, v7

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    goto :goto_8

    :cond_d
    move-object v0, v8

    :goto_8
    if-nez v0, :cond_e

    move-object v0, v7

    :cond_e
    move-object/from16 v12, p5

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->b:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    move-object/from16 v13, p7

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->c:Ljava/lang/String;

    move-object/from16 v14, p0

    iput-object v14, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v11, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->f:Ljava/lang/String;

    iput-object v10, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->g:Ljava/lang/String;

    iput-object v9, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->h:Ljava/lang/String;

    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->i:Ljava/lang/String;

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->j:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iput-object v2, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->k:Ljava/lang/String;

    iput v6, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->m:I

    move-object/from16 v15, p6

    invoke-interface {v15, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_f

    return-object v4

    :cond_f
    move-object v15, v14

    move-object v14, v2

    move-object v2, v3

    move-object v3, v12

    move-object v12, v15

    move-object/from16 v19, v0

    move-object/from16 v16, v1

    move-object v15, v5

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_1

    :goto_9
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v12, v1, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v21

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v12, v1, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v23

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v12, v1, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v24

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v26, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->b:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    :cond_10
    if-nez v8, :cond_11

    move-object/from16 v29, v7

    goto :goto_a

    :cond_11
    move-object/from16 v29, v8

    :goto_a
    new-instance v13, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, v25

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v31}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method public static final b(ZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v3, p6

    move-object/from16 v5, p8

    if-eqz p0, :cond_9

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object/from16 v6, p5

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_1
    move-object v7, v4

    :goto_0
    check-cast v7, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v7, :cond_3

    iget-object v6, v7, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v1, v6

    goto :goto_1

    :cond_2
    move-object v1, v4

    :cond_3
    :goto_1
    const-string v6, ""

    if-nez v1, :cond_4

    move-object/from16 v19, v6

    goto :goto_2

    :cond_4
    move-object/from16 v19, v1

    :goto_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode$Companion;

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTRY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v7, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v14, v1

    goto :goto_3

    :cond_5
    move-object v14, v4

    :goto_3
    if-nez v14, :cond_6

    return-object v4

    :cond_6
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->e:Ljava/lang/String;

    invoke-static/range {p7 .. p7}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->a(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    move-result-object v9

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v13

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v17

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v18

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v20, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->b:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    :cond_7
    if-nez v4, :cond_8

    move-object/from16 v23, v6

    goto :goto_4

    :cond_8
    move-object/from16 v23, v4

    :goto_4
    const/16 v25, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v19

    move-object/from16 v24, p10

    invoke-direct/range {v7 .. v25}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_9
    move-object/from16 v8, p11

    check-cast v8, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_a

    return-object v0

    :cond_a
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    return-object v0
.end method
