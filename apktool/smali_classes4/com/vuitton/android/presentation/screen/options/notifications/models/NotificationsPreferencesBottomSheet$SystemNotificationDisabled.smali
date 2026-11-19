.class public final Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;
.super Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemNotificationDisabled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;",
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;",
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


# static fields
.field public static final e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140ead

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140eab

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v5, v4

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140ea9

    invoke-direct {v4, v6, v3, v5, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    return-void
.end method
