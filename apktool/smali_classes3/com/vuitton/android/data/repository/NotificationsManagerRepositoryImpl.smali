.class public final Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;",
        "Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;",
        "notificationsSdkProvider",
        "<init>",
        "(Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;)V",
        "data"
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
.field public final a:Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;->a:Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements;)V
    .locals 2

    instance-of v0, p1, Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$NotificationsManagerRequirements;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$NotificationsManagerRequirements;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean p1, v0, Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$NotificationsManagerRequirements;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;->a:Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;->n()V

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;->b()V

    :cond_2
    return-void

    :cond_3
    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v0, Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$NotificationsManagerRequirements;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid requirements type. Required "

    const-string v1, " but got "

    invoke-static {p1, v0, v1, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
