.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;
.super Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrunkSpeakerViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;",
        "Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;)V",
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
.field public static final synthetic c:I


# instance fields
.field public final b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/linkplay/core/device/LPDevice;

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->b(Lcom/linkplay/core/device/LPDevice;)Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    :goto_0
    if-eq v4, v2, :cond_2

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->e:Landroid/widget/TextView;

    iget-object v2, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f141354

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->f:Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v2, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->e:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->f:Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;

    iget-object v5, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f141358

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getBatteryPercent()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;->setBatteryLevel(I)V

    :goto_1
    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->c:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->b(Lcom/linkplay/core/device/LPDevice;)Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->c:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    const v2, 0x7f08037c

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->e:Landroid/widget/TextView;

    iget-object v2, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f141349

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f141278

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, v3, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    new-instance v1, Lvg;

    const/16 v2, 0x10

    invoke-direct {v1, p1, p0, v2}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_4
    return-void
.end method
