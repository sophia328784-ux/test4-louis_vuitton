.class Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

.field final synthetic val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

.field final synthetic val$didl:Lorg/teleal/cling/support/model/DIDLContent;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->val$didl:Lorg/teleal/cling/support/model/DIDLContent;

    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-static {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->a(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-static {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->b(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->a(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    new-instance v3, Lorg/teleal/cling/model/ContentItem;

    invoke-static {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->d(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v1, v0, v4}, Lorg/teleal/cling/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/cling/model/meta/Service;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->val$didl:Lorg/teleal/cling/support/model/DIDLContent;

    iget-object v0, v0, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/container/Container;

    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->e()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add child container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v2, Lk/a;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-static {v2}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->a(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    new-instance v4, Lorg/teleal/cling/model/ContentItem;

    invoke-static {v2}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->d(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v1, v2, v5}, Lorg/teleal/cling/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/cling/model/meta/Service;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->val$didl:Lorg/teleal/cling/support/model/DIDLContent;

    iget-object v0, v0, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    sget-object v1, Lk/a;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    if-ge v1, v2, :cond_2

    :try_start_1
    invoke-static {v3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->a(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    new-instance v3, Lorg/teleal/cling/model/ContentItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/item/Item;

    iget-object v5, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-static {v5}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->d(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/cling/model/meta/Service;)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    sget-object v2, Lk/a;->a:Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->a(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    sget-object v0, Lk/a;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-static {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->c(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-static {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->c(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    :goto_3
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->e()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating DIDL tree nodes failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object v1, Lk/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    new-instance v2, Lorg/teleal/cling/model/action/ActionException;

    sget-object v3, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v4, "Can\'t create list childs: "

    invoke-static {v4, v0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, v1, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object p0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;->val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->access$000(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void
.end method
