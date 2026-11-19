.class final Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainActivity;

.field public final synthetic c:Llb0;

.field public final synthetic d:Ljx;

.field public final synthetic e:Lkb0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Llb0;Ljx;Lkb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->b:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->c:Llb0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->d:Ljx;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->e:Lkb0;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect;

    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;

    const-string v3, "mainActivityRouter"

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->b:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    if-eqz v2, :cond_1

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/main/MainActivity;->E:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    if-eqz v0, :cond_0

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/main/MainActivity;->H:Landroidx/activity/result/ActivityResultLauncher;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;

    invoke-virtual {v0, v5, v2, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->a(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;)V

    goto/16 :goto_4

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_1
    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->c:Llb0;

    invoke-virtual {v0, v1}, Llb0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;->a:Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->d:Ljx;

    invoke-virtual {v0, v1}, Ljx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;

    if-eqz v2, :cond_7

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/main/MainActivity;->E:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    if-eqz v0, :cond_6

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;

    iget-object v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;->a:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;->b:Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->a()Lcom/vuitton/android/presentation/screen/authentication/LoginRedirectionType;

    move-result-object v3

    sget-object v6, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->b:Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->SERVICES:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->REDIRECTION_OSA_MY_APPOINTMENTS:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->REDIRECTION_OSA:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->REDIRECTION_REPAIR_DETAIL:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->REDIRECTION_REPAIR_CREATE:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->REDIRECTION_REPAIR_SECTION:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    goto :goto_0

    :pswitch_5
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->SERVICES:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    goto/16 :goto_4

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_5
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->MY_ACCOUNT:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_6
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_ORDER_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_7
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_PRIVACY_SETTINGS:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_8
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_LVPASS_QRCODE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_9
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_a
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_b
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_CATEGORY:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_c
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_d
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_e
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATES_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_f
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATES_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_10
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATES_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_11
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_WISH_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_12
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_MY_ORDERS:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_13
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_MY_PROFILE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    goto :goto_1

    :pswitch_14
    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->MY_ACCOUNT:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    goto/16 :goto_4

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_7
    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;

    if-eqz v2, :cond_13

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;

    instance-of v3, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2$1;->e:Lkb0;

    if-eqz v3, :cond_9

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->Companion:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab$Companion;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;

    iget-object v3, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->S1(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)V

    :cond_8
    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v0, v1, v4}, Lkb0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_9
    instance-of v3, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;

    if-eqz v3, :cond_a

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v0, v1, v4}, Lkb0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_a
    instance-of v3, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;

    if-eqz v3, :cond_b

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v0, v1, v4}, Lkb0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    instance-of v2, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;

    if-eqz v2, :cond_12

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;

    iget-object v3, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    instance-of v5, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;

    if-eqz v5, :cond_c

    goto/16 :goto_3

    :cond_c
    instance-of v5, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;

    if-eqz v5, :cond_d

    new-instance v6, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v7, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_PLP:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;

    iget-object v14, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;->c:Ljava/lang/String;

    const/16 v19, 0x77e

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v6 .. v20}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object v4, v6

    goto/16 :goto_3

    :cond_d
    instance-of v5, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;

    if-eqz v5, :cond_e

    new-instance v6, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v7, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_PRODUCT:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;

    iget-object v12, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->b:Ljava/lang/String;

    iget-boolean v13, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;->c:Z

    const/16 v19, 0xf9e

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v6 .. v20}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_e
    instance-of v5, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;

    if-eqz v5, :cond_f

    new-instance v6, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v7, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_SECTION:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;

    iget-object v15, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;->d:Ljava/lang/String;

    const/16 v19, 0x8fe

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v20}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_f
    instance-of v5, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;

    if-eqz v5, :cond_10

    new-instance v6, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v7, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_SKU_LIST:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;

    iget-object v11, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;->b:Ljava/util/List;

    const/16 v19, 0xfee

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v6 .. v20}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_10
    instance-of v2, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;

    if-eqz v2, :cond_11

    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v6, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->STORE_MODE:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;

    iget-object v7, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->b:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    const/16 v18, 0xff0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v5 .. v19}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v5

    :goto_3
    invoke-virtual {v0, v3, v4}, Lkb0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_11
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_12
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
