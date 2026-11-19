.class public interface abstract Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/TagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncServerCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess()V
.end method

.method public abstract progress(D)V
.end method
