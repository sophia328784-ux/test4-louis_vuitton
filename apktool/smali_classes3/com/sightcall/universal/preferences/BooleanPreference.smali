.class public Lcom/sightcall/universal/preferences/BooleanPreference;
.super Lcom/sightcall/universal/preferences/BasePreference;
.source "SourceFile"


# instance fields
.field private final defaultValue:Z


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/sightcall/universal/preferences/BooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/preferences/BasePreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/sightcall/universal/preferences/BooleanPreference;->defaultValue:Z

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public get()Z
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sightcall/universal/preferences/BooleanPreference;->defaultValue:Z

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSet()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public set(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
