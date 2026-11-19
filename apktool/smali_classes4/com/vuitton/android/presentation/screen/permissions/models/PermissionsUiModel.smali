.class public final Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;",
        "currentBottomSheet",
        "",
        "notificationIsActivated",
        "areNotificationsOnDeviceEnabled",
        "personalizationIsEnabled",
        "shouldHandleAppSettingsResult",
        "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;",
        "contactability",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 50
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    .line 45
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->b:Z

    .line 46
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    .line 47
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    .line 48
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->e:Z

    .line 49
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->f:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    move p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->f:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->f:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->f:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionsUiModel(currentBottomSheet="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationIsActivated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", areNotificationsOnDeviceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", personalizationIsEnabled="

    const-string v2, ", shouldHandleAppSettingsResult="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->f:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
