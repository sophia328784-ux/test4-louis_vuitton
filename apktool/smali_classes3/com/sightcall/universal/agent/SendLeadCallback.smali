.class public interface abstract Lcom/sightcall/universal/agent/SendLeadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/SendLeadCallback$Error;,
        Lcom/sightcall/universal/agent/SendLeadCallback$Success;
    }
.end annotation


# virtual methods
.method public abstract onSendLeadError(Lcom/sightcall/universal/agent/SendLeadCallback$Error;)V
.end method

.method public abstract onSendLeadSuccess(Lcom/sightcall/universal/agent/SendLeadCallback$Success;)V
.end method
