.class public final synthetic Ly4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;I)V
    .locals 0

    iput p2, p0, Ly4;->b:I

    iput-object p1, p0, Ly4;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ly4;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ly4;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    new-instance v2, Lw1;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, p1, v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;->a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->u:Ljava/util/List;

    invoke-static {v2, p1, v3}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-ne p1, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->u:Ljava/util/List;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->j()Z

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/ProfileFormMapperKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;ZZZ)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldTypeUiModelExtKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v2, p1, :cond_6

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v2, p1, :cond_6

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v2, p1, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    :cond_7
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
