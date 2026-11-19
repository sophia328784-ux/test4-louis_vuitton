.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initFeatureFlags$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0xd9,
        0xda,
        0xdc,
        0xdd,
        0xde,
        0xdf,
        0xe0,
        0xe1,
        0xe2,
        0xe3,
        0xe5,
        0xe6
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public final synthetic t:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->t:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->t:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    packed-switch v2, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->r:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->q:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->p:Z

    iget v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->h:I

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    move/from16 v17, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v28, v17

    move-object/from16 v5, v18

    move-object v6, v1

    move/from16 v18, v14

    move/from16 v17, v15

    const/4 v1, 0x0

    move v14, v3

    move-object v3, v2

    move-object/from16 v2, p1

    :goto_0
    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v22, v10

    move/from16 v21, v11

    move/from16 v20, v12

    goto/16 :goto_13

    :pswitch_1
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->q:Z

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->p:Z

    iget v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->h:I

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    move/from16 v17, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v30, v18

    move-object/from16 v18, v1

    move v1, v13

    move v13, v10

    move v10, v7

    move v7, v4

    move-object v4, v15

    move-object/from16 v15, v30

    move/from16 v30, v3

    move-object v3, v2

    move v2, v11

    move v11, v8

    move v8, v5

    move v5, v12

    move v12, v9

    move v9, v6

    move/from16 v6, v30

    goto/16 :goto_11

    :pswitch_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->h:I

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v30, v2

    move-object v2, v1

    move-object v1, v15

    move-object v15, v14

    move v14, v11

    move/from16 v11, v30

    goto/16 :goto_10

    :pswitch_3
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v14

    move v14, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_d

    :pswitch_4
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v14

    move v14, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_c

    :pswitch_5
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    goto/16 :goto_a

    :pswitch_6
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_9

    :pswitch_7
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    const/4 v9, 0x1

    goto/16 :goto_8

    :pswitch_8
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iget v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v11, v3

    move v3, v2

    move-object v2, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v11

    move-object/from16 v12, p1

    move-object v11, v10

    move-object v10, v9

    const/4 v9, 0x1

    goto/16 :goto_7

    :pswitch_9
    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    move-object v10, v9

    const/4 v9, 0x1

    goto/16 :goto_6

    :pswitch_a
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iget v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v8, v4

    move v4, v2

    move-object v2, v6

    move v6, v8

    move-object v8, v5

    move v5, v3

    move-object v3, v7

    move-object v7, v8

    move-object/from16 v8, p1

    const/4 v9, 0x1

    goto/16 :goto_4

    :pswitch_b
    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iget v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v7, v2

    move v2, v3

    const/4 v9, 0x1

    move-object/from16 v3, p1

    goto :goto_3

    :pswitch_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->t:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v5, v2

    const/4 v2, 0x0

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_CART:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v7}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    const/4 v8, 0x0

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    const/4 v9, 0x1

    iput v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    invoke-virtual {v3, v7, v8, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    :goto_2
    move-object v6, v1

    goto/16 :goto_12

    :cond_0
    const/4 v7, 0x0

    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CREATE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v10}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v10

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    const/4 v11, 0x2

    iput v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v30, v6

    move v6, v2

    move-object v2, v5

    move v5, v7

    move-object v7, v4

    move v4, v3

    move-object/from16 v3, v30

    :goto_4
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    invoke-virtual {v10}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;->a()Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    move-result-object v10

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;->Enabled:Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    if-ne v10, v11, :cond_2

    move v10, v9

    goto :goto_5

    :cond_2
    const/4 v10, 0x0

    :goto_5
    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v12}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v12

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    const/4 v13, 0x3

    iput v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v30, v8

    move-object v8, v2

    move v2, v10

    move-object v10, v3

    move/from16 v3, v30

    :goto_6
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v12, v8, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v13}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v13

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    const/4 v14, 0x4

    iput v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    move/from16 v30, v4

    move v4, v2

    move-object v2, v7

    move v7, v5

    move v5, v3

    move v3, v11

    move-object v11, v10

    move-object v10, v8

    move v8, v6

    move/from16 v6, v30

    :goto_7
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v13, v10, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    const/4 v15, 0x5

    iput v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_5

    goto/16 :goto_2

    :cond_5
    move-object/from16 v30, v10

    move-object v10, v2

    move v2, v12

    move-object v12, v11

    move-object/from16 v11, v30

    :goto_8
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CLIENT_QR_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    const/4 v9, 0x6

    iput v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v9, 0x0

    invoke-virtual {v14, v15, v9, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_6

    goto/16 :goto_2

    :cond_6
    move v9, v7

    move v7, v5

    move v5, v3

    move v3, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move v10, v8

    move v8, v6

    move v6, v4

    move v4, v2

    :goto_9
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ONBOARDING:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    move/from16 p1, v2

    const/4 v2, 0x7

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v2, 0x0

    invoke-virtual {v14, v15, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_7

    goto/16 :goto_2

    :cond_7
    move/from16 v2, p1

    :goto_a
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    iget-object v15, v12, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDER_RETURN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v18, v1

    filled-new-array/range {v17 .. v17}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    move/from16 v17, v2

    const/16 v2, 0x8

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_8

    :goto_b
    move-object v6, v2

    goto/16 :goto_12

    :cond_8
    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v17

    :goto_c
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v13, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v18, v2

    filled-new-array/range {v17 .. v17}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    move/from16 v17, v3

    const/16 v3, 0x9

    iput v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_9

    goto :goto_b

    :cond_9
    move/from16 v3, v17

    :goto_d
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    const/4 v11, 0x1

    :goto_e
    move-object/from16 v18, v2

    goto :goto_f

    :cond_a
    move/from16 v17, v3

    :cond_b
    move v1, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    const/4 v11, 0x0

    goto :goto_e

    :goto_f
    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->INBOX:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 p1, v2

    filled-new-array/range {v17 .. v17}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iput v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->h:I

    move/from16 v17, v1

    const/16 v1, 0xa

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    move-object/from16 v1, p1

    move/from16 p1, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_c

    goto/16 :goto_b

    :cond_c
    move/from16 v3, p1

    move-object/from16 p1, v1

    move-object v1, v15

    move-object v15, v14

    move/from16 v14, v17

    :goto_10
    move-object/from16 v17, p1

    check-cast v17, Ljava/lang/Boolean;

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 p1, v2

    iget-object v2, v15, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->b:Z

    move/from16 v17, v2

    iget-object v2, v15, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v20, v2

    filled-new-array/range {v19 .. v19}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iput v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->h:I

    move-object/from16 v19, v1

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->p:Z

    move/from16 v1, v17

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->q:Z

    const/16 v1, 0xb

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    move-object/from16 v1, v20

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_d

    goto/16 :goto_b

    :cond_d
    move v3, v6

    move/from16 v6, p1

    move-object/from16 p1, v1

    move v1, v14

    move v14, v12

    move v12, v7

    move v7, v11

    move v11, v3

    move v3, v10

    move v10, v5

    move v5, v3

    move-object/from16 v18, v2

    move v2, v9

    move-object/from16 v3, v19

    move v9, v4

    move-object v4, v13

    move v13, v8

    move/from16 v8, v20

    :goto_11
    move-object/from16 v19, p1

    check-cast v19, Ljava/lang/Boolean;

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move/from16 p1, v6

    iget-object v6, v15, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->FEED_REVAMP_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v21, v6

    filled-new-array/range {v19 .. v19}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v6

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->d:Ljava/lang/Object;

    iput v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->e:I

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->j:Z

    iput v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->g:I

    iput-boolean v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->o:Z

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->h:I

    move/from16 v1, v20

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->p:Z

    move/from16 v1, v17

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->q:Z

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->r:Z

    const/16 v1, 0xc

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;->s:I

    move/from16 v16, v2

    move-object/from16 v2, v21

    const/4 v1, 0x0

    invoke-virtual {v2, v6, v1, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v6, v18

    if-ne v2, v6, :cond_e

    :goto_12
    return-object v6

    :cond_e
    move/from16 v28, p1

    move/from16 v18, v16

    move/from16 v27, v17

    move/from16 v26, v20

    move/from16 v17, v5

    move-object v5, v15

    goto/16 :goto_0

    :goto_13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    new-instance v16, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    if-eqz v13, :cond_f

    const/16 v19, 0x1

    goto :goto_14

    :cond_f
    move/from16 v19, v1

    :goto_14
    if-eqz v7, :cond_10

    const/16 v25, 0x1

    goto :goto_15

    :cond_10
    move/from16 v25, v1

    :goto_15
    invoke-direct/range {v16 .. v29}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;-><init>(ZZZZZZZZZZZZZ)V

    move-object/from16 v2, v16

    invoke-interface {v3, v4, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_11
    move-object v1, v6

    move v2, v14

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
