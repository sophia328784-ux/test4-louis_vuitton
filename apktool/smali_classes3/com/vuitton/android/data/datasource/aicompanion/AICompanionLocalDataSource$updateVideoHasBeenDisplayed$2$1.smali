.class final Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "preferences",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
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
    c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1"
    f = "AICompanionLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->c:Z

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->d:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;

    iget-boolean v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->c:Z

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->d:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    invoke-direct {v0, p0, p2, v1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;Z)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1;->c:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
