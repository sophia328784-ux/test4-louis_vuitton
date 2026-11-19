.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ViewModelC$Builder;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public final b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field public c:Landroidx/lifecycle/SavedStateHandle;

.field public d:Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/SavedStateHandle;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->c:Landroidx/lifecycle/SavedStateHandle;

    return-object p0
.end method

.method public final b(Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->d:Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;

    return-object p0
.end method

.method public final build()Ldagger/hilt/android/components/ViewModelComponent;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->c:Landroidx/lifecycle/SavedStateHandle;

    const-class v1, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->d:Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;

    const-class v1, Ldagger/hilt/android/ViewModelLifecycle;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->c:Landroidx/lifecycle/SavedStateHandle;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-direct {v0, p0, v1, v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0
.end method
