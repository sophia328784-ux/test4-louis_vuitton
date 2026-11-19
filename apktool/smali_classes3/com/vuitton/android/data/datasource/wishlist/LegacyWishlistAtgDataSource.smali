.class public final Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;",
        "",
        "Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;",
        "legacyWishlistApi",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
        "Companion",
        "data"
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
.field public final a:Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;

.field public final b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;->a:Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;

    iget v2, v1, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;->d:I

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;-><init>(Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v10, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v10, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wishlist/share?salesforce_id=[USER_ID]"

    const-string v4, "[USER_ID]"

    move-object/from16 v5, p5

    invoke-static {v2, v4, v5}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p6

    check-cast v4, Ljava/lang/Iterable;

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object v9

    iput v3, v10, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$shareWishlistContent$1;->d:I

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;->a:Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;

    const-string v4, "application/x-www-form-urlencoded"

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, v0

    invoke-interface/range {v2 .. v10}, Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;->shareProductFromWishList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast v0, Lcom/vuitton/android/data/dto/wishlist/atg/ShareProductFromWishListResultDto;

    iget-boolean p0, v0, Lcom/vuitton/android/data/dto/wishlist/atg/ShareProductFromWishListResultDto;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
