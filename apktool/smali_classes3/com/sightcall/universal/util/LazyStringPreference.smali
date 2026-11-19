.class public Lcom/sightcall/universal/util/LazyStringPreference;
.super Lcom/sightcall/universal/util/LazyPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/LazyPreference<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/util/LazyPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/universal/util/LazyStringPreference;->init()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/util/LazyStringPreference;->put(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public put(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method
