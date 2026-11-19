.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ServiceC$Builder;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public b:Landroid/app/Service;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCBuilder;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Service;)Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCBuilder;->b:Landroid/app/Service;

    return-object p0
.end method

.method public final build()Ldagger/hilt/android/components/ServiceComponent;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCBuilder;->b:Landroid/app/Service;

    const-class v1, Landroid/app/Service;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCBuilder;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)V

    return-object v0
.end method
