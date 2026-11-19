.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/c;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;


# virtual methods
.method public final a()V
    .locals 1

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    const-string v0, "youcammakeup-live.sqlite"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->n(Ljava/io/File;)Z

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "LOOK_LIST_MESSAGE_DIGEST"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
