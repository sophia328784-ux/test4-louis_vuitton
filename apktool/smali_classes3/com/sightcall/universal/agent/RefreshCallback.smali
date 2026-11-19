.class public interface abstract Lcom/sightcall/universal/agent/RefreshCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/RefreshCallback$Error;,
        Lcom/sightcall/universal/agent/RefreshCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onRefreshError(Lcom/sightcall/universal/agent/RefreshCallback$Error;)V
.end method

.method public abstract onRefreshSuccess(Lcom/sightcall/universal/agent/RefreshCallback$Success;)V
.end method
