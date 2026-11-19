.class final synthetic Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity$onCreate$1$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$CloseEdit;->a:Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$CloseEdit;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;->d6(Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
