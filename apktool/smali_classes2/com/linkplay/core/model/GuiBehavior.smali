.class public Lcom/linkplay/core/model/GuiBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    }
.end annotation


# instance fields
.field private loop:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

.field private next:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

.field private pause:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

.field private prev:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

.field private queue:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

.field private seek:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byBehavior()Z
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/model/GuiBehavior;->pause:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/model/GuiBehavior;->prev:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/model/GuiBehavior;->next:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/model/GuiBehavior;->seek:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/model/GuiBehavior;->loop:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->queue:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getLoop()Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->loop:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-object p0
.end method

.method public getNext()Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->next:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-object p0
.end method

.method public getPause()Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->pause:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-object p0
.end method

.method public getPrev()Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->prev:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-object p0
.end method

.method public getQueue()Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->queue:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-object p0
.end method

.method public getSeek()Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior;->seek:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-object p0
.end method

.method public setLoop(Lcom/linkplay/core/model/GuiBehavior$EnabledBean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior;->loop:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-void
.end method

.method public setNext(Lcom/linkplay/core/model/GuiBehavior$EnabledBean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior;->next:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-void
.end method

.method public setPause(Lcom/linkplay/core/model/GuiBehavior$EnabledBean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior;->pause:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-void
.end method

.method public setPrev(Lcom/linkplay/core/model/GuiBehavior$EnabledBean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior;->prev:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-void
.end method

.method public setQueue(Lcom/linkplay/core/model/GuiBehavior$EnabledBean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior;->queue:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-void
.end method

.method public setSeek(Lcom/linkplay/core/model/GuiBehavior$EnabledBean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior;->seek:Lcom/linkplay/core/model/GuiBehavior$EnabledBean;

    return-void
.end method
