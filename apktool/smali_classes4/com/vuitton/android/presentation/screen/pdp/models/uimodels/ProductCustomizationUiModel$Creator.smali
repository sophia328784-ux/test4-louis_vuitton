.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    return-object p0
.end method
