.class Lcom/vuitton/android/presentation/Hilt_LVApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/android/internal/managers/ComponentSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/Hilt_LVApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vuitton/android/presentation/Hilt_LVApplication;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/Hilt_LVApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication$1;->a:Lcom/vuitton/android/presentation/Hilt_LVApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object p0, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication$1;->a:Lcom/vuitton/android/presentation/Hilt_LVApplication;

    invoke-direct {v1, p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->b:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->a:Lcom/vuitton/android/data/di/ApiDiModule;

    if-nez p0, :cond_0

    new-instance p0, Lcom/vuitton/android/data/di/ApiDiModule;

    invoke-direct {p0}, Lcom/vuitton/android/data/di/ApiDiModule;-><init>()V

    iput-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->a:Lcom/vuitton/android/data/di/ApiDiModule;

    :cond_0
    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->b:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    const-class v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    invoke-static {v1, p0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->c:Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;

    if-nez p0, :cond_1

    new-instance p0, Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;

    invoke-direct {p0}, Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;-><init>()V

    iput-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->c:Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;

    :cond_1
    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->d:Lcom/vuitton/android/data/audioplayer/di/ControllerDiModule;

    if-nez p0, :cond_2

    new-instance p0, Lcom/vuitton/android/data/audioplayer/di/ControllerDiModule;

    invoke-direct {p0}, Lcom/vuitton/android/data/audioplayer/di/ControllerDiModule;-><init>()V

    iput-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->d:Lcom/vuitton/android/data/audioplayer/di/ControllerDiModule;

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;

    if-nez p0, :cond_3

    new-instance p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;

    invoke-direct {p0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;-><init>()V

    iput-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;

    :cond_3
    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->f:Lcom/vuitton/android/data/net/serialization/di/SerializationModule;

    if-nez p0, :cond_4

    new-instance p0, Lcom/vuitton/android/data/net/serialization/di/SerializationModule;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/serialization/di/SerializationModule;-><init>()V

    iput-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->f:Lcom/vuitton/android/data/net/serialization/di/SerializationModule;

    :cond_4
    new-instance v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->a:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->b:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->c:Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->d:Lcom/vuitton/android/data/audioplayer/di/ControllerDiModule;

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;

    iget-object v7, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$Builder;->f:Lcom/vuitton/android/data/net/serialization/di/SerializationModule;

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;-><init>(Lcom/vuitton/android/data/di/ApiDiModule;Ldagger/hilt/android/internal/modules/ApplicationContextModule;Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;Lcom/vuitton/android/data/audioplayer/di/ControllerDiModule;Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;Lcom/vuitton/android/data/net/serialization/di/SerializationModule;)V

    return-object v1
.end method
