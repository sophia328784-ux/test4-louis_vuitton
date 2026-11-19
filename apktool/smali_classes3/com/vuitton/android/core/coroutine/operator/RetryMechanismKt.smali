.class public abstract Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "core"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(IJLcom/vuitton/android/core/coroutine/operator/RetryMechanism;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;

    iget v3, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;

    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->j:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget v0, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->d:I

    iget v4, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->c:I

    iget-wide v8, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->e:J

    iget v10, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->b:I

    iget-object v11, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->g:Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->f:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v5, v0

    move-object v0, v2

    move v1, v6

    move-object v2, v13

    goto/16 :goto_b

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget v4, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->d:I

    iget v8, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->c:I

    iget-wide v9, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->e:J

    iget v11, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->b:I

    iget-object v0, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->g:Lkotlin/jvm/functions/Function1;

    iget-object v14, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->f:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-lt v0, v7, :cond_10

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    add-int/lit8 v4, v0, 0x1

    if-gt v7, v4, :cond_f

    move-wide/from16 v8, p1

    move-object v10, v1

    move-object v11, v2

    move v12, v4

    move v13, v7

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move v1, v0

    :goto_1
    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object v2, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->f:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    iput-object v4, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->g:Lkotlin/jvm/functions/Function1;

    iput-object v10, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v10, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v1, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->b:I

    iput-wide v8, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->e:J

    iput v13, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->c:I

    iput v12, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->d:I

    iput v7, v11, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    invoke-interface {v4, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_4

    goto/16 :goto_a

    :cond_4
    move-object v14, v2

    move-object v2, v11

    move v11, v1

    move-object v1, v0

    move-object v0, v10

    move-wide v9, v8

    move v8, v13

    move-object v13, v4

    move v4, v12

    move-object v12, v0

    :goto_2
    :try_start_2
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move v0, v4

    move v4, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    move v14, v13

    move-object v13, v4

    move v4, v12

    move-object v12, v10

    move-wide v9, v8

    move v8, v14

    move-object v14, v2

    move-object v2, v11

    move v11, v1

    :goto_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_5
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_6

    :cond_5
    instance-of v1, v8, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v8}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v8, Lkotlin/Result;

    invoke-direct {v8, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v8

    :goto_6
    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, v1, Lkotlin/Result$Failure;

    add-int/lit8 v8, v11, 0x1

    if-lt v4, v8, :cond_6

    move v8, v7

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_7
    if-eqz v1, :cond_d

    if-eqz v8, :cond_7

    goto/16 :goto_c

    :cond_7
    sget-object v1, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$WhenMappings;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v7, :cond_a

    if-eq v1, v6, :cond_9

    const/4 v8, 0x3

    if-ne v1, v8, :cond_8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    move-object v15, v5

    int-to-double v5, v4

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    :goto_8
    mul-long/2addr v5, v9

    goto :goto_9

    :cond_8
    move-object v15, v5

    invoke-static {}, Lv40;->g()V

    return-object v15

    :cond_9
    move-object v15, v5

    int-to-long v5, v4

    goto :goto_8

    :cond_a
    move-object v15, v5

    move-wide v5, v9

    :goto_9
    iput-object v14, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->f:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    iput-object v13, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->g:Lkotlin/jvm/functions/Function1;

    iput-object v12, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v15, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->b:I

    iput-wide v9, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->e:J

    iput v4, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->c:I

    iput v0, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->d:I

    const/4 v1, 0x2

    iput v1, v2, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_b

    :goto_a
    return-object v3

    :cond_b
    move v5, v0

    move-object v0, v2

    move-wide v8, v9

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v2, v14

    :goto_b
    if-eq v4, v5, :cond_c

    add-int/lit8 v13, v4, 0x1

    move v6, v1

    move v1, v10

    move-object v10, v11

    move-object v4, v12

    const/4 v7, 0x1

    move-object v11, v0

    move v12, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_c
    move-object v1, v11

    goto :goto_d

    :cond_d
    :goto_c
    move-object v1, v12

    goto :goto_d

    :cond_e
    throw v8

    :cond_f
    :goto_d
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    return-object v0

    :cond_10
    const-string v0, "maxAttemptNumber must be >= 1"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/4 v15, 0x0

    return-object v15
.end method
