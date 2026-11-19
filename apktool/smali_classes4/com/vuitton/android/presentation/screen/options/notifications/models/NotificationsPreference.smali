.class public final Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;",
        "",
        "",
        "titleResId",
        "subtitleResId",
        "",
        "isChecked",
        "hasBottomDivider",
        "<init>",
        "(ILjava/lang/Integer;ZZ)V",
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
.field public final a:I

.field public final b:Ljava/lang/Integer;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/Integer;ZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->a:I

    .line 22
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->b:Ljava/lang/Integer;

    .line 23
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    .line 24
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;-><init>(ILjava/lang/Integer;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->a:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->b:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->b:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsPreference(titleResId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasBottomDivider="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->d:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
