.class public final Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;",
        "Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "<init>",
        "(Lcom/vuitton/android/presentation/push/NotificationsManager;)V",
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
.field public final a:Lcom/vuitton/android/presentation/push/NotificationsManager;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/push/NotificationsManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;->a:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;->a:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->q()Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;->a:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->b()V

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;->a:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->c()Z

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;->a:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->init()V

    return-void
.end method
