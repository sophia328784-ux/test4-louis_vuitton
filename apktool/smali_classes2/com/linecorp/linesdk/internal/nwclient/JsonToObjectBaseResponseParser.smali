.class public abstract Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;)V

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;->a:Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;->a:Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->a:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;->b(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract b(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method
