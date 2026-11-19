.class Lcom/sightcall/universal/api/Apis$6;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/Apis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Lretrofit2/converter/moshi/MoshiConverterFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/sightcall/universal/api/Apis$6;->init()Lretrofit2/converter/moshi/MoshiConverterFactory;

    move-result-object p0

    return-object p0
.end method

.method public init()Lretrofit2/converter/moshi/MoshiConverterFactory;
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->a()Lcom/sightcall/universal/util/Lazy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/moshi/Moshi;

    if-eqz p0, :cond_0

    new-instance v0, Lretrofit2/converter/moshi/MoshiConverterFactory;

    invoke-direct {v0, p0}, Lretrofit2/converter/moshi/MoshiConverterFactory;-><init>(Lcom/squareup/moshi/Moshi;)V

    return-object v0

    :cond_0
    const-string p0, "moshi == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
