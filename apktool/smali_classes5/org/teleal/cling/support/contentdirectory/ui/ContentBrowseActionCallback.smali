.class public Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;
.super Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.source "SourceFile"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lorg/teleal/cling/support/model/container/Container;

.field private listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lorg/teleal/cling/model/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_ParentContainer:Lorg/teleal/cling/support/model/container/Container;

.field private m_myAdapter:Landroid/widget/BaseAdapter;

.field private service:Lorg/teleal/cling/model/meta/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/container/Container;Landroid/widget/ArrayAdapter;Lorg/teleal/cling/support/model/container/Container;Landroid/widget/BaseAdapter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/teleal/cling/model/meta/Service;",
            "Lorg/teleal/cling/support/model/container/Container;",
            "Landroid/widget/ArrayAdapter<",
            "Lorg/teleal/cling/model/ContentItem;",
            ">;",
            "Lorg/teleal/cling/support/model/container/Container;",
            "Landroid/widget/BaseAdapter;",
            ")V"
        }
    .end annotation

    iget-object v2, p3, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    sget-object v3, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    new-instance v0, Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v1, 0x1

    const-string v4, "dc:title"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    filled-new-array {v0}, [Lorg/teleal/cling/support/model/SortCriterion;

    move-result-object v8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v4, "*"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    iput-object p1, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->activity:Landroid/app/Activity;

    iput-object v1, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    iput-object p3, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->container:Lorg/teleal/cling/support/model/container/Container;

    iput-object p4, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->listAdapter:Landroid/widget/ArrayAdapter;

    iput-object p5, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->m_ParentContainer:Lorg/teleal/cling/support/model/container/Container;

    iput-object p6, v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->m_myAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public static bridge synthetic a(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->listAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method public static synthetic access$000(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Lorg/teleal/cling/support/model/container/Container;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->m_ParentContainer:Lorg/teleal/cling/support/model/container/Container;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Landroid/widget/BaseAdapter;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->m_myAdapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;)Lorg/teleal/cling/model/meta/Service;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    return-object p0
.end method

.method public static bridge synthetic e()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
    .locals 2

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    const-string v1, "Received browse action DIDL descriptor, creating tree nodes"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Lk/a;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0

    return-void
.end method
