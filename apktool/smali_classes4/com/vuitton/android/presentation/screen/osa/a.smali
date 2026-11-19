.class public final synthetic Lcom/vuitton/android/presentation/screen/osa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic e:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/a;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/a;->c:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/a;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/a;->e:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/a;->f:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/a;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/a;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    invoke-interface {v0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->I3(Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/a;->c:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/a;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/a;->e:Landroidx/navigation3/runtime/NavBackStack;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/a;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/a;->f:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
