.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;",
        "configuration",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;)V",
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
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartItemCustomizationUiModel(configuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
