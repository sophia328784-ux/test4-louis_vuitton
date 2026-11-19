.class Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$1;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;
    .locals 12

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$1;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

    new-instance v5, Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/BookingRepository;

    invoke-direct {v5, v2}, Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;-><init>(Lcom/vuitton/android/domain/repository/BookingRepository;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d3:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/BookingRepository;

    invoke-direct {v6, v1}, Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;-><init>(Lcom/vuitton/android/domain/repository/BookingRepository;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v7

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v9

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v0
.end method
