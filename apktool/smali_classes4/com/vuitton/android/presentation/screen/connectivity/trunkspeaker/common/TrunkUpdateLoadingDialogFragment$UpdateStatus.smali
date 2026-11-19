.class public final enum Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;",
        "",
        "DOWNLOAD",
        "INSTALL",
        "REBOOT",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

.field public static final enum DOWNLOAD:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

.field public static final enum INSTALL:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

.field public static final enum REBOOT:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->DOWNLOAD:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    const-string v2, "INSTALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->INSTALL:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    const-string v3, "REBOOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->REBOOT:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->$VALUES:[Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->$VALUES:[Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    return-object v0
.end method
