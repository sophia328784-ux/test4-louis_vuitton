.class public Lcom/linkplay/medialib/server/HttpServer$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/medialib/server/HttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field public header:Ljava/util/Properties;

.field public mimeType:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/linkplay/medialib/server/HttpServer;


# direct methods
.method public constructor <init>(Lcom/linkplay/medialib/server/HttpServer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->this$0:Lcom/linkplay/medialib/server/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->header:Ljava/util/Properties;

    .line 42
    const-string p1, "200 OK"

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/linkplay/medialib/server/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->this$0:Lcom/linkplay/medialib/server/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->header:Ljava/util/Properties;

    .line 37
    iput-object p2, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->status:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->mimeType:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->data:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Lcom/linkplay/medialib/server/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->this$0:Lcom/linkplay/medialib/server/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->header:Ljava/util/Properties;

    iput-object p2, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->status:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->mimeType:Ljava/lang/String;

    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const-string p2, "UTF-8"

    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/server/HttpServer$Response;->header:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
