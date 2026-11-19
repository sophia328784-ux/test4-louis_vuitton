.class final Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;
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
        "it",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$persistLatest$1$1"
    f = "CrossPlatformScreenshotStore.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->c:I

    iput-object p2, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;

    iget v1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->c:I

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;-><init>(ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->c:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1$1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
