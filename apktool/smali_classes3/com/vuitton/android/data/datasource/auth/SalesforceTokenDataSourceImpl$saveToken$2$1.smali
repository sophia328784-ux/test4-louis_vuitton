.class final Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;
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
    c = "com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl$saveToken$2$1"
    f = "SalesforceTokenDataSourceImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;->a:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "access_token"

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl$saveToken$2$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "refresh_token"

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "id"

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->d:Lkotlinx/datetime/Instant;

    const-string v0, "PREF_SFID_ACCESS_TOKEN_EXPIRATION"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
