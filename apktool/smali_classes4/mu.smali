.class public final synthetic Lmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;I)V
    .locals 0

    iput p2, p0, Lmu;->b:I

    iput-object p1, p0, Lmu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lmu;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    iget-object p0, p0, Lmu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;->a(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;->a(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->i:Ljava/util/List;

    if-eqz p0, :cond_8

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->p:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz p0, :cond_8

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->a:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz p0, :cond_8

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->c:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
