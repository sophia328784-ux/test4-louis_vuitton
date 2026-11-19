.class final Lcom/perfectcorp/common/utility/h;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader<",
        "Ljava/lang/String;",
        "Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    invoke-direct {p0, p1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
