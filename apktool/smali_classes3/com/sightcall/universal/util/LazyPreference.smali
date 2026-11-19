.class public abstract Lcom/sightcall/universal/util/LazyPreference;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sightcall/universal/util/Lazy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final key:Ljava/lang/String;

.field protected final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/sightcall/universal/util/LazyPreference;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/util/LazyPreference;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply()Lcom/sightcall/universal/util/LazyPreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/sightcall/universal/util/LazyPreference<",
            "TT;>;>()TP;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/LazyPreference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public abstract init()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/util/LazyPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sightcall/universal/util/LazyPreference;->put(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
