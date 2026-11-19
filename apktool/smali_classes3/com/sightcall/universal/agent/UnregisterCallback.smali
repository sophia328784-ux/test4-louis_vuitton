.class public interface abstract Lcom/sightcall/universal/agent/UnregisterCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/UnregisterCallback$Error;,
        Lcom/sightcall/universal/agent/UnregisterCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onUnregisterError(Lcom/sightcall/universal/agent/UnregisterCallback$Error;)V
.end method

.method public abstract onUnregisterSuccess(Lcom/sightcall/universal/agent/UnregisterCallback$Success;)V
.end method
