.class Lcom/sightcall/universal/agent/UniversalAgent$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/UpdateIdentityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->acceptConsent(Lcom/sightcall/universal/agent/Consent;Lcom/sightcall/universal/agent/AcceptConsentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agent:Lcom/sightcall/universal/agent/Agent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/AcceptConsentCallback;

.field final synthetic val$consent:Lcom/sightcall/universal/agent/Consent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/AcceptConsentCallback;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/Consent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$cb:Lcom/sightcall/universal/agent/AcceptConsentCallback;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p4, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$consent:Lcom/sightcall/universal/agent/Consent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateIdentityError(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$cb:Lcom/sightcall/universal/agent/AcceptConsentCallback;

    new-instance v0, Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;

    invoke-static {p1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lcom/sightcall/universal/api/ApiCallback;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/AcceptConsentCallback;->onAcceptConsentError(Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;)V

    return-void
.end method

.method public onUpdateIdentitySuccess(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;)V
    .locals 2

    invoke-static {p1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lcom/sightcall/universal/api/ApiCallback;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;->body()Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/agent/IdentityExtractor;->extract(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lcom/sightcall/universal/agent/IdentityExtractor;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$cb:Lcom/sightcall/universal/agent/AcceptConsentCallback;

    new-instance p1, Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/AcceptConsentCallback;->onAcceptConsentError(Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iget-object p1, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->identity:Lcom/sightcall/universal/agent/Identity;

    iget-object p1, p1, Lcom/sightcall/universal/agent/Identity;->attributes:Lcom/sightcall/universal/agent/Identity$Attributes;

    iget-object p1, p1, Lcom/sightcall/universal/agent/Identity$Attributes;->requireConsent:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/agent/Agent;->requireConsent(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->e(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$cb:Lcom/sightcall/universal/agent/AcceptConsentCallback;

    new-instance v1, Lcom/sightcall/universal/agent/AcceptConsentCallback$Success;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$26;->val$consent:Lcom/sightcall/universal/agent/Consent;

    invoke-direct {v1, v0, p0}, Lcom/sightcall/universal/agent/AcceptConsentCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Consent;)V

    invoke-interface {p1, v1}, Lcom/sightcall/universal/agent/AcceptConsentCallback;->onAcceptConsentSuccess(Lcom/sightcall/universal/agent/AcceptConsentCallback$Success;)V

    return-void
.end method
