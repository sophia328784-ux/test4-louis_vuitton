.class public final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;,
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;,
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Companion",
        "CreateOpenChatStep",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public final i:Lkotlin/Lazy;

.field public j:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

.field public final k:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

.field public final l:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->l:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->i:Lkotlin/Lazy;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->ChatroomInfo:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->k:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string p1, "openchat"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;

    invoke-direct {v2, p1, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;-><init>(Landroid/content/SharedPreferences;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->j:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lyq;

    invoke-direct {v1, p0, v0}, Lyq;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->j:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lyq;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lyq;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    invoke-virtual {p1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->j:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lyq;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lyq;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    invoke-virtual {p1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->j:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lyq;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lyq;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->k:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    invoke-virtual {p0, p1, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->v(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final v(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    invoke-direct {p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    invoke-direct {p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;-><init>()V

    :goto_0
    const/4 p2, 0x0

    const v0, 0x7f0a0134

    invoke-virtual {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    move-result p0

    return p0
.end method
