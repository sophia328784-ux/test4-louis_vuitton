.class final Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.redirectlink.DeepLinkHandler$dispatchLvDeepLinks$2"
    f = "DeepLinkHandler.kt"
    l = {
        0x6f,
        0x73,
        0x74,
        0x75,
        0x76,
        0x77,
        0x78,
        0x79
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Landroid/net/Uri;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->e:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->f:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->f:Z

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->e:Landroid/net/Uri;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Landroid/net/Uri;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->e:Landroid/net/Uri;

    invoke-direct {p1, v2, v4, v3}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    invoke-static {v0, v3, v3, p1, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p1, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->a:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    iget-object v0, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->h:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;

    iget-object v6, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->f:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    iget-object v7, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->g:Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;

    invoke-virtual {p1, v4}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->b(Landroid/net/Uri;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object p1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz p1, :cond_2b

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    iput v10, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    iget-object v4, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->d:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;

    if-eqz v5, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_0
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    if-eqz v5, :cond_1

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;->b:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;

    if-eqz v5, :cond_2

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    if-eqz v5, :cond_3

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_3
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToStoreLocator;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToStoreLocator;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_4
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;

    if-eqz v5, :cond_5

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_5
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;

    if-eqz v5, :cond_6

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, v8, v9, v3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_6
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;

    if-eqz v5, :cond_7

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;

    iget-object v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_7
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    if-eqz v5, :cond_8

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;->b:Landroid/net/Uri;

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->e(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_8
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;

    if-eqz v5, :cond_9

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;

    iget-object v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_9
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;

    if-eqz v5, :cond_a

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_a
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;

    if-eqz v5, :cond_b

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;

    iget-object v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_b
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAICompanion;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAICompanion;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_c
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_d
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPrivacyPolicyFromDeepLink;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPrivacyPolicyFromDeepLink;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_e
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNotificationsPreferencesFromDeepLink;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNotificationsPreferencesFromDeepLink;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    invoke-direct {p0, v3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_10
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCart;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCart;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_11
    sget-object v5, Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_12
    instance-of v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;

    if-eqz v5, :cond_13

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;

    iget-object v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_13
    instance-of v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;

    if-nez v4, :cond_2a

    instance-of v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Plp;

    if-nez v4, :cond_2a

    instance-of v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;

    if-eqz v4, :cond_14

    goto/16 :goto_5

    :cond_14
    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    instance-of v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;

    if-nez v4, :cond_2a

    instance-of v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;

    if-nez v4, :cond_2a

    instance-of v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    if-eqz v4, :cond_15

    goto/16 :goto_5

    :cond_15
    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_16
    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->d:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->LVPASS_QRCODE:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    invoke-direct {v2, p1, v3}, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;-><init>(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    goto :goto_0

    :cond_17
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of p1, v2, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    if-nez p1, :cond_18

    goto :goto_1

    :cond_18
    move-object v2, v3

    :cond_19
    :goto_1
    iput-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLVPassQRCode;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLVPassQRCode;

    goto :goto_2

    :cond_1a
    new-instance p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    invoke-direct {p1, v3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1b
    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v2, p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    goto/16 :goto_5

    :cond_1c
    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->f:Z

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "my_orders"

    const-string v6, "order_list_opened"

    const-string v7, "my_orders"

    const-string v8, "long_press"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_1d
    invoke-virtual {v2, p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    goto/16 :goto_5

    :cond_1e
    instance-of v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;

    if-eqz v0, :cond_1f

    invoke-virtual {v2, p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    goto/16 :goto_5

    :cond_1f
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v2, p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    goto/16 :goto_5

    :cond_20
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    instance-of v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;

    if-nez v0, :cond_28

    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_4

    :cond_21
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    instance-of v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;

    if-nez v0, :cond_26

    instance-of v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;

    if-eqz v0, :cond_22

    goto :goto_3

    :cond_22
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {v2, p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    goto :goto_5

    :cond_23
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    if-eqz p0, :cond_25

    iget-object p0, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->j:Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;-><init>(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_24
    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->c:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    iget-object v3, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_25
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_26
    :goto_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-virtual {v2, v0, p1, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->c(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lcom/vuitton/android/presentation/link/models/ParsedLink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_27

    goto :goto_6

    :cond_27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :cond_28
    :goto_4
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-virtual {v2, v0, p1, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->c(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lcom/vuitton/android/presentation/link/models/ParsedLink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_29

    goto :goto_6

    :cond_29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :cond_2a
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_6
    if-ne p0, v1, :cond_47

    goto/16 :goto_d

    :cond_2b
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    sget-object v11, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->STORE_MODE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-object p1, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->k:Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    iput v9, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {p1, v4, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->a(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_47

    goto/16 :goto_d

    :cond_2c
    sget-object v11, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_SECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {v7, v4, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->b(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_47

    goto/16 :goto_d

    :cond_2d
    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ADVISOR_CURATION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {v7, v4, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->a(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_47

    goto/16 :goto_d

    :cond_2e
    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->POST_VISIT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {v7, v4, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->c(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_47

    goto/16 :goto_d

    :cond_2f
    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->LOGIN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "null"

    if-eqz v5, :cond_33

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_30

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v9, p1

    goto :goto_7

    :cond_30
    move-object v9, v3

    :goto_7
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v10, :cond_31

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->Companion:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    move-result-object v3

    :cond_31
    move-object v7, v3

    const/4 v8, 0x0

    const/4 v11, 0x2

    move-object v10, p0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_32

    goto :goto_8

    :cond_32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_8
    if-ne p0, v1, :cond_47

    goto/16 :goto_d

    :cond_33
    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REGISTER:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->Companion:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    move-result-object p1

    goto :goto_9

    :cond_34
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    :goto_9
    invoke-virtual {v6, p1, v3, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->c(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_35

    goto :goto_a

    :cond_35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_a
    if-ne p0, v1, :cond_47

    goto :goto_d

    :cond_36
    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ACTIVATE_ACCOUNT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    iput-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->c:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v9, :cond_37

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->Companion:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    move-result-object p1

    goto :goto_b

    :cond_37
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    :goto_b
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, p1, v0, p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->c(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_38

    goto :goto_c

    :cond_38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_c
    if-ne p0, v1, :cond_47

    :goto_d
    return-object v1

    :cond_39
    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_APPOINTMENTS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->d:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->OSA_MY_APPOINTMENT:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    invoke-direct {v1, p1, v3}, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;-><init>(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    goto :goto_e

    :cond_3a
    move-object v1, v3

    :goto_e
    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of p1, v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    if-nez p1, :cond_3b

    goto :goto_f

    :cond_3b
    move-object v1, v3

    :cond_3c
    :goto_f
    iput-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    if-eqz p1, :cond_3d

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAppointments;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAppointments;

    goto :goto_10

    :cond_3d
    new-instance p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    invoke-direct {p1, v3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;-><init>(Ljava/lang/String;)V

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_3e
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CHECKOUT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->i:Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v10, :cond_3f

    goto/16 :goto_13

    :cond_3f
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;->Companion:Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;->a()Lkotlin/enums/EnumEntries;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_11

    :cond_41
    move-object v5, v3

    :goto_11
    check-cast v5, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;

    if-nez v5, :cond_42

    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;->NOT_SUPPORTED:Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;

    :cond_42
    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;->NOT_SUPPORTED:Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;

    if-ne v5, v2, :cond_43

    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->d:Ljava/lang/String;

    const-string p1, "Payment method "

    const-string v2, " not supported."

    invoke-static {p1, v1, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_43
    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v0, p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->c:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "locale"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_12

    :cond_45
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;

    invoke-direct {v0, v4, p0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_46
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->d:Ljava/lang/String;

    const-string p1, "Checkout deep link ignored: missing locale for provider "

    const-string v2, "."

    invoke-static {p1, v1, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    :goto_13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
