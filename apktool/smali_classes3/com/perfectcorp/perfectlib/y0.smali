.class public final synthetic Lcom/perfectcorp/perfectlib/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/y0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/y0;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/y0;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/y0;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/y0;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/y0;->c:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
