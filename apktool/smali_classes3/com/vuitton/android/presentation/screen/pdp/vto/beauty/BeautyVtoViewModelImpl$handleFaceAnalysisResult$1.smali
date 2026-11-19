.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$handleFaceAnalysisResult$1"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0x40c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/FaceAnalysisData;

.field public final synthetic e:Landroid/graphics/Bitmap;

.field public final synthetic f:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/FaceAnalysisData;Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->d:Lcom/perfectcorp/perfectlib/FaceAnalysisData;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->e:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->e:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->d:Lcom/perfectcorp/perfectlib/FaceAnalysisData;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/FaceAnalysisData;Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->b:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_22

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;

    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;->a:Lcom/vuitton/android/domain/repository/BeautyConsentRepository;

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/BeautyConsentRepository;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;

    if-eqz v4, :cond_2

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->e:Landroid/graphics/Bitmap;

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move-object v8, v6

    :goto_0
    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->d:Lcom/perfectcorp/perfectlib/FaceAnalysisData;

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getCheekbone()Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->getLeft()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    move-object v11, v6

    :goto_1
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getCheekbone()Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->getRight()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object v12, v6

    :goto_2
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getCheekbone()Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->getOverall()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_5
    move-object v13, v6

    :goto_3
    invoke-direct {v10, v11, v12, v13}, Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->getEyelid()Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    goto :goto_4

    :cond_6
    move-object v15, v6

    :goto_4
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->getEyelid()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    goto :goto_5

    :cond_7
    move-object/from16 v16, v6

    :goto_5
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->getAngle()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    goto :goto_6

    :cond_8
    move-object/from16 v17, v6

    :goto_6
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->getAngle()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_7

    :cond_9
    move-object/from16 v18, v6

    :goto_7
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->getShape()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    goto :goto_8

    :cond_a
    move-object/from16 v19, v6

    :goto_8
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->getShape()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v11

    goto :goto_9

    :cond_b
    move-object/from16 v20, v6

    :goto_9
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getEyeSet()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v11

    goto :goto_a

    :cond_c
    move-object/from16 v21, v6

    :goto_a
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getEyeSize()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    goto :goto_b

    :cond_d
    move-object/from16 v22, v6

    :goto_b
    invoke-direct/range {v14 .. v22}, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getGapClassName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    goto :goto_c

    :cond_e
    move-object/from16 v16, v6

    :goto_c
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getShape()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    goto :goto_d

    :cond_f
    move-object/from16 v17, v6

    :goto_d
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getShape()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_e

    :cond_10
    move-object/from16 v18, v6

    :goto_e
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getBodyThickness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    goto :goto_f

    :cond_11
    move-object/from16 v19, v6

    :goto_f
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getTailThickness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v11

    goto :goto_10

    :cond_12
    move-object/from16 v20, v6

    :goto_10
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getThinness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v11

    goto :goto_11

    :cond_13
    move-object/from16 v21, v6

    :goto_11
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getBodyThickness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    goto :goto_12

    :cond_14
    move-object/from16 v22, v6

    :goto_12
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getTailThickness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v11

    goto :goto_13

    :cond_15
    move-object/from16 v23, v6

    :goto_13
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getThinness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v24, v11

    goto :goto_14

    :cond_16
    move-object/from16 v24, v6

    :goto_14
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getShortness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v25, v11

    goto :goto_15

    :cond_17
    move-object/from16 v25, v6

    :goto_15
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getRight()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->getShortness()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v11

    goto :goto_16

    :cond_18
    move-object/from16 v26, v6

    :goto_16
    invoke-direct/range {v15 .. v26}, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getFace()Lcom/perfectcorp/perfectlib/FaceAttributeData;

    move-result-object v11

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/FaceAttributeData;->getShape()Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    goto :goto_17

    :cond_19
    move-object v13, v6

    :goto_17
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getLip()Lcom/perfectcorp/perfectlib/LipAttributeData;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/LipAttributeData;->getBowShape()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    :goto_18
    move-object v12, v15

    goto :goto_19

    :cond_1a
    move-object v11, v6

    goto :goto_18

    :goto_19
    new-instance v15, Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getNose()Lcom/perfectcorp/perfectlib/NoseAttributeData;

    move-result-object v16

    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/NoseAttributeData;->getWidth()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    :cond_1b
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getNose()Lcom/perfectcorp/perfectlib/NoseAttributeData;

    move-result-object v17

    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Lcom/perfectcorp/perfectlib/NoseAttributeData;->getLength()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    goto :goto_1a

    :cond_1c
    const/4 v5, 0x0

    :goto_1a
    invoke-direct {v15, v6, v5}, Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/EyeAttributeData;->getColor()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1b

    :cond_1d
    const/4 v5, 0x0

    :goto_1b
    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/FaceAnalysisDataMapperKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getLip()Lcom/perfectcorp/perfectlib/LipAttributeData;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/LipAttributeData;->getColor()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1c

    :cond_1e
    const/4 v5, 0x0

    :goto_1c
    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/FaceAnalysisDataMapperKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->getColor()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1d

    :cond_1f
    const/4 v5, 0x0

    :goto_1d
    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/FaceAnalysisDataMapperKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getFace()Lcom/perfectcorp/perfectlib/FaceAttributeData;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/FaceAttributeData;->getSkinTone()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1e

    :cond_20
    const/4 v5, 0x0

    :goto_1e
    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/FaceAnalysisDataMapperKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getHair()Lcom/perfectcorp/perfectlib/HairAttributeData;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/HairAttributeData;->getColorName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1f

    :cond_21
    const/4 v5, 0x0

    :goto_1f
    if-eqz v5, :cond_23

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->getHair()Lcom/perfectcorp/perfectlib/HairAttributeData;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/HairAttributeData;->getColor()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_20

    :cond_22
    const/4 v6, 0x0

    :goto_20
    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/FaceAnalysisDataMapperKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    goto :goto_21

    :cond_23
    const/16 v24, 0x0

    :goto_21
    invoke-direct/range {v19 .. v24}, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v19

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    invoke-direct {v5, v8, v4}, Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;

    move-object/from16 v17, v14

    move-object v14, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;-><init>(Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;)V

    const/4 v4, 0x1

    iput v4, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->b:I

    invoke-virtual {v7, v9, v1}, Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;->a(Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_24

    return-object v0

    :cond_24
    move-object v0, v4

    :goto_22
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_25

    :try_start_2
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/ShadeFinderResponseMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_23

    :catchall_2
    move-exception v0

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :cond_25
    :goto_23
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_27

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    :cond_26
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    invoke-interface {v3, v5, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_27
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisResult$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_29

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v5, "BeautyVtoViewModelImpl"

    const-string v6, "Error while getting shade finder recommendations"

    invoke-interface {v4, v5, v6, v0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    :cond_28
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    const-string v6, ""

    invoke-direct {v5, v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_29
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2a
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
