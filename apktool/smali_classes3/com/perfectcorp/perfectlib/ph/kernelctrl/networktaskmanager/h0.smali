.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;

.field public final synthetic c:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;->c:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;->c:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->F:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->i()V

    iget-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->D:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "ExtStr3"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "LookInfo"

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "GUID = ?"

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "LookInfoDao"

    const-string v1, "updateFilterGuid failed"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->i()V

    goto :goto_0

    :cond_2
    return-void
.end method
