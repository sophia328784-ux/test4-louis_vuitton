.class public final Lcom/vuitton/android/presentation/link/parsing/LinkParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/link/parsing/LinkParser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/parsing/LinkParser;",
        "",
        "Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;",
        "linkClassifier",
        "Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;",
        "passAppLinkConverter",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;",
        "webAppLinkBuilder",
        "<init>",
        "(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

.field public final b:Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

.field public final c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final d:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/link/parsing/LinkParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/link/parsing/LinkParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->b:Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p4, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->d:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    return-void
.end method

.method public static c(Landroid/net/Uri;)Lcom/vuitton/android/presentation/link/models/ParsedLink;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/vuitton/android/presentation/link/models/ParsedLink;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXPLORE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->c(Landroid/net/Uri;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->b:Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :cond_5
    :goto_2
    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->b(Landroid/net/Uri;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public final b(Landroid/net/Uri;)Lcom/vuitton/android/presentation/link/models/ParsedLink;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->NATIVE_STORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PORTAL_SLIDER:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2

    goto/16 :goto_6

    :cond_2
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->WEBVIEW:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->STORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_5

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->STORELOCATOR:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;

    return-object p0

    :cond_5
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CONNECTED:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_40

    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_LV:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->WISHLIST:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "skuid"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v0, v2, v1}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    const-string v0, "date"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    :cond_a
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;

    return-object p0

    :cond_b
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->LVPASS_QRCODE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;

    return-object p0

    :cond_c
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PRIVACY_SETTINGS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;

    return-object p0

    :cond_d
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;

    return-object p0

    :cond_e
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_ORDERS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ORDER_DETAIL:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v1, :cond_f

    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_f
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;

    return-object p0

    :cond_10
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->GDPR:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;

    return-object p0

    :cond_11
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CERTIFICATES:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CERTIFICATES_LIST:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;

    return-object p0

    :cond_12
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ACTIVATION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;

    return-object p0

    :cond_13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->DIAMONDS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->FORM:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;

    return-object p0

    :cond_14
    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_15

    goto/16 :goto_6

    :cond_15
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_16
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_17

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;

    return-object p0

    :cond_17
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXCLUSIVE_CATEGORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_18

    goto/16 :goto_6

    :cond_18
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_19
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXCLUSIVE_DETAIL:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1a

    goto/16 :goto_6

    :cond_1a
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1b
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->TRAVELS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PAIRING_V2:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1d

    goto/16 :goto_6

    :cond_1d
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, v0, v2, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1e
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATEGORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_MEN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_WOMEN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_PRODUCT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto/16 :goto_4

    :cond_1f
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->FEED:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->FEED_DISCOVER:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->DISCOVER:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_20
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->FEED_FOR_YOU:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    sget-object p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->FOR_YOU:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->b()Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_21
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXPLORE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {p1}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->c(Landroid/net/Uri;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object p0

    return-object p0

    :cond_22
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PRIVACY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;

    return-object p0

    :cond_23
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PREFERENCE_CENTER:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;

    return-object p0

    :cond_24
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AUTHENTICATE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x49eca1c7

    if-eq p1, v0, :cond_29

    const v0, 0x32aff4

    if-eq p1, v0, :cond_27

    const v0, 0x61188c3

    if-eq p1, v0, :cond_25

    goto :goto_3

    :cond_25
    const-string p1, "kakao"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_3

    :cond_26
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;

    return-object p0

    :cond_27
    const-string p1, "line"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_3

    :cond_28
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;

    return-object p0

    :cond_29
    const-string p1, "google"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;

    return-object p0

    :cond_2a
    :goto_3
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;

    return-object p0

    :cond_2b
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->SERVICES:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_SECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_CREATE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;

    return-object p0

    :cond_2c
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;

    return-object p0

    :cond_2d
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_SECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_CREATE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;

    return-object p0

    :cond_2e
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_APPOINTMENTS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2f

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    move-object v3, p0

    :cond_2f
    new-instance p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;

    invoke-direct {p0, v3}, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_30
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ORDER_CONFIRMATION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    new-instance p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    const-string v0, "ret_url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_31
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CART:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;

    return-object p0

    :cond_32
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AUDIOGUIDE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_33

    goto/16 :goto_6

    :cond_33
    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;

    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_34
    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AI_COMPANION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;

    return-object p0

    :cond_35
    :goto_4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "theme"

    if-eqz p0, :cond_3a

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_36

    goto/16 :goto_6

    :cond_36
    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_PRODUCT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_40

    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_37
    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATEGORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_40

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_38
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PRODUCT_LIST:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;-><init>(Landroid/net/Uri;)V

    return-object p0

    :cond_39
    new-instance v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, v2, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3a
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_PRODUCT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_40

    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3b
    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATEGORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_40

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3c
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_MEN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG_WOMEN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    :cond_3d
    new-instance p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    const-string v0, ""

    :cond_3e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3f
    :goto_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->d:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_41

    :cond_40
    :goto_6
    return-object v3

    :cond_41
    new-instance p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
