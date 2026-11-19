.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;",
        "",
        "booking",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;",
        "departure",
        "arrival",
        "flightCode",
        "seat",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Ljava/lang/String;Ljava/lang/String;)V",
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
            "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->FLIGHT:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlightUiModel(booking="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", departure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arrival="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flightCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
