.class public interface abstract Lcom/sightcall/universal/agent/FetchUsecasesCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;,
        Lcom/sightcall/universal/agent/FetchUsecasesCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onFetchUsecasesError(Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;)V
.end method

.method public abstract onFetchUsecasesSuccess(Lcom/sightcall/universal/agent/FetchUsecasesCallback$Success;)V
.end method
