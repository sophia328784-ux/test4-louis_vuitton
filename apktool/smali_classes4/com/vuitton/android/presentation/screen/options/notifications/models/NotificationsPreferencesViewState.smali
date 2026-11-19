.class public final Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;",
        "",
        "",
        "Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;",
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;",
        "preferences",
        "",
        "isNotificationsEnabled",
        "isUserOptInToCustomization",
        "isNotifyMeEnabled",
        "isLoading",
        "<init>",
        "(Ljava/util/Map;ZZZZ)V",
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
.field public final a:Ljava/util/Map;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 45
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;-><init>(Ljava/util/Map;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;",
            "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;",
            ">;ZZZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->a:Ljava/util/Map;

    .line 41
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    .line 42
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    .line 43
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->d:Z

    .line 44
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x1

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    const/4 p5, 0x0

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p7}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;-><init>(Ljava/util/Map;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->a:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->e:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsPreferencesViewState(preferences="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserOptInToCustomization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNotifyMeEnabled="

    const-string v2, ", isLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->e:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
