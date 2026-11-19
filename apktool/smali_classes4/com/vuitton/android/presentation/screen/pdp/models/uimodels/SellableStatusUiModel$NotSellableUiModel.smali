.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;
.super Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotSellableUiModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;",
        "reason",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;)V",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
