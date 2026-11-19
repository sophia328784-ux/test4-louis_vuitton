.class public Lcom/sightcall/universal/agent/registration/OldRegistration;
.super Lcom/sightcall/universal/agent/registration/RegistrationResponse;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/registration/RegistrationRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;,
        Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;
    }
.end annotation


# instance fields
.field final attributes:Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;)V
    .locals 3

    invoke-direct {p0}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;-><init>()V

    const-string v0, "authorization-tokens"

    iput-object v0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->id:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;

    invoke-static {p1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;->c(Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;->a(Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;->b(Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->attributes:Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/registration/OldRegistration;-><init>(Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;-><init>()V

    .line 31
    const-string v0, "authorization-tokens"

    iput-object v0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->type:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->id:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->attributes:Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;

    return-void
.end method


# virtual methods
.method public accessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration;->id:Ljava/lang/String;

    return-object p0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
