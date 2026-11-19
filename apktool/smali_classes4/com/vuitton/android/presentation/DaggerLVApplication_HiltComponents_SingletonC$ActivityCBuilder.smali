.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ActivityC$Builder;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public final b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field public c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public final build()Ldagger/hilt/android/components/ActivityComponent;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;->c:Landroid/app/Activity;

    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    return-object v0
.end method
