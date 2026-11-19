.class public final Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;
.super Lcom/vuitton/android/presentation/screen/imageviewer/Hilt_ImageViewerActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "",
        "isNavigationSimplified",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public final q:Lkotlin/Lazy;

.field public final r:Lkotlin/Lazy;

.field public final s:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/imageviewer/Hilt_ImageViewerActivity;-><init>()V

    new-instance v0, Lo20;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo20;-><init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->p:Lkotlin/Lazy;

    new-instance v0, Lo20;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo20;-><init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->q:Lkotlin/Lazy;

    new-instance v0, Lo20;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lo20;-><init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->r:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "IMAGE_LIST"

    if-lt v0, v1, :cond_0

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Ljava/util/ArrayList;

    :goto_0
    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static I(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;)Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "PRODUCT_BACKGROUND"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    :goto_1
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    invoke-static {p0, p1, p1}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->a(Landroidx/activity/ComponentActivity;ZZ)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->c(Landroidx/fragment/app/FragmentActivity;ZI)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "TRACKING_SCREEN_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, ""

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "TRACKING_EVENT_CATEGORY"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$ImageViewerScreen;

    invoke-direct {v2, p1}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$ImageViewerScreen;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;->Y5(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;)V

    new-instance v0, Lrv;

    const/16 v2, 0xa

    invoke-direct {v0, p0, p1, v1, v2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x6fc43d66

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method
