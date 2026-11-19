.class public final synthetic Lvd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;I)V
    .locals 0

    iput p2, p0, Lvd0;->b:I

    iput-object p1, p0, Lvd0;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lvd0;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v0, Lvd0;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->i(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v4, v1

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->u:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->j()Z

    move-result v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/ProfileFormMapperKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;ZZZ)Ljava/lang/Object;

    move-result-object v3

    :cond_1
    return-object v3

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->u:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    move-object v9, v7

    goto :goto_0

    :cond_2
    move-object v9, v3

    :goto_0
    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v8, v3

    :goto_1
    invoke-static {v5, v7, v8, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v8, v3

    :goto_2
    invoke-static {v5, v7, v8, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_5

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v8, v3

    :goto_3
    invoke-static {v5, v7, v8, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v12

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v8, v3

    :goto_4
    invoke-static {v5, v7, v8, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v13

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_7

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v8, v3

    :goto_5
    if-nez v8, :cond_8

    const-string v8, ""

    :cond_8
    invoke-static {v5, v7, v8}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_6

    :cond_a
    move-object v8, v3

    :goto_6
    check-cast v8, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v8, :cond_b

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    if-eqz v6, :cond_b

    move-object v14, v6

    goto :goto_7

    :cond_b
    move-object v14, v7

    :goto_7
    if-eqz v0, :cond_c

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    move-object v15, v6

    goto :goto_8

    :cond_c
    move-object v15, v3

    :goto_8
    if-eqz v0, :cond_d

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_9

    :cond_d
    move-object/from16 v16, v3

    :goto_9
    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->VAT_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_e

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object v6, v3

    :goto_a
    invoke-static {v5, v1, v6, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v17

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BRANCH_ID:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    goto :goto_b

    :cond_f
    move-object v0, v3

    :goto_b
    invoke-static {v5, v1, v0, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v18

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    const/4 v1, 0x6

    invoke-static {v5, v0, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v5, v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v5, v6, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_13

    if-eqz v2, :cond_13

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v6}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object v3, v5

    :cond_11
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    if-nez v3, :cond_12

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    :cond_12
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-direct {v2, v0, v3, v1}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    move-object/from16 v19, v2

    goto :goto_c

    :cond_13
    move-object/from16 v19, v3

    :goto_c
    new-instance v8, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;

    invoke-direct/range {v8 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V

    return-object v8

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->VAT_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    goto :goto_d

    :cond_14
    move-object v5, v3

    :goto_d
    invoke-static {v0, v7, v5, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v1, v6, v0, v3, v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/builder/UpdateProfileInfoParamBuilderKt;->a(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BRANCH_ID:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v5, :cond_15

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    goto :goto_e

    :cond_15
    move-object v5, v3

    :goto_e
    invoke-static {v0, v7, v5, v4, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/builder/UpdateProfileInfoParamBuilderKt;->a(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
