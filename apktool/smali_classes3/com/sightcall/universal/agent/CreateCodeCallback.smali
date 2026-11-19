.class public interface abstract Lcom/sightcall/universal/agent/CreateCodeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/CreateCodeCallback$Error;,
        Lcom/sightcall/universal/agent/CreateCodeCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onCreateCodeError(Lcom/sightcall/universal/agent/CreateCodeCallback$Error;)V
.end method

.method public abstract onCreateCodeSuccess(Lcom/sightcall/universal/agent/CreateCodeCallback$Success;)V
.end method
