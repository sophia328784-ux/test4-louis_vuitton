.class public final synthetic Lcom/vuitton/android/presentation/screen/search/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/ui/focus/FocusManager;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V
    .locals 0

    iput p5, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->d:Landroidx/compose/ui/focus/FocusManager;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->f:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->d:Landroidx/compose/ui/focus/FocusManager;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->e:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->f:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$5$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->d:Landroidx/compose/ui/focus/FocusManager;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->e:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->f:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$5$1$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
