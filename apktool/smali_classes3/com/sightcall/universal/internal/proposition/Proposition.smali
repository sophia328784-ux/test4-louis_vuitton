.class public Lcom/sightcall/universal/internal/proposition/Proposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/proposition/Proposition$State;,
        Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sightcall/universal/internal/proposition/Proposition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field acceptUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "accept_url"
    .end annotation
.end field

.field cancelUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "cancel_url"
    .end annotation
.end field

.field extras:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "extra_fields"
    .end annotation
.end field

.field fields:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "regular_fields"
    .end annotation
.end field

.field guestUid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest_uid"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field transient isAccepted:Z

.field transient isDenied:Z

.field parentId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase_proposition"
    .end annotation
.end field

.field signatureUploadToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "signature_upload_token"
    .end annotation
.end field

.field signatureUploadUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "signature_upload_url"
    .end annotation
.end field

.field state:Lcom/sightcall/universal/internal/proposition/Proposition$State;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "state"
    .end annotation
.end field

.field transient template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/proposition/Proposition$1;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/proposition/Proposition$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/proposition/Proposition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->parentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->guestUid:Ljava/lang/String;

    sget-object v0, Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    iput-object v1, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->fields:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->extras:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/proposition/Proposition$State;->values()[Lcom/sightcall/universal/internal/proposition/Proposition$State;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->state:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->acceptUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->cancelUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadToken:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/internal/proposition/Proposition;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lcom/sightcall/universal/agent/Usecase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-class v0, Lcom/sightcall/universal/internal/proposition/Proposition;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/proposition/Proposition;

    if-eqz p0, :cond_2

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    :cond_2
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    return-object p0
.end method

.method public is(Lcom/sightcall/universal/internal/proposition/Proposition$State;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->state:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->guestUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->fields:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->extras:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->state:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->acceptUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->cancelUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadToken:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
