.class public interface abstract Lcom/sightcall/universal/agent/CreateRecordingCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;,
        Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onCreateRecordingError(Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;)V
.end method

.method public abstract onCreateRecordingSuccess(Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;)V
.end method
