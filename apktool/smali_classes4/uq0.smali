.class public final synthetic Luq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;I)V
    .locals 0

    iput p4, p0, Luq0;->b:I

    iput-object p1, p0, Luq0;->c:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Luq0;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Luq0;->b:I

    iget-object v1, p0, Luq0;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    iget-object p0, p0, Luq0;->c:Lkotlin/jvm/functions/Function0;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;-><init>(Z)V

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;-><init>(Z)V

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
