.class final Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;
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
    c = "com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl$saveToken$2$1"
    f = "TwistTokenDataSourceImpl.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

    iget-object v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->a:Ldagger/Lazy;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->b:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    const-string v0, "PREF_OAUTH_ACCESS_TOKEN_SLAS"

    if-eqz p1, :cond_3

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "PREF_OAUTH_USID_SLAS"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_3
    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz p1, :cond_5

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "PREF_OAUTH_TOKEN_SOT"

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->f:Lkotlinx/datetime/Instant;

    if-eqz p0, :cond_4

    const-string v0, "PREF_SFID_ACCESS_TOKEN_EXPIRATION"

    invoke-virtual {p0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method
