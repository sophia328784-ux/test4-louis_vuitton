.class public interface abstract Lcom/sightcall/universal/agent/DeleteCodeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/DeleteCodeCallback$Error;,
        Lcom/sightcall/universal/agent/DeleteCodeCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onDeleteCodeError(Lcom/sightcall/universal/agent/DeleteCodeCallback$Error;)V
.end method

.method public abstract onDeleteCodeSuccess(Lcom/sightcall/universal/agent/DeleteCodeCallback$Success;)V
.end method
