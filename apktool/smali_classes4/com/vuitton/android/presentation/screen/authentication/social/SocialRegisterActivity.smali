.class public final Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;
.super Lcom/vuitton/android/presentation/screen/authentication/social/Hilt_SocialRegisterActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
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
.field public static final s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;


# instance fields
.field public final p:Landroidx/lifecycle/ViewModelLazy;

.field public final q:Lkotlin/Lazy;

.field public final r:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/Hilt_SocialRegisterActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Ld01;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld01;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->q:Lkotlin/Lazy;

    new-instance v0, Ld01;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld01;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->r:Lkotlin/Lazy;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;)Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "KEY_ORIGIN_VALUE"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :goto_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static I(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;)Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "KEY_PROVIDER_VALUE"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    :goto_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, p1, v0}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->b(Landroidx/activity/ComponentActivity;ZZI)V

    new-instance p1, Lll0;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Lll0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x1e7fac1a

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/SecurityUtils;->a(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onDestroy()V

    return-void
.end method
