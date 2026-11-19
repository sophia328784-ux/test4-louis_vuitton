.class public Lcom/sightcall/universal/model/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DEAD_PARTY_TIMEOUT:I = 0x3c


# instance fields
.field private acdMask:Ljava/lang/Long;

.field private acdValue:Ljava/lang/Long;

.field private appId:Ljava/lang/String;

.field public authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

.field private callNotStartedUrl:Ljava/lang/String;

.field private calleeId:Ljava/lang/String;

.field private caseReportId:Ljava/lang/String;

.field private code:Lcom/sightcall/universal/agent/Code;

.field private deadPartyTimeout:I

.field private displayName:Ljava/lang/String;

.field private displayNameMode:Ljava/lang/String;

.field private environment:Lcom/sightcall/universal/api/Environment;

.field private guestReady:Lcom/sightcall/universal/fcm/messages/GuestReady;

.field private hap:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private ignoreConsent:Z

.field private invitation:Ljava/lang/String;

.field private mpi:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private reportChatContent:Ljava/lang/Boolean;

.field private role:Lcom/sightcall/universal/model/Session$Role;

.field private suffix:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private urlAnnotation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    iput-object v0, p0, Lcom/sightcall/universal/model/Config;->role:Lcom/sightcall/universal/model/Session$Role;

    sget-object v0, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    iput-object v0, p0, Lcom/sightcall/universal/model/Config;->environment:Lcom/sightcall/universal/api/Environment;

    return-void
.end method

.method private agentIfRoleIsHost()Lcom/sightcall/universal/agent/Agent;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->role:Lcom/sightcall/universal/model/Session$Role;

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public acdMask()J
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->acdMask:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public acdMask(Ljava/lang/Long;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->acdMask:Ljava/lang/Long;

    return-object p0
.end method

.method public acdValue()J
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->acdValue:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public acdValue(Ljava/lang/Long;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->acdValue:Ljava/lang/Long;

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public appId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/model/Config;->agentIfRoleIsHost()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->appId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public callNotStartedUrl(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->callNotStartedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public callNotStartedUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->callNotStartedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public calleeId(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->calleeId:Ljava/lang/String;

    return-object p0
.end method

.method public calleeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->calleeId:Ljava/lang/String;

    return-object p0
.end method

.method public caseReportId(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public caseReportId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public code()Lcom/sightcall/universal/agent/Code;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->code:Lcom/sightcall/universal/agent/Code;

    return-object p0
.end method

.method public code(Lcom/sightcall/universal/agent/Code;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->code:Lcom/sightcall/universal/agent/Code;

    return-object p0
.end method

.method public deadPartyTimeout()I
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/model/Config;->agentIfRoleIsHost()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->deadPartyTimeout()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sightcall/universal/model/Config;->deadPartyTimeout:I

    :goto_0
    if-lez p0, :cond_1

    return p0

    :cond_1
    const/16 p0, 0x3c

    return p0
.end method

.method public deadPartyTimeout(I)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 19
    iput p1, p0, Lcom/sightcall/universal/model/Config;->deadPartyTimeout:I

    return-object p0
.end method

.method public displayName(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public displayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public displayNameMode(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->displayNameMode:Ljava/lang/String;

    return-object p0
.end method

.method public displayNameMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->displayNameMode:Ljava/lang/String;

    return-object p0
.end method

.method public environment()Lcom/sightcall/universal/api/Environment;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/model/Config;->agentIfRoleIsHost()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->environment:Lcom/sightcall/universal/api/Environment;

    return-object p0
.end method

.method public environment(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->environment:Lcom/sightcall/universal/api/Environment;

    return-object p0
.end method

.method public guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->guestReady:Lcom/sightcall/universal/fcm/messages/GuestReady;

    return-object p0
.end method

.method public guestReady(Lcom/sightcall/universal/fcm/messages/GuestReady;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->guestReady:Lcom/sightcall/universal/fcm/messages/GuestReady;

    return-object p0
.end method

.method public hap(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->hap:Ljava/lang/String;

    return-object p0
.end method

.method public hap()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/model/Config;->agentIfRoleIsHost()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->hap()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->hap:Ljava/lang/String;

    return-object p0
.end method

.method public hash(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public hash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public ignoreConsent(Z)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sightcall/universal/model/Config;->ignoreConsent:Z

    return-object p0
.end method

.method public ignoreConsent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/model/Config;->ignoreConsent:Z

    return p0
.end method

.method public invitation(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->invitation:Ljava/lang/String;

    return-object p0
.end method

.method public invitation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->invitation:Ljava/lang/String;

    return-object p0
.end method

.method public mpi(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->mpi:Ljava/lang/String;

    return-object p0
.end method

.method public mpi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->mpi:Ljava/lang/String;

    return-object p0
.end method

.method public pin(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public pin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public reference(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public reference()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->reference()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public reportChatContent(Ljava/lang/Boolean;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->reportChatContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public reportChatContent()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/model/Config;->agentIfRoleIsHost()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->chatTranscript()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->reportChatContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public role(Lcom/sightcall/universal/model/Session$Role;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->role:Lcom/sightcall/universal/model/Session$Role;

    return-object p0
.end method

.method public role()Lcom/sightcall/universal/model/Session$Role;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->role:Lcom/sightcall/universal/model/Session$Role;

    return-object p0
.end method

.method public suffix(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public suffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public uri()Landroid/net/Uri;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/sightcall/universal/model/Config;
    .locals 1

    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->uri:Landroid/net/Uri;

    new-instance v0, Lcom/sightcall/universal/model/UrlParser;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/model/UrlParser;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/sightcall/universal/model/UrlParser;->getHash()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/UrlParser;->getPin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->pin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/UrlParser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/UrlParser;->getInvitation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->invitation:Ljava/lang/String;

    return-object p0
.end method

.method public urlAnnotation(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sightcall/universal/model/Config;->urlAnnotation:Ljava/lang/String;

    return-object p0
.end method

.method public urlAnnotation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Config;->urlAnnotation:Ljava/lang/String;

    return-object p0
.end method
