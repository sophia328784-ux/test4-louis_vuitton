.class final Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;
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
    c = "com.vuitton.android.presentation.compose.components.LVTimelineKt$LVTimeline$7$1"
    f = "LVTimeline.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/ui/unit/Density;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic j:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic k:Landroidx/compose/foundation/ScrollState;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:F


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;IFFLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function1;FLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->c:J

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->d:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->e:Landroidx/compose/runtime/MutableState;

    iput p5, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->f:I

    iput p6, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->g:F

    iput p7, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->h:F

    iput-object p8, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->i:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->j:Landroidx/compose/runtime/MutableIntState;

    iput-object p10, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->k:Landroidx/compose/foundation/ScrollState;

    iput-object p11, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->l:Lkotlin/jvm/functions/Function1;

    iput p12, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->m:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 14

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;

    iget-object v11, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->l:Lkotlin/jvm/functions/Function1;

    iget v12, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->m:F

    iget-wide v1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->c:J

    iget-object v3, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->d:Landroidx/compose/ui/unit/Density;

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->e:Landroidx/compose/runtime/MutableState;

    iget v5, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->f:I

    iget v6, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->g:F

    iget v7, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->h:F

    iget-object v8, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->i:Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->j:Landroidx/compose/runtime/MutableIntState;

    iget-object v10, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->k:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;-><init>(JLandroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;IFFLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function1;FLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iput v4, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->b:I

    iget-wide v4, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->c:J

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->d:Landroidx/compose/ui/unit/Density;

    const/high16 v0, 0x43180000    # 152.0f

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->f:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->g:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->h:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p1

    float-to-int p1, p1

    add-int v5, v0, p1

    iget-object p1, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->j:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p1}, Landroidx/compose/runtime/IntState;->f()I

    move-result p1

    div-int/lit8 v6, p1, 0x2

    new-instance v3, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1$1$1;

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->k:Landroidx/compose/foundation/ScrollState;

    iget-object v7, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->l:Lkotlin/jvm/functions/Function1;

    iget v8, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->m:F

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1$1$1;-><init>(Landroidx/compose/foundation/ScrollState;IILkotlin/jvm/functions/Function1;FLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;->i:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v3, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
