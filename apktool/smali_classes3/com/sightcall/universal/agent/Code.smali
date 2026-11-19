.class public Lcom/sightcall/universal/agent/Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Code$Media;
    }
.end annotation


# instance fields
.field caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "caseReportId"
    .end annotation
.end field

.field deleted:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "deleted"
    .end annotation
.end field

.field media:Lcom/sightcall/universal/agent/Code$Media;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "media"
    .end annotation
.end field

.field final mpi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mpi"
    .end annotation
.end field

.field final recipient:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "recipient"
    .end annotation
.end field

.field final reference:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field resent:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "resent"
    .end annotation
.end field

.field final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "url"
    .end annotation
.end field

.field final usecaseId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation
.end field

.field final value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/Pincode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/sightcall/universal/agent/Pincode;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Code;->value:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Pincode;->attributes:Lcom/sightcall/universal/agent/Pincode$Attributes;

    iget-object v1, v0, Lcom/sightcall/universal/agent/Pincode$Attributes;->mpi:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/agent/Code;->mpi:Ljava/lang/String;

    iget-object v1, v0, Lcom/sightcall/universal/agent/Pincode$Attributes;->reference:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/agent/Code;->reference:Ljava/lang/String;

    iget-object v1, v0, Lcom/sightcall/universal/agent/Pincode$Attributes;->recipient:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/agent/Code;->recipient:Ljava/lang/String;

    iget-object v1, v0, Lcom/sightcall/universal/agent/Pincode$Attributes;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/agent/Code;->url:Ljava/lang/String;

    sget-object v1, Lcom/sightcall/universal/agent/Code$1;->$SwitchMap$com$sightcall$universal$agent$Pincode$Media:[I

    iget-object v0, v0, Lcom/sightcall/universal/agent/Pincode$Attributes;->media:Lcom/sightcall/universal/agent/Pincode$Media;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/agent/Code$Media;->URL:Lcom/sightcall/universal/agent/Code$Media;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Code;->media:Lcom/sightcall/universal/agent/Code$Media;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sightcall/universal/agent/Code$Media;->EMAIL:Lcom/sightcall/universal/agent/Code$Media;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Code;->media:Lcom/sightcall/universal/agent/Code$Media;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sightcall/universal/agent/Code$Media;->SMS:Lcom/sightcall/universal/agent/Code$Media;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Code;->media:Lcom/sightcall/universal/agent/Code$Media;

    :goto_0
    iget-object v0, p1, Lcom/sightcall/universal/agent/Pincode;->relationships:Lcom/sightcall/universal/agent/Pincode$Relationships;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Pincode$Relationships;->usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/api/JsonApi$Linkage;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sightcall/universal/api/JsonApi$Linkage;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/sightcall/universal/agent/Code;->usecaseId:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/agent/Pincode;->relationships:Lcom/sightcall/universal/agent/Pincode$Relationships;

    iget-object p1, p1, Lcom/sightcall/universal/agent/Pincode$Relationships;->caseReport:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/api/JsonApi$Linkage;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sightcall/universal/api/JsonApi$Linkage;->id()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/sightcall/universal/agent/Code;->caseReportId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyState(Lcom/sightcall/universal/agent/Code;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Code;->correspondsTo(Lcom/sightcall/universal/agent/Code;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/sightcall/universal/agent/Code;->resent:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Code;->resent:Z

    iget-boolean p1, p1, Lcom/sightcall/universal/agent/Code;->deleted:Z

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/Code;->deleted:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public canBeResent()Z
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/agent/Code;->media:Lcom/sightcall/universal/agent/Code$Media;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/sightcall/universal/agent/Code$1;->$SwitchMap$com$sightcall$universal$agent$Code$Media:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Code;->isResent()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public caseReportId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public correspondsTo(Lcom/sightcall/universal/agent/Code;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Code;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Code;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Code;->usecaseId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Code;->usecaseId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Code;->deleted:Z

    return p0
.end method

.method public isResent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Code;->resent:Z

    return p0
.end method

.method public media()Lcom/sightcall/universal/agent/Code$Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->media:Lcom/sightcall/universal/agent/Code$Media;

    return-object p0
.end method

.method public mpi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->mpi:Ljava/lang/String;

    return-object p0
.end method

.method public recipient()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->recipient:Ljava/lang/String;

    return-object p0
.end method

.method public reference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->url:Ljava/lang/String;

    return-object p0
.end method

.method public usecaseId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->usecaseId:Ljava/lang/String;

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Code;->value:Ljava/lang/String;

    return-object p0
.end method
