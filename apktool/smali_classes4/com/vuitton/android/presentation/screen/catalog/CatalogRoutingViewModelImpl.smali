.class public final Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;",
        "isStoreModeStillValidUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;",
        "disableStoreModeUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;)V",
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


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;)V
    .locals 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$Catalog;->a:Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$Catalog;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    const/4 v2, -0x1

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    :goto_0
    if-eq p0, v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_5

    const/4 v4, 0x2

    if-eq p0, v4, :cond_4

    const/4 v2, 0x3

    if-ne p0, v2, :cond_3

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->b:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, p2, Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->c()Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    :cond_1
    if-eqz p0, :cond_2

    new-instance p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;

    invoke-direct {p0, v3}, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;-><init>(Z)V

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;

    invoke-direct {p0, v2}, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;-><init>(Z)V

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;

    invoke-direct {p0, v2}, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;-><init>(Z)V

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final D3()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method
