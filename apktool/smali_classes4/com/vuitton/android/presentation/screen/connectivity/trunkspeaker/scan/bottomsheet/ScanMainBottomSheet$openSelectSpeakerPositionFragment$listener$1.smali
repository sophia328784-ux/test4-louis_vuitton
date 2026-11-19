.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1",
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerConnectionTypeEnum;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerConnectionTypeEnum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerConnectionTypeEnum;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->X(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;)V

    return-void
.end method

.method public final b()V
    .locals 7

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->R:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openActivatePairingModeFragment$listener$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerConnectionTypeEnum;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openActivatePairingModeFragment$listener$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerConnectionTypeEnum;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/Hilt_ScanMainBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->Y()Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;

    const v4, 0x7f14018d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7f14018c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanTutorialHelper$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1

    const/4 v6, 0x2

    if-ne p0, v6, :cond_0

    const p0, 0x7f080361

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    const p0, 0x7f080360

    :goto_0
    sget-object v6, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Companion;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;

    move-result-object p0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->M:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0, v0, v5}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
