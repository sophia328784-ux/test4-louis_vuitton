.class public Lcom/sightcall/universal/agent/Agent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private annotationsUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "annotations-url"
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "appId"
    .end annotation
.end field

.field private chatTranscript:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "chatTranscript"
    .end annotation
.end field

.field private deadPartyTimeout:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "deadPartyTimeout"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "email"
    .end annotation
.end field

.field private env:Lcom/sightcall/universal/api/Environment;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "env"
    .end annotation
.end field

.field private fcmToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "fcmToken"
    .end annotation
.end field

.field private hap:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hap"
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "language"
    .end annotation
.end field

.field private lastConnectionDate:Ljava/util/Date;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "connection"
    .end annotation
.end field

.field private login:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "login"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "phone"
    .end annotation
.end field

.field private recording:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "recording"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "refreshToken"
    .end annotation
.end field

.field private registrationDate:Ljava/util/Date;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "registration"
    .end annotation
.end field

.field private requireConsent:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "requireConsent"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sightcall/universal/agent/registration/RegistrationResponse;Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/agent/Agent;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/agent/Agent;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Agent;-><init>()V

    iput-object p1, v0, Lcom/sightcall/universal/agent/Agent;->env:Lcom/sightcall/universal/api/Environment;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;->accessToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sightcall/universal/agent/Agent;->token:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;->refreshToken()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sightcall/universal/agent/Agent;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method private update(Lcom/sightcall/universal/agent/Provider;)V
    .locals 3

    .line 56
    iget-object v0, p1, Lcom/sightcall/universal/agent/Provider;->attributes:Lcom/sightcall/universal/agent/Provider$Attributes;

    iget-object v1, v0, Lcom/sightcall/universal/agent/Provider$Attributes;->annotationsUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/agent/Agent;->annotationsUrl:Ljava/lang/String;

    .line 57
    iget-object v1, v0, Lcom/sightcall/universal/agent/Provider$Attributes;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/agent/Agent;->appId:Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/sightcall/pratik/utils/Utils;->Companion:Lcom/sightcall/pratik/utils/Utils$Companion;

    iget-object v2, v0, Lcom/sightcall/universal/agent/Provider$Attributes;->rtccEnv:Ljava/lang/String;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Provider$Attributes;->hapPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sightcall/pratik/utils/Utils$Companion;->extractHap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->hap:Ljava/lang/String;

    .line 59
    iget-object p1, p1, Lcom/sightcall/universal/agent/Provider;->attributes:Lcom/sightcall/universal/agent/Provider$Attributes;

    iget-boolean v0, p1, Lcom/sightcall/universal/agent/Provider$Attributes;->chatTranscript:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Agent;->chatTranscript:Z

    .line 60
    iget p1, p1, Lcom/sightcall/universal/agent/Provider$Attributes;->deadpartyTimeout:I

    iput p1, p0, Lcom/sightcall/universal/agent/Agent;->deadPartyTimeout:I

    return-void
.end method


# virtual methods
.method public annotationsUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->annotationsUrl:Ljava/lang/String;

    return-object p0
.end method

.method public appId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public chatTranscript()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Agent;->chatTranscript:Z

    return p0
.end method

.method public deadPartyTimeout()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/agent/Agent;->deadPartyTimeout:I

    return p0
.end method

.method public email()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->email:Ljava/lang/String;

    return-object p0
.end method

.method public environment()Lcom/sightcall/universal/api/Environment;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->env:Lcom/sightcall/universal/api/Environment;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    return-object p0
.end method

.method public fcmToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->fcmToken:Ljava/lang/String;

    return-object p0
.end method

.method public fcmToken(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/agent/Agent;->fcmToken:Ljava/lang/String;

    return-void
.end method

.method public hap()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->hap:Ljava/lang/String;

    return-object p0
.end method

.method public language()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->language:Ljava/lang/String;

    return-object p0
.end method

.method public lastConnectionDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->lastConnectionDate:Ljava/util/Date;

    return-object p0
.end method

.method public login()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->login:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public phone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public recording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Agent;->recording:Z

    return p0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public registrationDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->registrationDate:Ljava/util/Date;

    return-object p0
.end method

.method public requireConsent(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/Agent;->requireConsent:Z

    return-void
.end method

.method public requireConsent()Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Agent;->requireConsent:Z

    return p0
.end method

.method public token()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Agent;->token:Ljava/lang/String;

    return-object p0
.end method

.method public update(Lcom/sightcall/universal/agent/Identity;)Lcom/sightcall/universal/agent/Agent;
    .locals 2

    iget-object p1, p1, Lcom/sightcall/universal/agent/Identity;->attributes:Lcom/sightcall/universal/agent/Identity$Attributes;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->login:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->login:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->language:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->email:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->phone:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->fcmToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->fcmToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->registeredAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->registrationDate:Ljava/util/Date;

    iget-object v0, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->connectedAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->lastConnectionDate:Ljava/util/Date;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->requireConsent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sightcall/universal/agent/Agent;->requireConsent:Z

    iget-object p1, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->recording:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/Agent;->recording:Z

    return-object p0
.end method

.method public update([Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/agent/Agent;
    .locals 4

    if-eqz p1, :cond_1

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 54
    instance-of v3, v2, Lcom/sightcall/universal/agent/Provider;

    if-eqz v3, :cond_0

    .line 55
    check-cast v2, Lcom/sightcall/universal/agent/Provider;

    invoke-direct {p0, v2}, Lcom/sightcall/universal/agent/Agent;->update(Lcom/sightcall/universal/agent/Provider;)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public updateTokens(Lcom/sightcall/universal/agent/registration/RegistrationResponse;)Lcom/sightcall/universal/agent/Agent;
    .locals 1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;->accessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Agent;->token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;->refreshToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/agent/Agent;->refreshToken:Ljava/lang/String;

    return-object p0
.end method
