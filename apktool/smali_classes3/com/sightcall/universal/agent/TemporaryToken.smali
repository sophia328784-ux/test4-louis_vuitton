.class public Lcom/sightcall/universal/agent/TemporaryToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/TemporaryToken$Attributes;,
        Lcom/sightcall/universal/agent/TemporaryToken$Media;
    }
.end annotation


# instance fields
.field final attributes:Lcom/sightcall/universal/agent/TemporaryToken$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field isResent:Z
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/agent/TemporaryToken$Attributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "temporary-tokens"

    iput-object v0, p0, Lcom/sightcall/universal/agent/TemporaryToken;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/agent/TemporaryToken;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/agent/TemporaryToken;->attributes:Lcom/sightcall/universal/agent/TemporaryToken$Attributes;

    return-void
.end method

.method public static email(Ljava/lang/String;)Lcom/sightcall/universal/agent/TemporaryToken;
    .locals 4

    new-instance v0, Lcom/sightcall/universal/agent/TemporaryToken;

    new-instance v1, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;

    sget-object v2, Lcom/sightcall/universal/agent/TemporaryToken$Media;->EMAIL:Lcom/sightcall/universal/agent/TemporaryToken$Media;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;-><init>(Lcom/sightcall/universal/agent/TemporaryToken$Media;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v1}, Lcom/sightcall/universal/agent/TemporaryToken;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/TemporaryToken$Attributes;)V

    return-object v0
.end method

.method public static resend(Lcom/sightcall/universal/agent/TemporaryToken;)Lcom/sightcall/universal/agent/TemporaryToken;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/TemporaryToken;->id()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;

    const-string v2, "resend"

    invoke-direct {v1, v2}, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/agent/TemporaryToken;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/TemporaryToken$Attributes;)V

    return-object v0
.end method

.method public static sms(Ljava/lang/String;)Lcom/sightcall/universal/agent/TemporaryToken;
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lcom/sightcall/universal/agent/TemporaryToken;->sms(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/TemporaryToken;

    move-result-object p0

    return-object p0
.end method

.method public static sms(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/TemporaryToken;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/TemporaryToken;

    new-instance v1, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;

    sget-object v2, Lcom/sightcall/universal/agent/TemporaryToken$Media;->SMS:Lcom/sightcall/universal/agent/TemporaryToken$Media;

    invoke-direct {v1, v2, p0, p1}, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;-><init>(Lcom/sightcall/universal/agent/TemporaryToken$Media;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/agent/TemporaryToken;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/TemporaryToken$Attributes;)V

    return-object v0
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/TemporaryToken;->id:Ljava/lang/String;

    return-object p0
.end method

.method public isResent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/TemporaryToken;->isResent:Z

    return p0
.end method

.method public media()Lcom/sightcall/universal/agent/TemporaryToken$Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/TemporaryToken;->attributes:Lcom/sightcall/universal/agent/TemporaryToken$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->media:Lcom/sightcall/universal/agent/TemporaryToken$Media;

    return-object p0
.end method

.method public recipient()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/TemporaryToken;->attributes:Lcom/sightcall/universal/agent/TemporaryToken$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->recipient:Ljava/lang/String;

    return-object p0
.end method
