.class public final Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;
.super Lcom/vuitton/android/presentation/screen/livevideo/Hilt_LiveVideoActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Companion",
        "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;",
        "viewState",
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
.field public static final q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;


# instance fields
.field public final l:Landroidx/lifecycle/ViewModelLazy;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/livevideo/Hilt_LiveVideoActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->l:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->l:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/livevideo/Hilt_LiveVideoActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "VIDEO_ID"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v1, p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-string v2, "ORIENTATION"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x106000c

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v2, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsControllerCompat;->f()V

    const/16 p1, 0x207

    invoke-virtual {v2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->a(I)V

    sget-object p1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    invoke-static {p0, p1, p1}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->a(Landroidx/activity/ComponentActivity;ZZ)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/livevideo/a;

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/screen/livevideo/a;-><init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x50f46ac4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;->a(Landroid/app/Activity;)V

    return-void
.end method
