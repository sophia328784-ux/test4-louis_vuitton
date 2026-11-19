.class public Lcom/sightcall/universal/util/LazyIntegerPreference;
.super Lcom/sightcall/universal/util/LazyPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/LazyPreference<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/util/LazyPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public init()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/sightcall/universal/util/LazyIntegerPreference;->init()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 18
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/util/LazyIntegerPreference;->put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method
