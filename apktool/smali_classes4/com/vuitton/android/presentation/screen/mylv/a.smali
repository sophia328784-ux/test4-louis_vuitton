.class public final synthetic Lcom/vuitton/android/presentation/screen/mylv/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/a;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/a;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->r:Lkotlin/Lazy;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x2

    if-eq v3, v11, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v8, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/content/Context;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->ab()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v1

    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const/4 v5, 0x0

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v1, :cond_17

    const v1, -0x152aa03a

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink;

    if-nez v0, :cond_1

    const v0, -0x1528b858

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_1
    const v1, -0x1528b857

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "list"

    if-eqz v1, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v6, v5, v5}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    instance-of v1, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    invoke-direct {v1, v13, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "rootScreen"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "shippingGroupId"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v12, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;->p:Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;->b:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1, v13, v0, v4}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    invoke-static {v0, v13, v5, v11}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;->q:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0}, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;->b:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_c
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->TRAVELS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    iget-object v6, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;->d:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PAIRING_V2"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_e
    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v5, v4}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;->a(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_f
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_10

    const v0, -0x73567a79

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_10
    const v1, -0x73567a78

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_11

    if-ne v6, v10, :cond_12

    :cond_11
    new-instance v6, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$onCreate$1$1$1$1$1$1;

    invoke-direct {v6, v13, v0, v5}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$onCreate$1$1$1$1$1$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v0, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_13

    move-object v0, v4

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_13
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_4

    :goto_5
    const-class v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_14

    if-ne v1, v10, :cond_15

    :cond_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$onCreate$1$1$2$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_15
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x30

    invoke-static {v7, v9, v1, v8, v0}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_b

    :cond_16
    invoke-static {v3}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_17
    const v1, -0x151eeb85

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink;

    if-nez v0, :cond_18

    const v0, -0x151e2a61

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_18
    const v1, -0x151e2a60

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v5, v4}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;->a(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    :cond_19
    move-object v0, v5

    :goto_6
    if-nez v0, :cond_1a

    const v0, 0x1b7ba7b0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_1a
    const v1, 0x1b7ba7b1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_1b

    if-ne v7, v10, :cond_1c

    :cond_1b
    new-instance v7, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$onCreate$1$1$3$1$1$1;

    invoke-direct {v7, v13, v0, v5}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$onCreate$1$1$3$1$1$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_8
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_1d

    if-ne v7, v10, :cond_1e

    :cond_1d
    new-instance v7, Lxd0;

    invoke-direct {v7, v2, v13, v9}, Lxd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;Landroid/content/Context;I)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_1f

    if-ne v7, v10, :cond_20

    :cond_1f
    new-instance v7, Lxd0;

    invoke-direct {v7, v2, v13, v4}, Lxd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;Landroid/content/Context;I)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object v12, v7

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v3, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_21

    move-object v3, v4

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    :goto_9
    move-object v7, v3

    goto :goto_a

    :cond_21
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_9

    :goto_a
    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    move-object v4, v9

    const/4 v9, 0x6

    move-object v3, v10

    const/16 v10, 0x8

    const/4 v6, 0x0

    move-object v5, v12

    move-object v12, v3

    move-object v3, v1

    invoke-static/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v7

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_22

    if-ne v1, v12, :cond_23

    :cond_22
    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$onCreate$1$1$4$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_23
    check-cast v1, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_24

    if-ne v3, v12, :cond_25

    :cond_24
    new-instance v3, Lxd0;

    invoke-direct {v3, v2, v13, v11}, Lxd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;Landroid/content/Context;I)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_26

    if-ne v4, v12, :cond_27

    :cond_26
    new-instance v4, Lxd0;

    const/4 v0, 0x3

    invoke-direct {v4, v2, v13, v0}, Lxd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;Landroid/content/Context;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v14, 0xc00

    const/16 v15, 0x631

    move-object v13, v8

    move-object v8, v3

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v5, v9

    move-object v9, v4

    move-object v4, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_28
    invoke-static {v3}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_29
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
