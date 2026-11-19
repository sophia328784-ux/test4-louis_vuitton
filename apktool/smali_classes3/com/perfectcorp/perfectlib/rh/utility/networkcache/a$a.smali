.class public final Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler<",
        "Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;",
        "Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

.field public final b:Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/b;

    invoke-direct {v0}, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->b:Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/c;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->b:Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;

    iget-object v1, p0, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a:Lcom/perfectcorp/common/cache/PreferencesCache;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a()Lcom/perfectcorp/common/cache/PreferencesCache;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a:Lcom/perfectcorp/common/cache/PreferencesCache;

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a:Lcom/perfectcorp/common/cache/PreferencesCache;

    iget-object v1, p0, Lcom/perfectcorp/common/cache/PreferencesCache;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    iget-object v2, p0, Lcom/perfectcorp/common/cache/PreferencesCache;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/common/cache/PreferencesCache;->c:Ljava/util/List;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/common/cache/PreferencesCache$Component;

    invoke-virtual {v0}, Lcom/perfectcorp/common/cache/PreferencesCache$Component;->a()V

    goto :goto_0

    :cond_1
    return-object p1
.end method
