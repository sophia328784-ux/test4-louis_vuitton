.class public final synthetic Lqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;I)V
    .locals 0

    iput p2, p0, Lqc;->b:I

    iput-object p1, p0, Lqc;->c:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqc;->b:I

    iget-object p0, p0, Lqc;->c:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "ADDRESS"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CURRENT_COUNTRY"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
