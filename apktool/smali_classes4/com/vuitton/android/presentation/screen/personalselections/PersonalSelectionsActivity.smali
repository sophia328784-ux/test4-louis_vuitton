.class public final Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;
.super Lcom/vuitton/android/presentation/screen/personalselections/Hilt_PersonalSelectionsActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/ChatHostActivity;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;,
        Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/chat/ChatHostActivity;",
        "<init>",
        "()V",
        "Companion",
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
.field public static final s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;


# instance fields
.field public p:Lcom/vuitton/android/presentation/link/LinkHandler;

.field public q:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public r:Lcom/vuitton/android/presentation/chat/ChatAttachable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/personalselections/Hilt_PersonalSelectionsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->q:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PERSONAL_SELECTION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    const-string v5, "PERSONAL_SELECTION_TYPE"

    if-lt v2, v3, :cond_0

    const-class v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    if-nez v2, :cond_1

    move-object v1, v4

    :cond_1
    check-cast v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    :goto_0
    check-cast v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->q:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v5, :cond_2

    invoke-virtual {v3, v5}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v3, Lmn0;

    invoke-direct {v3, v0, v1, p0, p1}, Lmn0;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p1, -0x7d2285

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v2, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;->a(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_2
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4
.end method
