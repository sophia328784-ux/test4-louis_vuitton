.class public final synthetic Lnl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;I)V
    .locals 0

    iput p2, p0, Lnl0;->b:I

    iput-object p1, p0, Lnl0;->c:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnl0;->b:I

    iget-object p0, p0, Lnl0;->c:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->X0(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->q0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->Z(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
