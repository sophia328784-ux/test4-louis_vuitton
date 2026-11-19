.class Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$Factory;


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$2;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$2;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

    new-instance v1, Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d3:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/repository/BookingRepository;

    invoke-direct {v1, p0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;-><init>(Lcom/vuitton/android/domain/repository/BookingRepository;)V

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;-><init>(Ljava/lang/String;Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;)V

    return-object v0
.end method
