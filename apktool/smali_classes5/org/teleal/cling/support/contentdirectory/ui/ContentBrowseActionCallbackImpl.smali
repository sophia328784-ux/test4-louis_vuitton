.class public abstract Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;
.super Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.source "SourceFile"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private service:Lorg/teleal/cling/model/meta/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;IILorg/teleal/cling/support/model/container/Container;)V
    .locals 9

    iget-object v2, p4, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    sget-object v3, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    int-to-long v5, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance p2, Lorg/teleal/cling/support/model/SortCriterion;

    const/4 p3, 0x1

    const-string p4, "dc:title"

    invoke-direct {p2, p3, p4}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    filled-new-array {p2}, [Lorg/teleal/cling/support/model/SortCriterion;

    move-result-object v8

    const-string v4, "*"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    iput-object v1, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->service:Lorg/teleal/cling/model/meta/Service;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/container/Container;)V
    .locals 9

    .line 52
    iget-object v2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 53
    sget-object v3, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    new-instance p2, Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v0, 0x1

    const-string v1, "dc:title"

    invoke-direct {p2, v0, v1}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    filled-new-array {p2}, [Lorg/teleal/cling/support/model/SortCriterion;

    move-result-object v8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v4, "*"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    .line 54
    iput-object v1, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->service:Lorg/teleal/cling/model/meta/Service;

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract onReceiveCallback(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/teleal/cling/model/ContentItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
    .locals 5

    sget-object p1, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Received browse action DIDL descriptor, creating tree nodes"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p2, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/container/Container;

    sget-object v2, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add child container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v2, Lorg/teleal/cling/model/ContentItem;

    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->service:Lorg/teleal/cling/model/meta/Service;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v1, v3, v4}, Lorg/teleal/cling/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/cling/model/meta/Service;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    iget-object v0, p2, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p2, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    sget-object v0, Lk/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/item/Item;

    sget-object v2, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add child item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v2, Lorg/teleal/cling/model/ContentItem;

    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->service:Lorg/teleal/cling/model/meta/Service;

    invoke-direct {v2, v1, v3}, Lorg/teleal/cling/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/cling/model/meta/Service;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->onReceiveCallback(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0

    return-void
.end method
