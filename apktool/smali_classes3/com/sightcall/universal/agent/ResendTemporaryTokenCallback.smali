.class public interface abstract Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;,
        Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onResendTemporaryTokenError(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;)V
.end method

.method public abstract onResendTemporaryTokenSuccess(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Success;)V
.end method
