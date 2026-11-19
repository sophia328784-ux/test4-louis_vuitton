.class final Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1"
    f = "PortalSliderComponent.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->d:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->d:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->b:Z

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;-><init>(ZLcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->b:Z

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;->d:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object p1

    invoke-static {p0}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    move-result-object p0

    invoke-interface {p0, p1}, Lcoil3/ImageLoader;->d(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
