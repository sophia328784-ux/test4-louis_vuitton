.class public Lcom/sightcall/universal/util/LazyEnumPreference;
.super Lcom/sightcall/universal/util/LazyPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/sightcall/universal/util/LazyPreference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/sightcall/universal/util/LazyPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/sightcall/universal/util/LazyEnumPreference;->enumType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public init()Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sightcall/universal/util/LazyEnumPreference;->enumType:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    return-object p0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/sightcall/universal/util/LazyEnumPreference;->init()Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Enum;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 15
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/util/LazyEnumPreference;->put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Enum;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method
