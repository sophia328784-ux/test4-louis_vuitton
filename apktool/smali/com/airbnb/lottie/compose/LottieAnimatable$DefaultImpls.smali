.class public abstract Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/compose/LottieAnimatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;IZFLcom/airbnb/lottie/compose/LottieClipSpec;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;
    .locals 12

    move/from16 v0, p9

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->y()I

    move-result v2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->u()I

    move-result p2

    :cond_0
    move v3, p2

    and-int/lit8 p2, v0, 0x8

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->t()Z

    move-result p3

    :cond_1
    move v4, p3

    and-int/lit8 p2, v0, 0x10

    if-eqz p2, :cond_2

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->v()F

    move-result p2

    move v5, p2

    goto :goto_0

    :cond_2
    move/from16 v5, p4

    :goto_0
    and-int/lit8 p2, v0, 0x20

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->C()Lcom/airbnb/lottie/compose/LottieClipSpec;

    move-result-object p2

    move-object v6, p2

    goto :goto_1

    :cond_3
    move-object/from16 v6, p5

    :goto_1
    and-int/lit8 p2, v0, 0x40

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    cmpg-float p3, v5, p2

    if-gez p3, :cond_4

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    if-gez p3, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v6, p1}, Lcom/airbnb/lottie/compose/LottieClipSpec;->a(Lcom/airbnb/lottie/LottieComposition;)F

    move-result p2

    goto :goto_3

    :cond_6
    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6, p1}, Lcom/airbnb/lottie/compose/LottieClipSpec;->b(Lcom/airbnb/lottie/LottieComposition;)F

    move-result p2

    :cond_8
    :goto_3
    move v7, p2

    goto :goto_4

    :cond_9
    move/from16 v7, p6

    :goto_4
    and-int/lit16 p2, v0, 0x100

    if-eqz p2, :cond_a

    sget-object p2, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->Immediately:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    move-object v9, p2

    goto :goto_5

    :cond_a
    move-object/from16 v9, p7

    :goto_5
    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v11, p8

    invoke-interface/range {v0 .. v11}, Lcom/airbnb/lottie/compose/LottieAnimatable;->B(Lcom/airbnb/lottie/LottieComposition;IIZFLcom/airbnb/lottie/compose/LottieClipSpec;FZLcom/airbnb/lottie/compose/LottieCancellationBehavior;ZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;FLkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;
    .locals 6

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->A()Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p4, 0x4

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->y()I

    move-result p1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, p4

    :goto_0
    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result p1

    cmpg-float p1, p2, p1

    if-nez p1, :cond_2

    move p1, p4

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    xor-int/lit8 v4, p1, 0x1

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/airbnb/lottie/compose/LottieAnimatable;->z(Lcom/airbnb/lottie/LottieComposition;FIZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
