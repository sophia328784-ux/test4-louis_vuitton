.class final Lcom/perfectcorp/perfectlib/rh/utility/networkcache/b;
.super Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;


# virtual methods
.method public final a()Lcom/perfectcorp/common/cache/PreferencesCache;
    .locals 3

    new-instance p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;

    new-instance v0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "GetShadeFinderRecommendInfoDataHandler"

    invoke-static {v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;-><init>(Lcom/perfectcorp/common/utility/BasicPreferences;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->a()V

    new-instance v0, Lcom/perfectcorp/common/cache/PreferencesCache;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/cache/PreferencesCache;-><init>(Lcom/perfectcorp/common/cache/PreferencesCache$Builder;)V

    return-object v0
.end method
