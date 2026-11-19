.class public interface abstract Lcom/sightcall/universal/agent/FetchConsentCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/FetchConsentCallback$Error;,
        Lcom/sightcall/universal/agent/FetchConsentCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onFetchConsentError(Lcom/sightcall/universal/agent/FetchConsentCallback$Error;)V
.end method

.method public abstract onFetchConsentSuccess(Lcom/sightcall/universal/agent/FetchConsentCallback$Success;)V
.end method
