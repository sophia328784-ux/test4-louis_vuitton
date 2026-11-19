.class public Lcom/sightcall/universal/guest/HttpAcdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/HttpAcdRequest$Status;
    }
.end annotation


# instance fields
.field private final estimatedTime:I

.field private final id:Ljava/lang/String;

.field private final partner:Ljava/lang/String;

.field private final rawStatus:Ljava/lang/String;

.field private final status:Lcom/sightcall/universal/guest/HttpAcdRequest$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->partner:Ljava/lang/String;

    iput p3, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->estimatedTime:I

    iput-object p4, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->rawStatus:Ljava/lang/String;

    invoke-static {p4}, Lcom/sightcall/universal/guest/HttpAcdRequest$Status;->parse(Ljava/lang/String;)Lcom/sightcall/universal/guest/HttpAcdRequest$Status;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->status:Lcom/sightcall/universal/guest/HttpAcdRequest$Status;

    return-void
.end method


# virtual methods
.method public estimatedTime()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->estimatedTime:I

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->id:Ljava/lang/String;

    return-object p0
.end method

.method public isPending()Z
    .locals 2

    sget-object v0, Lcom/sightcall/universal/guest/HttpAcdRequest$1;->$SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status:[I

    iget-object p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->status:Lcom/sightcall/universal/guest/HttpAcdRequest$Status;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public partner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->partner:Ljava/lang/String;

    return-object p0
.end method

.method public rawStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->rawStatus:Ljava/lang/String;

    return-object p0
.end method

.method public status()Lcom/sightcall/universal/guest/HttpAcdRequest$Status;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->status:Lcom/sightcall/universal/guest/HttpAcdRequest$Status;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpAcdRequest{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', estimatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->estimatedTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rawStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->rawStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/guest/HttpAcdRequest;->status:Lcom/sightcall/universal/guest/HttpAcdRequest$Status;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
