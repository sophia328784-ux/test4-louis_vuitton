.class public interface abstract Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;,
        Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onRequestTemporaryTokenError(Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;)V
.end method

.method public abstract onRequestTemporaryTokenSuccess(Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Success;)V
.end method
