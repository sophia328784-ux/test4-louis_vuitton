.class final Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# instance fields
.field public final synthetic c:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

.field public final synthetic h:Landroidx/compose/ui/Alignment;

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/BiasAlignment;Lcom/airbnb/lottie/AsyncUpdates;III)V
    .locals 0

    sget-object p5, Landroidx/compose/ui/layout/ContentScale$Companion;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->c:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->e:Z

    iput p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->f:I

    iput-object p6, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->g:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    iput-object p7, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->h:Landroidx/compose/ui/Alignment;

    iput p9, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->i:I

    iput p10, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->j:I

    iput p11, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->k:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/ui/layout/ContentScale$Companion;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->j:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v8, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->c:Lcom/airbnb/lottie/LottieComposition;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->e:Z

    iget v3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->f:I

    iget-object v4, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;->g:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    invoke-static/range {v0 .. v8}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->a(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/Composer;III)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
