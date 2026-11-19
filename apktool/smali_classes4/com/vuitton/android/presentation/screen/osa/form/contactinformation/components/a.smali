.class public final synthetic Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$openSheet$1$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$openSheet$1$1$1;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
