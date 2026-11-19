.class public interface abstract Lcom/sightcall/universal/agent/AcceptConsentCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;,
        Lcom/sightcall/universal/agent/AcceptConsentCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onAcceptConsentError(Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;)V
.end method

.method public abstract onAcceptConsentSuccess(Lcom/sightcall/universal/agent/AcceptConsentCallback$Success;)V
.end method
