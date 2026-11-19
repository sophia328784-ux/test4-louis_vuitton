.class public final Ldagger/hilt/android/internal/managers/ServiceComponentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/hilt/internal/GeneratedComponentManager<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Service;

.field public c:Ldagger/hilt/android/components/ServiceComponent;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ServiceComponentManager;->b:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ServiceComponentManager;->c:Ldagger/hilt/android/components/ServiceComponent;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ServiceComponentManager;->b:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v2, v1, Ldagger/hilt/internal/GeneratedComponentManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Hilt service must be attached to an @HiltAndroidApp Application. Found: %s"

    invoke-static {v2, v4, v3}, Ldagger/hilt/internal/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-class v2, Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;

    invoke-static {v2, v1}, Ldagger/hilt/EntryPoints;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;

    invoke-interface {v1}, Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;->a()Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;->a(Landroid/app/Service;)Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;

    invoke-interface {v1}, Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;->build()Ldagger/hilt/android/components/ServiceComponent;

    move-result-object v0

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/ServiceComponentManager;->c:Ldagger/hilt/android/components/ServiceComponent;

    :cond_0
    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ServiceComponentManager;->c:Ldagger/hilt/android/components/ServiceComponent;

    return-object p0
.end method
