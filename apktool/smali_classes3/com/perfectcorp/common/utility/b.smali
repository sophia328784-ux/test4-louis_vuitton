.class final Lcom/perfectcorp/common/utility/b;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader<",
        "Landroid/content/SharedPreferences;",
        "Lcom/perfectcorp/common/utility/a;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/SharedPreferences;

    new-instance p0, Lcom/perfectcorp/common/utility/a;

    invoke-direct {p0, p1}, Lcom/perfectcorp/common/utility/a;-><init>(Landroid/content/SharedPreferences;)V

    return-object p0
.end method
