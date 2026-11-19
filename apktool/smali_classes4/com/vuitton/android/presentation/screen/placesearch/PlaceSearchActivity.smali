.class public final Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;
.super Lcom/vuitton/android/presentation/screen/placesearch/Hilt_PlaceSearchActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;,
        Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "PlaceInfoType",
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
.field public static final t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public final q:Lkotlin/Lazy;

.field public final r:Lkotlin/Lazy;

.field public final s:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/placesearch/Hilt_PlaceSearchActivity;-><init>()V

    new-instance v0, Lio0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio0;-><init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->p:Lkotlin/Lazy;

    new-instance v0, Lio0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio0;-><init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->q:Lkotlin/Lazy;

    new-instance v0, Lio0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lio0;-><init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->r:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;)Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "PLACE_INFO_TYPE"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    :goto_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    new-instance p1, Lll0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lll0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x330fd99c

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method
