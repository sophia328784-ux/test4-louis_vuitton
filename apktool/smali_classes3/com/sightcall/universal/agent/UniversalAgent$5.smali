.class Lcom/sightcall/universal/agent/UniversalAgent$5;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/UniversalAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Lcom/sightcall/universal/agent/Consent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$5;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public init()Lcom/sightcall/universal/agent/Consent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$5;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Repository;->loadConsent()Lcom/sightcall/universal/agent/Consent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent$5;->init()Lcom/sightcall/universal/agent/Consent;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/sightcall/universal/agent/Consent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$5;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Repository;->saveConsent(Lcom/sightcall/universal/agent/Consent;)Lcom/sightcall/universal/agent/Consent;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/sightcall/universal/agent/Consent;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$5;->set(Lcom/sightcall/universal/agent/Consent;)V

    return-void
.end method
