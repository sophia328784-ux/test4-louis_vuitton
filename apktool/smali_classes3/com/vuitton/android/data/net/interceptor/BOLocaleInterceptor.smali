.class public final Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "Lkotlin/Function0;",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatchProvider",
        "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
        "appConfigProvider",
        "<init>",
        "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
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
.field public final a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;->a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iget-object v1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v2, v1, Lokhttp3/HttpUrl;->g:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v2, :cond_0

    sget-object v2, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Ljava/util/LinkedHashSet;-><init>(IF)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->i(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v6

    iget v7, v6, Lkotlin/ranges/IntProgression;->b:I

    iget v8, v6, Lkotlin/ranges/IntProgression;->c:I

    iget v6, v6, Lkotlin/ranges/IntProgression;->d:I

    if-lez v6, :cond_1

    if-le v7, v8, :cond_2

    :cond_1
    if-gez v6, :cond_3

    if-gt v8, v7, :cond_3

    :cond_2
    :goto_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-eq v7, v8, :cond_3

    add-int/2addr v7, v6

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v5, v1, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    iget-object v6, v1, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;->a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-static {v5, v7}, Lcom/vuitton/android/data/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v7, "locale"

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "clubs/sneakers/members"

    invoke-static {v8, v9, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object v8

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    const-string v7, "country"

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v2, 0x1

    if-eqz p0, :cond_5

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    if-ne p0, v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lgc;

    invoke-direct {p0, v6, v3}, Lgc;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lgc;

    invoke-direct {v9, v6, v2}, Lgc;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ll0;

    const/16 v11, 0x12

    invoke-direct {v10, v6, v5, v11}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v6, 0x3

    new-array v6, v6, [Lkotlin/jvm/functions/Function0;

    aput-object p0, v6, v3

    aput-object v9, v6, v2

    aput-object v10, v6, v4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    if-nez v8, :cond_8

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    move-object v8, p0

    :cond_8
    iget-object p0, v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    invoke-virtual {v8, v7, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    if-eqz v8, :cond_a

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0, v0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-virtual {v8}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    new-instance v0, Lokhttp3/Request;

    invoke-direct {v0, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    :cond_a
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
