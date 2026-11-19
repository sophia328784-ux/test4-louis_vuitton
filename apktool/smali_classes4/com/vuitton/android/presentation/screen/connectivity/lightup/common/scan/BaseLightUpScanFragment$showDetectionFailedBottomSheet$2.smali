.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$2",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$2;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$2;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->V()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
