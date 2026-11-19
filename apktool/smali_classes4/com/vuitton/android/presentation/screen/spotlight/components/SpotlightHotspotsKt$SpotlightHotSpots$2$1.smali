.class final Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;
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
    c = "com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt$SpotlightHotSpots$2$1"
    f = "SpotlightHotspots.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZZZLjava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->b:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->c:Z

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->i:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->h:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->i:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->b:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->c:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->d:Z

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->g:Landroidx/compose/runtime/MutableState;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;-><init>(ZZZLjava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->b:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->d:Z

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->c:Z

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->h:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;->i:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
