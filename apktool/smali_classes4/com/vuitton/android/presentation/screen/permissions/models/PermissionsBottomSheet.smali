.class public Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;,
        Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowDeviceNotificationsPermissionsBottomSheet;,
        Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;,
        Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u0001:\u0004\u000b\u000c\r\u000eB5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;",
        "",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;",
        "title",
        "message",
        "link",
        "positiveText",
        "",
        "isFromBackInStock",
        "<init>",
        "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Z)V",
        "None",
        "CookiesAcceptanceBottomSheet",
        "AllowDeviceNotificationsPermissionsBottomSheet",
        "AllowCommunicationBottomSheet",
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
.field public final a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

.field public final b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

.field public final c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

.field public final d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Z)V

    return-void
.end method
