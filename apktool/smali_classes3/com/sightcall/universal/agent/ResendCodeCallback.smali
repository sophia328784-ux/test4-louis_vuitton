.class public interface abstract Lcom/sightcall/universal/agent/ResendCodeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/ResendCodeCallback$Error;,
        Lcom/sightcall/universal/agent/ResendCodeCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onResendCodeError(Lcom/sightcall/universal/agent/ResendCodeCallback$Error;)V
.end method

.method public abstract onResendCodeSuccess(Lcom/sightcall/universal/agent/ResendCodeCallback$Success;)V
.end method
