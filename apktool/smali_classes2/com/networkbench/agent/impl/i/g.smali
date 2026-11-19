.class public Lcom/networkbench/agent/impl/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ViewStatusCalc"


# instance fields
.field private b:Lcom/networkbench/agent/impl/i/e;

.field private c:J

.field private d:J

.field private e:Lcom/networkbench/agent/impl/i/c;

.field private f:J

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/networkbench/agent/impl/data/type/p;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/i/e;->d:Lcom/networkbench/agent/impl/i/e;

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->b:Lcom/networkbench/agent/impl/i/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->c:J

    new-instance v0, Lcom/networkbench/agent/impl/i/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/i/a;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->e:Lcom/networkbench/agent/impl/i/c;

    iget-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->c:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/g;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/i/g;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->m:Ljava/util/List;

    iput p1, p0, Lcom/networkbench/agent/impl/i/g;->l:I

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Z
    .locals 0

    .line 241
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/view/ViewGroup;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private a(Landroid/widget/ImageView;)Z
    .locals 0

    .line 239
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 240
    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_0

    instance-of p1, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-nez p1, :cond_0

    instance-of p1, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez p1, :cond_0

    instance-of p1, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_0

    instance-of p0, p0, Landroid/graphics/drawable/PictureDrawable;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/i/g;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "view is not visible, skip calc rect view is:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewStatusCalc"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget v1, Lcom/networkbench/R$string;->view_status_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_INVALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->getViewStatusValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_IGNORE:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->getViewStatusValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_VALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->getViewStatusValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/i/g;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/i/g;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private c(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/i/g;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    instance-of v1, p1, Landroid/view/ViewStub;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102002f

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/i/g;->h:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020030

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/i/g;->i:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/i/g;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return v0
.end method

.method private e()V
    .locals 2

    .line 43
    sget-object v0, Lcom/networkbench/agent/impl/i/e;->a:Lcom/networkbench/agent/impl/i/e;

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->b:Lcom/networkbench/agent/impl/i/e;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->d:J

    return-void
.end method

.method private e(Landroid/view/View;)Z
    .locals 3

    instance-of v0, p1, Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_3

    const-string v0, "com.tencent.smtt.sdk.WebView"

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.uc.webview.export.WebView"

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private f()Landroid/view/View;
    .locals 4

    .line 117
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getRootViews()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 118
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 119
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    .line 120
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->isDecorViewClass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method private f(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/i/g;->k:Z

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    return v2

    :cond_2
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_3
    instance-of v1, p1, Landroid/webkit/WebView;

    if-nez v1, :cond_6

    const-string v1, "com.tencent.smtt.sdk.WebView"

    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.uc.webview.export.WebView"

    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/networkbench/agent/impl/i/g;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    :cond_6
    :goto_0
    return v2

    :goto_1
    const-string p1, "ViewStatusCalc"

    const-string v1, "error in isViewClassAvalid"

    invoke-static {p1, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return v0
.end method

.method private g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getViewClassWhitelist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getViewClassWhitelist()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private h()Z
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/i/g;->f:J

    sub-long/2addr v0, v2

    iget p0, p0, Lcom/networkbench/agent/impl/i/g;->l:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private i()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 243
    iget-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->d:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/i/g;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public a(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/networkbench/agent/impl/i/g;->l:I

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/type/p;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->m:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/g;->h()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ViewStatusCalc"

    if-eqz v0, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/i/e;->b:Lcom/networkbench/agent/impl/i/e;

    iput-object p1, p0, Lcom/networkbench/agent/impl/i/g;->b:Lcom/networkbench/agent/impl/i/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/networkbench/agent/impl/i/g;->d:J

    const-string p0, "page visible has timeout"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/i/g;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "decorView is not visible"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "decorView has no child"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/i/g;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avalidRects size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", disableRects size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/i/g;->e:Lcom/networkbench/agent/impl/i/c;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v6, p0, Lcom/networkbench/agent/impl/i/g;->h:I

    sub-int/2addr p1, v6

    iget v6, p0, Lcom/networkbench/agent/impl/i/g;->i:I

    sub-int/2addr p1, v6

    invoke-interface {v2, v4, v3, v5, p1}, Lcom/networkbench/agent/impl/i/c;->a(Ljava/util/List;Ljava/util/List;II)Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/networkbench/agent/impl/i/g;->k:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/g;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v0

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/g;->e()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method public b()I
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->e:Lcom/networkbench/agent/impl/i/c;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/i/c;->a()I

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/g;->b:Lcom/networkbench/agent/impl/i/e;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/i/e;->a()I

    move-result p0

    return p0
.end method

.method public d()V
    .locals 2

    .line 69
    sget-object v0, Lcom/networkbench/agent/impl/i/e;->c:Lcom/networkbench/agent/impl/i/e;

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/g;->b:Lcom/networkbench/agent/impl/i/e;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/i/g;->d:J

    return-void
.end method
