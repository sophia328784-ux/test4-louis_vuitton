.class public final synthetic Le01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;I)V
    .locals 0

    iput p2, p0, Le01;->b:I

    iput-object p1, p0, Le01;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Le01;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    iget-object p0, p0, Le01;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;->a(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->h:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;->a(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a:Ljava/lang/String;

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
