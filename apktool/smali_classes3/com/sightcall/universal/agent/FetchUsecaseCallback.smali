.class public interface abstract Lcom/sightcall/universal/agent/FetchUsecaseCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;,
        Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onFetchUsecaseError(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;)V
.end method

.method public abstract onFetchUsecaseSuccess(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;)V
.end method
