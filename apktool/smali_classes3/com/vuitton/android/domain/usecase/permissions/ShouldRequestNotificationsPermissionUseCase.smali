.class public final Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "Lcom/vuitton/android/domain/repository/PermissionsRepository;",
        "permissionsRepository",
        "Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;",
        "sdkVersionProvider",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/repository/PermissionsRepository;Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/ConsentRepository;

.field public final c:Lcom/vuitton/android/domain/repository/PermissionsRepository;

.field public final d:Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/repository/PermissionsRepository;Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->b:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->c:Lcom/vuitton/android/domain/repository/PermissionsRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->d:Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;

    return-void
.end method


# virtual methods
.method public final a(ZZ)Z
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->b:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->c:Lcom/vuitton/android/domain/repository/PermissionsRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/PermissionsRepository;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v4

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v3

    :goto_3
    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->d:Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;

    invoke-interface {p0}, Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;->a()Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    return v4
.end method
