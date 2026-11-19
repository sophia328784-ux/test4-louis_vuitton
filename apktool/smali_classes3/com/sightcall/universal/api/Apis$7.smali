.class Lcom/sightcall/universal/api/Apis$7;
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
        "Lretrofit2/Retrofit;",
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

    invoke-virtual {p0}, Lcom/sightcall/universal/api/Apis$7;->init()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public init()Lretrofit2/Retrofit;
    .locals 0

    .line 5
    invoke-static {}, Lcom/sightcall/universal/api/Apis;->c()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method
