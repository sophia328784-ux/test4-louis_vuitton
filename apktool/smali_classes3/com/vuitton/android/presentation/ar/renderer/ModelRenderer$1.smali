.class final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;
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
    c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1"
    f = "ModelRenderer.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->d:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->d:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->d:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$filamentAsset$1;

    invoke-direct {v2, v5, v4}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$filamentAsset$1;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1;->b:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Lcom/google/android/filament/gltfio/FilamentAsset;

    if-nez p1, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object p0, v5, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->e:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->i:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->g(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    iput-object p1, v5, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->m:Lcom/google/android/filament/gltfio/FilamentAsset;

    new-instance p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1;

    invoke-direct {p0, v5, p1, v4}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v0, v4, v4, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$2;

    invoke-direct {p0, v5, v4}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$2;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3;

    invoke-direct {p0, v5, p1, v4}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
