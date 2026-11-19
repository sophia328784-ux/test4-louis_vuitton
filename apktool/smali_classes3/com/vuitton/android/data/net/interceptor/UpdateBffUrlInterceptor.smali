.class public final Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\tB!\u0008\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lkotlin/Function0;",
        "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
        "appConfigProvider",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
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
.field public final a:Lkotlin/jvm/functions/Function0;

.field public final b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
            ">;",
            "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iget-object v1, p0, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v3, v2, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-static {v3, p0}, Lcom/vuitton/android/data/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v2, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    iget-object v2, v2, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    const-string v3, "lv-app-configuration"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "publication/dispatch"

    invoke-static {v2, p0, v4}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string p0, "api/user/"

    invoke-static {v2, p0, v4}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    const-string v3, "api/preview/"

    if-eqz p0, :cond_3

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "preview/"

    const-string v5, ""

    invoke-static {v1, p0, v5}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :try_start_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    const-string p0, "http"

    const/4 v5, 0x6

    invoke-static {v2, p0, v4, v4, v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    invoke-static {v2, v3, v4, v4, v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "api/"

    :goto_1
    invoke-static {v2, v3, v4, v4, v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    if-eq p0, v7, :cond_5

    if-eq v5, v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    const-string p0, "Cannot find substring used for replacing"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    :goto_4
    check-cast v1, Lkotlin/Result;

    iget-object p0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    check-cast p0, Ljava/lang/String;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, v0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    new-instance v0, Lokhttp3/Request;

    invoke-direct {v0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    goto :goto_5

    :cond_7
    sget-object p0, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    const-string v2, "UpdateBffUrlInterceptor"

    invoke-virtual {p0, v2}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const-string v2, "Unable to replace the base url"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Ltimber/log/Timber$Forest;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_8
    throw p0

    :cond_9
    :goto_6
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
