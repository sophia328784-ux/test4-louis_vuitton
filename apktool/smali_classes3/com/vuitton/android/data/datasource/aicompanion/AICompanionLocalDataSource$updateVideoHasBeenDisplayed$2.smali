.class final Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;
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
        "Landroidx/datastore/preferences/core/Preferences;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/datastore/preferences/core/Preferences;",
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
    c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2"
    f = "AICompanionLocalDataSource.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-boolean p3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-boolean p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->d:Z

    invoke-direct {p1, v0, p2, p0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;Z)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v1, p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance v4, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;

    iget-boolean v5, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->d:Z

    invoke-direct {v4, p1, v2, v5}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;Z)V

    iput v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;->b:I

    invoke-static {v1, v4, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
