.class Lcom/linkplay/medialib/server/HttpServer$2;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/medialib/server/HttpServer;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/linkplay/medialib/server/HttpServer$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/medialib/server/HttpServer;

.field final synthetic val$dataLen:J


# direct methods
.method public constructor <init>(Lcom/linkplay/medialib/server/HttpServer;Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/medialib/server/HttpServer$2;->this$0:Lcom/linkplay/medialib/server/HttpServer;

    iput-wide p3, p0, Lcom/linkplay/medialib/server/HttpServer$2;->val$dataLen:J

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/linkplay/medialib/server/HttpServer$2;->val$dataLen:J

    long-to-int p0, v0

    return p0
.end method
