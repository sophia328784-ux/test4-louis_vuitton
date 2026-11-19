.class public Lcom/sightcall/universal/preferences/LongPreference;
.super Lcom/sightcall/universal/preferences/BasePreference;
.source "SourceFile"


# instance fields
.field private final defaultValue:J


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sightcall/universal/preferences/LongPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/preferences/BasePreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 7
    iput-wide p3, p0, Lcom/sightcall/universal/preferences/LongPreference;->defaultValue:J

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

.method public get()J
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sightcall/universal/preferences/LongPreference;->defaultValue:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSet()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public set(J)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/preferences/BasePreference;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/preferences/BasePreference;->key:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
