.class public Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public body:Ljava/lang/String;

.field public bytes:[B

.field public code:I

.field public headers:Lokhttp3/Headers;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->url:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->code:I

    return-void
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 1

    iget p0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->code:I

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
