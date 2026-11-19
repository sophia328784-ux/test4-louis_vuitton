.class public final Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;",
        "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "encryptedSharedPreferences",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "schedulersProvider",
        "<init>",
        "(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
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
.field public final a:Ldagger/Lazy;

.field public final b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->a:Ldagger/Lazy;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;

    iget v3, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->i:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    const-string v5, ""

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :pswitch_0
    iget-object v0, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object v0, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->h:Ljava/lang/String;

    iget-object v3, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->g:Ljava/lang/String;

    iget-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    move-object v10, v2

    move-object v13, v3

    move-object v12, v4

    move-object v11, v5

    goto/16 :goto_9

    :pswitch_2
    iget-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->g:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->f:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->e:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;->a:Ljava/lang/String;

    move-object/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v17

    goto/16 :goto_8

    :pswitch_3
    iget-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->e:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, v4

    move-object v4, v7

    goto :goto_4

    :pswitch_5
    iget-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    goto/16 :goto_a

    :cond_1
    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    iput-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    goto/16 :goto_a

    :cond_3
    :goto_3
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v5

    :cond_4
    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    iput-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    iput-object v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    const/4 v7, 0x3

    iput v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_5

    goto/16 :goto_a

    :cond_5
    move-object v8, v1

    move-object v1, v7

    :goto_4
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v7, v5

    goto :goto_5

    :cond_6
    move-object v7, v1

    :goto_5
    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    iput-object v8, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    iput-object v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    iput-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->e:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto/16 :goto_a

    :cond_7
    :goto_6
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    move-object v5, v1

    :goto_7
    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    iput-object v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    iput-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->e:Ljava/lang/String;

    iput-object v5, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->f:Ljava/lang/String;

    iput-object v8, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->g:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    goto :goto_a

    :cond_9
    move-object/from16 v17, v8

    move-object v8, v4

    move-object/from16 v4, v17

    :goto_8
    check-cast v1, Ljava/lang/String;

    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    iput-object v7, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    iput-object v8, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->e:Ljava/lang/String;

    iput-object v5, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->f:Ljava/lang/String;

    iput-object v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->g:Ljava/lang/String;

    iput-object v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->h:Ljava/lang/String;

    const/4 v6, 0x6

    iput v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_a

    :cond_a
    move-object v14, v1

    move-object v13, v4

    move-object v12, v5

    move-object v10, v7

    move-object v11, v8

    move-object v1, v0

    :goto_9
    move-object v15, v1

    check-cast v15, Lkotlinx/datetime/Instant;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_b
    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->b:Ljava/lang/String;

    iput-object v6, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->c:Ljava/lang/String;

    iput-object v1, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->d:Ljava/lang/String;

    const/4 v4, 0x7

    iput v4, v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getToken$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    :goto_a
    return-object v3

    :cond_c
    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    :goto_b
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_c

    :cond_d
    move-object v5, v1

    :goto_c
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    invoke-direct {v1, v0, v5}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_e
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$clearToken$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$saveToken$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessToken$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p1
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlinx/datetime/Instant;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p1
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDRefreshToken$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p1
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSFIDUserId$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p1
.end method

.method public final h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASAccessToken$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p1
.end method

.method public final i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSLASUserId$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p1
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$2$1;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl$getSotToken$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;->a:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;-><init>(Ljava/lang/String;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;-><init>(Ljava/lang/String;)V

    :goto_4
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;->a:Ljava/lang/String;

    return-object p0

    :cond_6
    throw p1
.end method
