.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl;
.super Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ServiceC;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ServiceC;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;)V
    .locals 5

    new-instance v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

    new-instance v1, Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iget-object v4, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n3:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->e:Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

    new-instance v0, Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p5:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/MaintenanceRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;-><init>(Lcom/vuitton/android/domain/repository/MaintenanceRepository;)V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->f:Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->g:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p0, p1, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method
