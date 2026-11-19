.class public final synthetic Lsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;I)V
    .locals 0

    iput p2, p0, Lsz;->b:I

    iput-object p1, p0, Lsz;->c:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsz;->b:I

    iget-object p0, p0, Lsz;->c:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;->tc()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;->T7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
