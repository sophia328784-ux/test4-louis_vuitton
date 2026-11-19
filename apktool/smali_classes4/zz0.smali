.class public final synthetic Lzz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V
    .locals 0

    iput p2, p0, Lzz0;->b:I

    iput-object p1, p0, Lzz0;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lzz0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lzz0;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->I:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "IMAGE_RES"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    return-object v3

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "SUBTITLE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    return-object v3

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "TITLE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    return-object v3

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "MAX_STEPS"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v0, "CURRENT_STEP"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
