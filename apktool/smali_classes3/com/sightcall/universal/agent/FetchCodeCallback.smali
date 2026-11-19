.class public interface abstract Lcom/sightcall/universal/agent/FetchCodeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/FetchCodeCallback$Error;,
        Lcom/sightcall/universal/agent/FetchCodeCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onFetchCodeError(Lcom/sightcall/universal/agent/FetchCodeCallback$Error;)V
.end method

.method public abstract onFetchCodeSuccess(Lcom/sightcall/universal/agent/FetchCodeCallback$Success;)V
.end method
