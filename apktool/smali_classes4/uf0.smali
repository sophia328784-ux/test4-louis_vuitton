.class public final synthetic Luf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p5, p0, Luf0;->b:I

    iput-object p1, p0, Luf0;->c:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iput-object p2, p0, Luf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iput-object p3, p0, Luf0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Luf0;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Luf0;->b:I

    iget-object v1, p0, Luf0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Luf0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Luf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object p0, p0, Luf0;->c:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_0
    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->a:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoCtaEvent;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->PERSONAL_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_2
    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialCtaEvent;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->CREDENTIALS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_4
    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->b()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountCtaEvent;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->ACCOUNT_ACTIVATION:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_6
    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->c:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoCtaEvent;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->BIRTH_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
