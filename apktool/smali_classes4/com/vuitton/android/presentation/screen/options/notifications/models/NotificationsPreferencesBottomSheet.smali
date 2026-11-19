.class public Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;,
        Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;,
        Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;,
        Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0017\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\u000cB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;",
        "",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "title",
        "message",
        "link",
        "positiveText",
        "<init>",
        "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V",
        "None",
        "NotifyMeDisabled",
        "NoOptInCustomization",
        "SystemNotificationDisabled",
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
.field public final a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field public final b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field public final c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field public final d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method
