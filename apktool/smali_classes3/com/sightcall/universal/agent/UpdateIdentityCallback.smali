.class public interface abstract Lcom/sightcall/universal/agent/UpdateIdentityCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;,
        Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onUpdateIdentityError(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;)V
.end method

.method public abstract onUpdateIdentitySuccess(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;)V
.end method
