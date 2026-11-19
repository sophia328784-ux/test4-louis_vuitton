.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;
    .locals 4

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Unknown section type: "

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;
    .locals 26

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/forms/FormField;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/forms/FormField;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    check-cast v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v6, :cond_4

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    iget v6, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    iget v6, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    if-ne v6, v7, :cond_8

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->b:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v6, v2

    :goto_4
    invoke-static {v6, v1, v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->e()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->b:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v5, v2

    :goto_5
    invoke-static {v5, v1, v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_6
    move v14, v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    :goto_7
    iget-boolean v9, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->b:Z

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v10

    iget v11, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    iget v12, v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    if-eqz v14, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v3, v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v3, v4, :cond_9

    new-instance v3, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f14042a

    const/4 v6, 0x2

    invoke-direct {v4, v5, v2, v6, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140a31

    invoke-direct {v4, v5, v2, v6, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v24, 0x0

    const/16 v25, 0x3e7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v15 .. v25}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v15

    :cond_9
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move-object v13, v0

    goto :goto_9

    :cond_b
    move-object v13, v3

    :goto_9
    new-instance v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    invoke-direct/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;IILjava/util/List;Z)V

    return-object v8

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/forms/FormField;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormField;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v3

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->o:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel$Companion;

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormField;->b:Z

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormField;->e:Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;

    instance-of v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldBoolean;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldBoolean;

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldBoolean;->a:Z

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;-><init>(Z)V

    goto/16 :goto_9

    :cond_0
    instance-of v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;

    const/16 v6, 0xa

    if-eqz v4, :cond_4

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v4

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {p0, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;

    iget-object v10, v9, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;->a:Ljava/lang/String;

    iget-object v11, v9, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;->c:Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    if-eqz v11, :cond_1

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v5

    :goto_1
    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;->b:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;

    invoke-direct {v9, v10, v12, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;

    invoke-direct {p0, v4, v8, v7, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V

    move-object v4, p0

    goto/16 :goto_9

    :cond_4
    instance-of v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentRemoteEnum;

    if-eqz v4, :cond_5

    new-instance v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentRemoteEnum;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentRemoteEnum;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v6

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentRemoteEnum;->b:Ljava/lang/String;

    invoke-direct {v8, p0, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v6, v7, v8}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V

    goto/16 :goto_9

    :cond_5
    instance-of v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;

    if-eqz v4, :cond_8

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;->b:Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    if-eqz p0, :cond_7

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object p0

    goto :goto_4

    :cond_7
    move-object p0, v5

    :goto_4
    new-instance v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldEnumUiModel;

    invoke-direct {v4, p0, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldEnumUiModel;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;Ljava/util/List;)V

    goto/16 :goto_9

    :cond_8
    instance-of v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;

    if-eqz v4, :cond_a

    new-instance v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;->b:Ljava/lang/String;

    if-nez p0, :cond_9

    const-string p0, ""

    :cond_9
    move-object v8, p0

    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt$WhenMappings;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, p0, v4

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v5

    :pswitch_0
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->c:I

    :goto_5
    move v9, v4

    goto :goto_6

    :pswitch_1
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->c:I

    goto :goto_5

    :pswitch_2
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    goto :goto_5

    :pswitch_3
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    goto :goto_5

    :pswitch_4
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    goto :goto_5

    :pswitch_5
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->h:I

    goto :goto_5

    :pswitch_6
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->e:I

    goto :goto_5

    :pswitch_7
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->f:I

    goto :goto_5

    :pswitch_8
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->c:I

    goto :goto_5

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p0, p0, v4

    packed-switch p0, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    return-object v5

    :pswitch_9
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->f:Landroidx/compose/ui/autofill/ContentType;

    :goto_7
    move-object v10, p0

    goto :goto_8

    :pswitch_a
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->d:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_b
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->r:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_c
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->B:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_d
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->r:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_e
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->p:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_f
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->h:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_10
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->w:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_11
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->v:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_12
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->o:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_13
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->F:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_14
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->q:Landroidx/compose/ui/autofill/ContentType;

    goto :goto_7

    :pswitch_15
    move-object v10, v5

    :goto_8
    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroidx/compose/ui/autofill/ContentType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v6

    goto :goto_9

    :cond_a
    instance-of v4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldReadOnlyEnum;

    if-eqz v4, :cond_b

    new-instance v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyEnumUiModel;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldReadOnlyEnum;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldReadOnlyEnum;->a:Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyEnumUiModel;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V

    :goto_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, p0, v6

    const/4 v7, 0x2

    const v8, 0x7f140d4b

    packed-switch v6, :pswitch_data_2

    invoke-static {}, Lv40;->g()V

    return-object v5

    :pswitch_16
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e6e

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_17
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e35

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_18
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f14041e

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_19
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140423

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1a
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d53

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1b
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d6a

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1c
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e18

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1d
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e13

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1e
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e19

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1f
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_20
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_21
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e17

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_22
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140dc4

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_23
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140db6

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_24
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140db5

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_25
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140db4

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_26
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140db3

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_27
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f14108e

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_28
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141080

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_29
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f14108d

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_2a
    sget-object v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    goto/16 :goto_a

    :pswitch_2b
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141087

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_2c
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141088

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_2d
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141085

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_2e
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141086

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_2f
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141089

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_30
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d9d

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_31
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d22

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_32
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f1406bb

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_33
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e45

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_34
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140dac

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_35
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140dbe

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_36
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d5c

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_37
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140dad

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_38
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140dab

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :pswitch_39
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140daa

    invoke-direct {v6, v8, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_3

    invoke-static {}, Lv40;->g()V

    return-object v5

    :pswitch_3a
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f14096a

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_3b
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140a32

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_3c
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140a2f

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_3d
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140a30

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_3e
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140a2d

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_3f
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140a2e

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_40
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140d1a

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_41
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140969

    invoke-direct {p0, v0, v5, v7, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :pswitch_42
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    const/4 v11, 0x0

    const/16 v12, 0xf30

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZZI)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->h(Z)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_15
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_15
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_42
        :pswitch_3b
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_3a
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BOOKING_PERSONAL_DATA_COLLECTION_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BOOKING_MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LEGACY_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CONFIRM_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->VAT_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STREET_NUMBER:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STREET:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_BLOC:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->DESCRIPTION:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTRY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1e
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_1f
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BRANCH_ID:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BIRTHDATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_21
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_22
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(Lcom/vuitton/foundation/model/domain/model/forms/Form;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/Form;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
