.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

.field public final synthetic c:F

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic j:Landroidx/compose/animation/core/Animatable;

.field public final synthetic k:Landroidx/compose/animation/core/Animatable;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->c:F

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->d:Lkotlin/jvm/functions/Function1;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->e:Z

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->g:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->h:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->i:Lkotlinx/coroutines/CoroutineScope;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->j:Landroidx/compose/animation/core/Animatable;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->k:Landroidx/compose/animation/core/Animatable;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1$1;

    iget-object v12, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->l:Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->a:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->c:F

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->d:Lkotlin/jvm/functions/Function1;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->e:Z

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->f:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->g:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->h:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->i:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->j:Landroidx/compose/animation/core/Animatable;

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;->k:Landroidx/compose/animation/core/Animatable;

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    move-object/from16 v0, p2

    invoke-static {p1, v1, v0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
