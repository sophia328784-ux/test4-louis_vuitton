.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/LookInfo;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lkotlinx/coroutines/CoroutineScope;Lcom/perfectcorp/perfectlib/LookInfo;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->d:Lcom/perfectcorp/perfectlib/LookInfo;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->f:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lr0;

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->f:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Ljava/lang/Object;I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/b;->d:Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/LookSetting;->create(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/LookSetting;

    move-result-object p0

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$applyLook$2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$applyLook$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lcom/perfectcorp/perfectlib/LookSetting;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v4, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
