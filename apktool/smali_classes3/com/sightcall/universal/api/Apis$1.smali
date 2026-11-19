.class Lcom/sightcall/universal/api/Apis$1;
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
        "Lretrofit2/converter/scalars/ScalarsConverterFactory;",
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

    .line 6
    invoke-virtual {p0}, Lcom/sightcall/universal/api/Apis$1;->init()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object p0

    return-object p0
.end method

.method public init()Lretrofit2/converter/scalars/ScalarsConverterFactory;
    .locals 0

    new-instance p0, Lretrofit2/converter/scalars/ScalarsConverterFactory;

    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-object p0
.end method
