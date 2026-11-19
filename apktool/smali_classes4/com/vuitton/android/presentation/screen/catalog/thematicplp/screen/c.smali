.class public final synthetic Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$3$6$18$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->e:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$3$6$18$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
