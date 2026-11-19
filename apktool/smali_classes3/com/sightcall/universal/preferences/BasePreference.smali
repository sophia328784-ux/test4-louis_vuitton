.class Lcom/sightcall/universal/preferences/BasePreference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final key:Ljava/lang/String;

.field protected final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

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

.method public isSet()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
