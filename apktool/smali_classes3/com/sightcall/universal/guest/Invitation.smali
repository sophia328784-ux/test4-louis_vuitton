.class public Lcom/sightcall/universal/guest/Invitation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/Invitation$Data;,
        Lcom/sightcall/universal/guest/Invitation$Conference;,
        Lcom/sightcall/universal/guest/Invitation$Member;
    }
.end annotation


# instance fields
.field private conferences:[Lcom/sightcall/universal/guest/Invitation$Conference;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "conferences"
    .end annotation
.end field

.field private data:Lcom/sightcall/universal/guest/Invitation$Data;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "conferenceInvitation"
    .end annotation
.end field

.field private members:[Lcom/sightcall/universal/guest/Invitation$Member;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "members"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public caseReportId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/guest/Invitation;->conference()Lcom/sightcall/universal/guest/Invitation$Conference;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation$Conference;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public conference()Lcom/sightcall/universal/guest/Invitation$Conference;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/guest/Invitation;->data:Lcom/sightcall/universal/guest/Invitation$Data;

    iget v0, v0, Lcom/sightcall/universal/guest/Invitation$Data;->conferenceId:I

    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation;->conferences:[Lcom/sightcall/universal/guest/Invitation$Conference;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    iget v5, v4, Lcom/sightcall/universal/guest/Invitation$Conference;->id:I

    if-ne v5, v0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public isExpired()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/guest/Invitation;->conference()Lcom/sightcall/universal/guest/Invitation$Conference;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation$Conference;->expired:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public mpi()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/guest/Invitation;->conference()Lcom/sightcall/universal/guest/Invitation$Conference;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation$Conference;->mpi:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public suffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation;->data:Lcom/sightcall/universal/guest/Invitation$Data;

    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation$Data;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/sightcall/universal/guest/Invitation;->conference()Lcom/sightcall/universal/guest/Invitation$Conference;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, v0, Lcom/sightcall/universal/guest/Invitation$Conference;->hostId:I

    iget-object p0, p0, Lcom/sightcall/universal/guest/Invitation;->members:[Lcom/sightcall/universal/guest/Invitation$Member;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    iget v5, v4, Lcom/sightcall/universal/guest/Invitation$Member;->id:I

    if-ne v5, v0, :cond_1

    iget-object p0, v4, Lcom/sightcall/universal/guest/Invitation$Member;->login:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
