.class public final synthetic Lvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p4, p0, Lvz;->b:I

    iput-object p1, p0, Lvz;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lvz;->d:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iput-object p3, p0, Lvz;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lvz;->b:I

    iget-object v1, p0, Lvz;->e:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lvz;->d:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iget-object p0, p0, Lvz;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnForgetPasswordConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnForgetPasswordConfirmEvent;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnSendCodeCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnSendCodeCtaEvent;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_1
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
