.class public Lcom/sightcall/universal/agent/DatePreference;
.super Lcom/sightcall/universal/preferences/GenericPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/preferences/GenericPreference<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/preferences/GenericPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/DatePreference;->get()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/agent/DatePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/agent/DatePreference;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/preferences/GenericPreference;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sightcall/universal/agent/DatePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/sightcall/universal/agent/DatePreference;->key:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/DatePreference;->set(Ljava/util/Date;)V

    return-void
.end method

.method public set(Ljava/util/Date;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/preferences/GenericPreference;->delete()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/agent/DatePreference;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/agent/DatePreference;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
