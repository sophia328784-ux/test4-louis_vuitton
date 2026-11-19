.class public Lcom/linkplay/medialib/ContentNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private container:Lorg/teleal/cling/support/model/container/Container;

.field private fullPath:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isItem:Z

.field private item:Lorg/teleal/cling/support/model/item/Item;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/medialib/ContentNode;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/linkplay/medialib/ContentNode;->container:Lorg/teleal/cling/support/model/container/Container;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/linkplay/medialib/ContentNode;->fullPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/linkplay/medialib/ContentNode;->isItem:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/linkplay/medialib/ContentNode;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/linkplay/medialib/ContentNode;->item:Lorg/teleal/cling/support/model/item/Item;

    .line 17
    iput-object p3, p0, Lcom/linkplay/medialib/ContentNode;->fullPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/linkplay/medialib/ContentNode;->isItem:Z

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/ContentNode;->container:Lorg/teleal/cling/support/model/container/Container;

    return-object p0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/linkplay/medialib/ContentNode;->isItem:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/medialib/ContentNode;->fullPath:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/ContentNode;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getItem()Lorg/teleal/cling/support/model/item/Item;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/ContentNode;->item:Lorg/teleal/cling/support/model/item/Item;

    return-object p0
.end method

.method public isItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/medialib/ContentNode;->isItem:Z

    return p0
.end method
