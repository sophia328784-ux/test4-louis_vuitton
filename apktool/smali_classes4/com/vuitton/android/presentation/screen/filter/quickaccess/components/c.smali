.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->d:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->e:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
