.class public Lcom/perfectcorp/perfectlib/ph/template/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/b$a;->pattern:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    if-eq v2, v3, :cond_1

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->lastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/b$a;->pattern:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    if-eq v1, v2, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/b$a;->palette:Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    if-eq v2, v3, :cond_1

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->lastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/b$a;->texture:Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    if-eq v2, v3, :cond_1

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->lastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;->result:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/b$a;->shape:Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    if-eq v2, v3, :cond_1

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, v1, Lcom/perfectcorp/perfectlib/ph/template/b$c;->lastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
