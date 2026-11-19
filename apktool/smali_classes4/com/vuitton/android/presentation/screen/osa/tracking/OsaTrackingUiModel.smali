.class public interface abstract Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoScreen;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentConfirmEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentScreen;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;,
        Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u001d\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u0082\u0001\u001d\u001f !\"#$%&\'()*+,-./0123456789:;\u00a8\u0006<\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;",
        "",
        "OsaListScreen",
        "BookAppointmentEvent",
        "PrepareAppointmentEvent",
        "ModifyAppointmentEvent",
        "CancelAppointmentEvent",
        "CancellationConfirmedEvent",
        "AddAppointmentToCalendarEvent",
        "BookAppointmentScreen",
        "SelectReasonEvent",
        "ModifyReasonClickedEvent",
        "BookAppointmentLocationSelectionClickedEvent",
        "BookAppointmentDateSelectionClickedEvent",
        "BookAppointmentNextClickedEvent",
        "BookAppointmentDateSelectionScreen",
        "BookAppointmentDateSelectionSelectedClickedEvent",
        "BookAppointmentDateSelectionNoDateEvent",
        "KisaConsentScreen",
        "KisaConsentConfirmEvent",
        "BookAppointmentContactInfoScreen",
        "ModifyReasonFromContactInfoClickedEvent",
        "BookAppointmentContactInfoConfirmAccountClickedEvent",
        "BookAppointmentContactInfoLoginClickedEvent",
        "BookAppointmentContactInfoCancelClickedEvent",
        "BookAppointmentContactInfoConfirmAppointmentClickedEvent",
        "BottomSheetAddCalendarClickedEvent",
        "BottomSheetCreateAccountClickedEvent",
        "BottomSheetCancelKeepPreviousAppointmentClickedEvent",
        "BottomSheetReplaceAppointmentClickedEvent",
        "BottomSheetGoToAppointmentClickedEvent",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoScreen;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentConfirmEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentScreen;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;",
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


# direct methods
.method public static a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "modify"

    return-object p0

    :cond_0
    const-string p0, "creation"

    return-object p0
.end method
