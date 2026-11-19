.class public final synthetic Lmf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;I)V
    .locals 0

    iput p2, p0, Lmf0;->b:I

    iput-object p1, p0, Lmf0;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmf0;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Lmf0;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    new-instance v1, Lck;

    const/16 p1, 0x13

    invoke-direct {v1, p0, p1}, Lck;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lss;

    const/16 p1, 0x8

    invoke-direct {v2, p0, p1}, Lss;-><init>(Ljava/lang/Object;I)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    new-instance v2, Lx60;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;->a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->v:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
