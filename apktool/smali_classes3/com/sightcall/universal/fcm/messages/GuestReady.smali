.class public Lcom/sightcall/universal/fcm/messages/GuestReady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sightcall/universal/fcm/messages/GuestReady;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Ljava/lang/String; = "guest-ready"


# instance fields
.field private caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case-report-id"
    .end annotation
.end field

.field private guestUid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-uid"
    .end annotation
.end field

.field private pincode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pincode"
    .end annotation
.end field

.field private rtccJwtAuth:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "rtcc-jwtauth"
    .end annotation
.end field

.field private rtccToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "rtcc-token"
    .end annotation
.end field

.field private usecaseId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/fcm/messages/GuestReady$1;

    invoke-direct {v0}, Lcom/sightcall/universal/fcm/messages/GuestReady$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/fcm/messages/GuestReady;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->guestUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccJwtAuth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public caseReportId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public correspondsTo(Lcom/sightcall/universal/agent/Code;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Code;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Code;->usecaseId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public correspondsTo(Lcom/sightcall/universal/fcm/messages/GuestReady;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode:Ljava/lang/String;

    iget-object v2, p1, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId:I

    iget p1, p1, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRtccJwtAuth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccJwtAuth:Ljava/lang/String;

    return-object p0
.end method

.method public guestUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->guestUid:Ljava/lang/String;

    return-object p0
.end method

.method public pincode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode:Ljava/lang/String;

    return-object p0
.end method

.method public rtccToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccToken:Ljava/lang/String;

    return-object p0
.end method

.method public usecaseId()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->guestUid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccJwtAuth:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
