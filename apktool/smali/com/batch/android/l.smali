.class public Lcom/batch/android/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/batch/android/BatchAttributesFetchListener;Z)V
    .locals 2

    if-eqz p0, :cond_1

    .line 153
    new-instance v0, Loq0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Loq0;-><init>(Landroid/content/Context;ZLjava/lang/Object;I)V

    if-eqz p2, :cond_0

    const-wide/16 p0, 0x0

    .line 154
    invoke-static {p0, p1, v0}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {v0}, Loq0;->run()V

    return-void

    .line 156
    :cond_1
    const-string p0, "Context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/batch/android/BatchTagCollectionsFetchListener;Z)V
    .locals 2

    if-eqz p0, :cond_1

    .line 157
    new-instance v0, Loq0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, p1, v1}, Loq0;-><init>(Landroid/content/Context;ZLjava/lang/Object;I)V

    if-eqz p2, :cond_0

    const-wide/16 p0, 0x0

    .line 158
    invoke-static {p0, p1, v0}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    return-void

    .line 159
    :cond_0
    invoke-virtual {v0}, Loq0;->run()V

    return-void

    .line 160
    :cond_1
    const-string p0, "Context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;ZLcom/batch/android/BatchAttributesFetchListener;)V
    .locals 7

    invoke-static {p0}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const-string v0, "User"

    const-string v2, "Datasource error."

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/l1/c;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/batch/android/l$a;->a:[I

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/batch/android/l1/d;

    iget-object v5, v5, Lcom/batch/android/l1/d;->b:Lcom/batch/android/l1/a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->URL:Lcom/batch/android/BatchUserAttribute$Type;

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->STRING:Lcom/batch/android/BatchUserAttribute$Type;

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->DOUBLE:Lcom/batch/android/BatchUserAttribute$Type;

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->LONGLONG:Lcom/batch/android/BatchUserAttribute$Type;

    goto :goto_1

    :pswitch_4
    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->DATE:Lcom/batch/android/BatchUserAttribute$Type;

    goto :goto_1

    :pswitch_5
    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->BOOL:Lcom/batch/android/BatchUserAttribute$Type;

    :goto_1
    new-instance v5, Lcom/batch/android/BatchUserAttribute;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/batch/android/l1/d;

    iget-object v6, v6, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    invoke-direct {v5, v6, v4}, Lcom/batch/android/BatchUserAttribute;-><init>(Ljava/lang/Object;Lcom/batch/android/BatchUserAttribute$Type;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v2, 0x0

    :cond_2
    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lj91;

    invoke-direct {p0, p2, v2, v1}, Lj91;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    if-eqz p2, :cond_5

    if-eqz v2, :cond_4

    invoke-interface {p2, v2}, Lcom/batch/android/BatchAttributesFetchListener;->onSuccess(Ljava/util/Map;)V

    return-void

    :cond_4
    invoke-interface {p2}, Lcom/batch/android/BatchAttributesFetchListener;->onError()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a(Landroid/content/Context;ZLcom/batch/android/BatchTagCollectionsFetchListener;)V
    .locals 2

    .line 144
    invoke-static {p0}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "User"

    const-string v1, "Datasource error."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/l1/c;->c()Ljava/util/Map;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 147
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance p0, Lj91;

    const/4 v1, 0x3

    invoke-direct {p0, p2, v0, v1}, Lj91;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_3

    if-nez v0, :cond_2

    .line 149
    invoke-interface {p2}, Lcom/batch/android/BatchTagCollectionsFetchListener;->onError()V

    return-void

    .line 150
    :cond_2
    invoke-interface {p2, v0}, Lcom/batch/android/BatchTagCollectionsFetchListener;->onSuccess(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchAttributesFetchListener;Ljava/util/HashMap;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p0, p1}, Lcom/batch/android/BatchAttributesFetchListener;->onSuccess(Ljava/util/Map;)V

    return-void

    .line 162
    :cond_0
    invoke-interface {p0}, Lcom/batch/android/BatchAttributesFetchListener;->onError()V

    :cond_1
    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchTagCollectionsFetchListener;Ljava/util/Map;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 151
    invoke-interface {p0}, Lcom/batch/android/BatchTagCollectionsFetchListener;->onError()V

    return-void

    .line 152
    :cond_0
    invoke-interface {p0, p1}, Lcom/batch/android/BatchTagCollectionsFetchListener;->onSuccess(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/batch/android/BatchAttributesFetchListener;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/l;->a(Lcom/batch/android/BatchAttributesFetchListener;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;ZLcom/batch/android/BatchTagCollectionsFetchListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l;->a(Landroid/content/Context;ZLcom/batch/android/BatchTagCollectionsFetchListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/batch/android/BatchTagCollectionsFetchListener;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/l;->a(Lcom/batch/android/BatchTagCollectionsFetchListener;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;ZLcom/batch/android/BatchAttributesFetchListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l;->a(Landroid/content/Context;ZLcom/batch/android/BatchAttributesFetchListener;)V

    return-void
.end method
