.class final synthetic Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-ne v1, v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a()Z

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->G:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->H:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->I:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;->TWO_EXTRA:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;

    return-object p0

    :cond_4
    :goto_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v2, :cond_5

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a()Z

    move-result p0

    if-ne p0, v3, :cond_6

    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;->ONE_EXTRA:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;

    return-object p0

    :cond_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;->NONE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;

    return-object p0
.end method
