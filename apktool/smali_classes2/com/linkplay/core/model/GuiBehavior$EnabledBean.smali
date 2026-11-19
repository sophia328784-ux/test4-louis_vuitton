.class public Lcom/linkplay/core/model/GuiBehavior$EnabledBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/core/model/GuiBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnabledBean"
.end annotation


# instance fields
.field private enabled:Z

.field private message:Ljava/lang/String;

.field private value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/model/GuiBehavior$EnabledBean;->enabled:Z

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior$EnabledBean;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/GuiBehavior$EnabledBean;->value:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/core/model/GuiBehavior$EnabledBean;->enabled:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior$EnabledBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/GuiBehavior$EnabledBean;->value:Ljava/lang/Integer;

    return-void
.end method
