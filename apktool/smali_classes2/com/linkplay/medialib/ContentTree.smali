.class public Lcom/linkplay/medialib/ContentTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_ID:Ljava/lang/String; = "2"

.field public static final AUDIO_PREFIX:Ljava/lang/String; = "audio-item-"

.field public static final IMAGE_ID:Ljava/lang/String; = "3"

.field public static final IMAGE_PREFIX:Ljava/lang/String; = "image-item-"

.field public static final ROOT_ID:Ljava/lang/String; = "0"

.field public static final VIDEO_ID:Ljava/lang/String; = "1"

.field public static final VIDEO_PREFIX:Ljava/lang/String; = "video-item-"

.field private static contentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/linkplay/medialib/ContentNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNode(Ljava/lang/String;Lcom/linkplay/medialib/ContentNode;)V
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createRootNode()Lcom/linkplay/medialib/ContentNode;
    .locals 3

    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    const-string v1, "0"

    iput-object v1, v0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    const-string v2, "-1"

    iput-object v2, v0, Lorg/teleal/cling/support/model/DIDLObject;->b:Ljava/lang/String;

    const-string v2, "GNaP MediaServer root directory"

    iput-object v2, v0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    const-string v2, "GNaP Media Server"

    iput-object v2, v0, Lorg/teleal/cling/support/model/DIDLObject;->d:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    sget-object v2, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    iput-object v2, v0, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lorg/teleal/cling/support/model/container/Container;->k:Ljava/lang/Integer;

    new-instance v2, Lcom/linkplay/medialib/ContentNode;

    invoke-direct {v2, v1, v0}, Lcom/linkplay/medialib/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    sget-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static getNode(Ljava/lang/String;)Lcom/linkplay/medialib/ContentNode;
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/medialib/ContentNode;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRootNode()Lcom/linkplay/medialib/ContentNode;
    .locals 1

    invoke-static {}, Lcom/linkplay/medialib/ContentTree;->createRootNode()Lcom/linkplay/medialib/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public static hasNode(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static showNodeList()V
    .locals 6

    sget-object v0, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "==>"

    invoke-static {v2, v3}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/linkplay/medialib/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nodelist"

    invoke-static {v3, v2}, Lorg/logger/LoggerUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
