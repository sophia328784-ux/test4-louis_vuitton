.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

.field public final synthetic d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v2, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v6

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    invoke-static {v2}, Lcom/perfectcorp/common/utility/FileUtils;->d(Ljava/io/File;)J

    move-result-wide v12

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->NAIL_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    :goto_0
    move-object v10, v8

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->JEWELRY_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->MAKEUP_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    goto :goto_0

    :goto_1
    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    invoke-direct/range {v8 .. v13}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;Ljava/lang/String;J)V

    invoke-static {p0, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;

    invoke-direct {v2, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;)V

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, ""

    :goto_2
    iput-object v6, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->l:Ljava/lang/String;

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    invoke-direct {v6, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;)V

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->j(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->p:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;

    invoke-direct {v8, v0, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/template/n;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeupitem/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/n;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    new-instance v10, Lcom/perfectcorp/perfectlib/ph/template/n;

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/template/n;->b:Ljava/util/List;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/n;->b:Ljava/util/List;

    new-array v12, v6, [Ljava/util/List;

    aput-object v9, v12, v7

    aput-object v8, v12, v5

    invoke-static {v12}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    move-object v8, v10

    :goto_4
    invoke-virtual {v2, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/n;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeupitem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/n;)V

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/n;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v2, v8}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeupitem/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/n;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    new-instance v9, Lcom/perfectcorp/perfectlib/ph/template/n;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/n;->b:Ljava/util/List;

    new-array v6, v6, [Ljava/util/List;

    aput-object v2, v6, v7

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/n;->b:Ljava/util/List;

    aput-object v0, v6, v5

    invoke-static {v6}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v8, v0}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    move-object v0, v9

    :goto_6
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeupitem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/n;)V

    :cond_8
    iget-object v0, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    if-ne v6, v7, :cond_9

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-direct {v6, v2, v7, v4, v5}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    goto :goto_7

    :cond_a
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    :cond_b
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;->b:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    return-void
.end method
