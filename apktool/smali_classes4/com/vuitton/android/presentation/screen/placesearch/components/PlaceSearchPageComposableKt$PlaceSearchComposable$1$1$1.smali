.class final Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1"
    f = "PlaceSearchPageComposable.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->e:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->c:Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140a5a

    const/4 v1, 0x2

    invoke-direct {v5, p1, v3, v1, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x0

    const/16 v9, 0x2c

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->e:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput v2, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1;->c:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {v1, p1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
