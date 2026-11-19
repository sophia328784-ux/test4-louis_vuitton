.class final Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1"
    f = "PLPStoreModeSnackBar.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

.field public final synthetic e:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->c:Ljava/util/Map;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;-><init>(Ljava/util/Map;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->c:Ljava/util/Map;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->b:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;->f:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroidx/compose/material3/SnackbarHostState;->b(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
