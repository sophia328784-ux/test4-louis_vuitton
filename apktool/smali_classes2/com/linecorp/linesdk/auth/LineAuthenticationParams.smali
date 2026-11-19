.class public Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;,
        Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;,
        Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/LineAuthenticationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

.field public final e:Ljava/util/Locale;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/linesdk/Scope;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-static {v2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->d:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->e:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-class v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    :cond_1
    check-cast v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    iput-object v1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->a:Ljava/util/List;

    .line 71
    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->b:Ljava/util/List;

    .line 72
    iget-object p1, p1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->b:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->d:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    .line 75
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->e:Ljava/util/Locale;

    .line 76
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->f:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->b:Ljava/util/List;

    invoke-static {p2}, Lcom/linecorp/linesdk/Scope;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->d:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->e:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
