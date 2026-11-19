.class public final Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000bB!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V",
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
.field public static final f:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;

.field public static final g:Ljava/lang/String;


# instance fields
.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;

    const-string v0, "AppInfoViewModelImpl"

    sput-object v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->e:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;-><init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;->a:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->e:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method
