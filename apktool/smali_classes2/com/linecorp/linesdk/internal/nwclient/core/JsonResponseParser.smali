.class public Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->a:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->a:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->a:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
