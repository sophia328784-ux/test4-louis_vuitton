.class final Lcom/perfectcorp/common/cache/PreferencesCache$Timestamp;
.super Lcom/perfectcorp/common/cache/PreferencesCache$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/cache/PreferencesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timestamp"
.end annotation


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Component;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "key can\'t be null"

    iget-object p0, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Component;->b:Ljava/lang/String;

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/perfectcorp/common/utility/BasicPreferences;->n:Landroid/content/SharedPreferences;

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
