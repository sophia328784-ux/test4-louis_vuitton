.class public Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/screen/ScreenRecordInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl$NBSScreenRecordHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSScreenRecordControl"


# instance fields
.field private ignoreClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private ignoreConfigPageName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreConfigViewsTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignorePagesName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreViewsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreViewsTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreWebViewClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private maskImageEnabled:Z

.field private maskInputEnabled:Z

.field private maskTextEnabled:Z

.field private rects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsIds:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsTags:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigViewsTags:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreClasses:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreWebViewClasses:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignorePagesName:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigPageName:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskInputEnabled:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskTextEnabled:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskImageEnabled:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->rects:Ljava/util/List;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->defaultWebviewIgnore()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;-><init>()V

    return-void
.end method

.method private calcTextViewRect(Landroid/view/View;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;
    .locals 8

    instance-of p0, p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    move-object p0, p1

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text content is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hint is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NBSScreenRecordControl"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    aget v5, v4, v5

    iget v6, p0, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v1, v7

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_5

    aget v4, v4, v7

    iget v5, p0, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_4

    move v2, v7

    goto :goto_1

    :cond_4
    move v3, v7

    :cond_5
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    invoke-direct {v4, v5, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->OTHERS:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, v0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;-><init>(Landroid/graphics/Rect;Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;Ljava/lang/String;)V

    return-object p0

    :cond_6
    :goto_2
    return-object v0
.end method

.method private defaultWebviewIgnore()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreWebViewClasses:Ljava/util/Set;

    const-class v1, Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.smtt.sdk.WebView"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->j(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreWebViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "com.uc.webview.export.WebView"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->j(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreWebViewClasses:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getAllIgnorePageName()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignorePagesName:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigPageName:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getAllIgnoreViewsTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigViewsTags:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getIgnoreRectFromRoot(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreClasses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskInputEnabled:Z

    if-eqz v2, :cond_2

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->OTHERS:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-direct {p0, p1, v3, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreViewRect(Landroid/view/View;ZLcom/networkbench/agent/impl/session/screen/NBSMaskViewType;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreWebViewClasses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->WEB_VIEW:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-direct {p0, p1, v3, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreViewRect(Landroid/view/View;ZLcom/networkbench/agent/impl/session/screen/NBSMaskViewType;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getAllIgnoreViewsTags()Ljava/util/Set;

    move-result-object v1

    sget v2, Lcom/networkbench/R$string;->view_attached_id:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->OTHERS:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-direct {p0, p1, v2, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreViewRect(Landroid/view/View;ZLcom/networkbench/agent/impl/session/screen/NBSMaskViewType;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_8
    check-cast p1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreRectFromRoot(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->OTHERS:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-direct {p0, p1, v3, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreViewRect(Landroid/view/View;ZLcom/networkbench/agent/impl/session/screen/NBSMaskViewType;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    return-object v0

    :cond_b
    :goto_3
    const-string p0, "NBSScreenRecordControl"

    const-string p1, "view is not visible, skip"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getIgnoreViewRect(Landroid/view/View;ZLcom/networkbench/agent/impl/session/screen/NBSMaskViewType;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskTextEnabled:Z

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->calcTextViewRect(Landroid/view/View;)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskImageEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/ImageView;

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    :cond_1
    sget-object p3, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->IMAGE:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    instance-of v3, p1, Landroid/widget/EditText;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "inputType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NBSScreenRecordControl"

    invoke-static {v5, v4}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-gtz v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-gtz v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    and-int/lit16 v4, v4, 0x90

    if-gtz v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    and-int/lit16 v3, v3, 0xe0

    if-lez v3, :cond_4

    :cond_3
    const-string v1, "find password inputType"

    invoke-static {v5, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_4
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskInputEnabled:Z

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    if-nez v2, :cond_7

    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    new-instance p2, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;-><init>(Landroid/graphics/Rect;Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->WEB_VIEW:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    if-ne p3, p0, :cond_a

    sget p0, Lcom/networkbench/R$string;->webview_uuid_tag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of p3, p0, Ljava/lang/String;

    if-eqz p3, :cond_9

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->setViewId(Ljava/lang/String;)V

    return-object p2

    :cond_9
    invoke-static {}, Lcom/networkbench/agent/impl/util/ab;->b()Ljava/lang/String;

    move-result-object p0

    sget p3, Lcom/networkbench/R$string;->webview_uuid_tag:I

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->setViewId(Ljava/lang/String;)V

    :cond_a
    return-object p2

    :cond_b
    return-object v0
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl$NBSScreenRecordHolder;->resource:Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    return-object v0
.end method

.method private getTextContextPositon(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    instance-of v2, v0, Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "yAxisTop: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", xAxisLeft:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NBSScreenRecordControl"

    invoke-static {v6, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "hint is:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v8, ""

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "text is:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    sub-int/2addr v7, v5

    move-object/from16 v5, p0

    invoke-direct {v5, v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->isSingleLine(Landroid/widget/TextView;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "get textSize:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v4, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    const-string v13, ", topPadding:"

    const-string v14, ", totalpadding:"

    const-string v15, "startPadding:"

    invoke-static {v11, v12, v15, v13, v14}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    const-string v12, "height0:"

    const-string v13, ", height1:"

    invoke-static {v10, v12, v13}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v14, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", heighit2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v14, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v13, 0x2

    new-array v13, v13, [I

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v14, Landroid/graphics/Rect;

    int-to-float v11, v11

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v15

    add-float/2addr v15, v11

    float-to-int v15, v15

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v17

    add-int v4, v17, v4

    int-to-float v4, v4

    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v4, v0

    float-to-int v0, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    add-float/2addr v3, v11

    int-to-float v4, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget v4, v9, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v1, v4

    int-to-float v4, v10

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {v14, v15, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finalResult:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", measureWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textBound.wdith:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    aget v0, v13, v0

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_6

    iput v1, v14, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, v14, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    :cond_7
    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v16, 0x0

    aget v0, v13, v16

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_8

    iput v1, v14, Landroid/graphics/Rect;->left:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v14, Landroid/graphics/Rect;->right:I

    return-object v14

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, v14, Landroid/graphics/Rect;->left:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    iput v0, v14, Landroid/graphics/Rect;->right:I

    :cond_9
    return-object v14

    :cond_a
    :goto_3
    return-object v1
.end method

.method private isSingleLine(Landroid/widget/TextView;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentActivityMaskRect(II)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p1, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->ACTIVITY:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-direct {v0, v1, p1, p0}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;-><init>(Landroid/graphics/Rect;Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "activity ignore rects add  : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBSScreenRecordControl"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIgnoreFragmentRect()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getAllIgnorePageName()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIgnoreFragmentRect fragmentNames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSScreenRecordControl"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/fragmentadapt/f;->a:Lcom/networkbench/agent/impl/fragmentadapt/f;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreClasses:Ljava/util/Set;

    invoke-virtual {v1, v0, p0}, Lcom/networkbench/agent/impl/fragmentadapt/f;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIgnoreViewsRectFromRoot(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreRectFromRoot(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getIgnoredRects()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->rects:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    sget-object v7, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->OTHERS:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v7, v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;-><init>(Landroid/graphics/Rect;Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v4, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->OTHERS:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    const-string v5, ""

    invoke-direct {v0, v2, v4, v5}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;-><init>(Landroid/graphics/Rect;Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "NBSScreenRecordTimer  getIgnoredViews  rects add  : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NBSScreenRecordControl"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public isActivityInIgnore()Z
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getAllIgnorePageName()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "find activity to ignore:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NBSScreenRecordControl"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreClasses:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public maskConfigurePageName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "NBSScreenRecordControl"

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    const-class v2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v1, p1, v2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/JsonArray;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigPageName:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/com/google/gson/JsonElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore page name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigPageName:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    const-string p1, "error parse maskPageBlacklist"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public maskConfigureViewIdList(Ljava/lang/String;)V
    .locals 4

    const-string v0, "NBSScreenRecordControl"

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    const-class v2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v1, p1, v2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/JsonArray;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigViewsTags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/com/google/gson/JsonElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore view tag name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreConfigViewsTags:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    const-string p1, "error parse maskConfigureViewIdList"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public maskConfiguredView(ZZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskInputEnabled:Z

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskTextEnabled:Z

    iput-boolean p3, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskImageEnabled:Z

    const-string p0, ", maskTextEnabled:"

    const-string v0, ", maskImageEnabled:"

    const-string v1, "maskConfiguredView maskInputEnabled:"

    invoke-static {v1, p0, v0, p1, p2}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBSScreenRecordControl"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public maskPageByName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maskPageByName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSScreenRecordControl"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignorePagesName:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignorePagesName:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public maskSensitiveRegion(FF)V
    .locals 0

    .line 76
    return-void
.end method

.method public maskSensitiveRegion(Landroid/graphics/Rect;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->rects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->rects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSScreenRecordTimer maskSensitiveRegion Rect : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->rects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBSScreenRecordControl"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public maskSensitiveRegion(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "NBSScreenRecordControl"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "NBSScreenRecordTimer  maskSensitiveRegion error "

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSScreenRecordTimer maskSensitiveRegion views : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public maskViewByClass(Ljava/lang/Class;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maskViewByClass className:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSScreenRecordControl"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreClasses:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public maskViewById(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public maskViewByTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsTags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public pauseScreenRecord()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->pauseVideo()V

    return-void
.end method

.method public resumeScreenRecord()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->resumeVideo()V

    return-void
.end method

.method public startScreenRecord()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->startVideo()V

    return-void
.end method

.method public stopScreenRecord()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->stopVideo()V

    return-void
.end method

.method public unMaskPageByName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unMaskPageByName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSScreenRecordControl"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignorePagesName:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unMaskSensitiveRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->rects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unMaskSensitiveRegion(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSScreenRecordTimer unMaskSensitiveRegion views : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSScreenRecordControl"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unMaskViewByClass(Ljava/lang/Class;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unMaskViewByClass className:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSScreenRecordControl"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreClasses:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unMaskViewById(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unMaskViewByTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->ignoreViewsTags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unmaskSensitiveRegion(FF)V
    .locals 0

    return-void
.end method
