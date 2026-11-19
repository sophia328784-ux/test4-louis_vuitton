.class public final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/cache/CacheProviders$CacheProvider;
.implements Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/CacheProviders$Helper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/cache/CacheProviders$CacheProvider;",
        "Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/CacheProviders$Helper<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;


# instance fields
.field public final a:Lcom/perfectcorp/common/utility/BasicPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->b:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "com.cyberlink.youcammakeup.utility.networkcache.GetLookListCacheProvider"

    invoke-static {v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-string v1, "cacheKey"

    const-string v2, ""

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    return-object p0
.end method
