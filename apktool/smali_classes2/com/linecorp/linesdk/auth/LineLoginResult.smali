.class public Lcom/linecorp/linesdk/auth/LineLoginResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/linecorp/linesdk/LineProfile;

.field public final e:Lcom/linecorp/linesdk/LineIdToken;

.field public final f:Ljava/lang/Boolean;

.field public final g:Lcom/linecorp/linesdk/LineCredential;

.field public final h:Lcom/linecorp/linesdk/LineApiError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    const-class v0, Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineProfile;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    const-class v0, Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineIdToken;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    const-class v0, Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineCredential;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    const-class v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/LineApiError;

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 100
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 101
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->b:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->c:Lcom/linecorp/linesdk/LineProfile;

    .line 104
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    .line 105
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->d:Lcom/linecorp/linesdk/LineIdToken;

    .line 106
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    .line 107
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->e:Ljava/lang/Boolean;

    .line 108
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    .line 109
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->f:Lcom/linecorp/linesdk/LineCredential;

    .line 110
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    .line 111
    iget-object p1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->g:Lcom/linecorp/linesdk/LineApiError;

    .line 112
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method public static a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;-><init>()V

    iput-object p0, v0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object p1, v0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->g:Lcom/linecorp/linesdk/LineApiError;

    new-instance p0, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V

    return-object p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    iget-object p1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineApiError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    move-object v5, v0

    iget-object v6, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    iget-object v7, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v2, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    iget-object v4, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineLoginResult{responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lineProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineIdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friendshipStatusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineCredential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->d:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->f:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->g:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
