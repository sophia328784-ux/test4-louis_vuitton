.class public final Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isError",
        "",
        "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;",
        "notificationList",
        "currentNotificationDisplayed",
        "areNotificationsEnabled",
        "isUserOptInToCustomization",
        "revealedItem",
        "showLongPressTooltip",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZZLcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Z)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;

.field public final e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZZLcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;",
            "ZZ",
            "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 49
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->b:Z

    .line 50
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->c:Z

    .line 51
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    .line 53
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->f:Z

    .line 54
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->g:Z

    .line 55
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    .line 56
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->i:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZZLcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_2

    sget-object p4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    and-int/lit8 p11, p10, 0x10

    const/4 v1, 0x0

    if-eqz p11, :cond_3

    move-object p5, v1

    :cond_3
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_4

    move p6, v0

    :cond_4
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_5

    move p7, v0

    :cond_5
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_6

    move-object p8, v1

    :cond_6
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_7

    move p9, v0

    :cond_7
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZZLcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->g:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InboxViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentNotificationDisplayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", areNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserOptInToCustomization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", revealedItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showLongPressTooltip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
