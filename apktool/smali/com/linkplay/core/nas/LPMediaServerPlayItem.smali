.class public Lcom/linkplay/core/nas/LPMediaServerPlayItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private container:Lorg/teleal/cling/support/model/container/Container;

.field private isDirectory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/nas/LPMediaServerPlayItem;->isDirectory:Z

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/nas/LPMediaServerPlayItem;->container:Lorg/teleal/cling/support/model/container/Container;

    return-object p0
.end method

.method public isDirectory()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/nas/LPMediaServerPlayItem;->isDirectory:Z

    return p0
.end method

.method public setContainer(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/nas/LPMediaServerPlayItem;->container:Lorg/teleal/cling/support/model/container/Container;

    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/core/nas/LPMediaServerPlayItem;->isDirectory:Z

    return-void
.end method
