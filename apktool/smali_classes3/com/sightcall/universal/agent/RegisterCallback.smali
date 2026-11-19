.class public interface abstract Lcom/sightcall/universal/agent/RegisterCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/RegisterCallback$Error;,
        Lcom/sightcall/universal/agent/RegisterCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V
.end method

.method public abstract onRegisterSuccess(Lcom/sightcall/universal/agent/RegisterCallback$Success;)V
.end method
