.class public Lokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lokhttp3/Response$Builder;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/Response;",
        "response",
        "(Lokhttp3/Response;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Lokhttp3/Request;

.field public b:Lokhttp3/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lokhttp3/Handshake;

.field public f:Lokhttp3/Headers$Builder;

.field public g:Lokhttp3/ResponseBody;

.field public h:Lokio/Socket;

.field public i:Lokhttp3/Response;

.field public j:Lokhttp3/Response;

.field public k:Lokhttp3/Response;

.field public l:J

.field public m:J

.field public n:Lokhttp3/internal/connection/Exchange;

.field public o:Lokhttp3/TrailersSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lokhttp3/Response$Builder;->c:I

    .line 84
    sget-object v0, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 85
    sget-object v0, Lokhttp3/TrailersSource;->a:Lokhttp3/TrailersSource$Companion$EMPTY$1;

    iput-object v0, p0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    .line 86
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$Builder;->c:I

    sget-object v0, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    sget-object v0, Lokhttp3/TrailersSource;->a:Lokhttp3/TrailersSource$Companion$EMPTY$1;

    iput-object v0, p0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    iget-object v0, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    iput-object v0, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    iget-object v0, p1, Lokhttp3/Response;->c:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    iget v0, p1, Lokhttp3/Response;->e:I

    iput v0, p0, Lokhttp3/Response$Builder;->c:I

    iget-object v0, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Response;->f:Lokhttp3/Handshake;

    iput-object v0, p0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    iget-object v0, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->h()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    iget-object v0, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    iget-object v0, p1, Lokhttp3/Response;->i:Lokio/Socket;

    iput-object v0, p0, Lokhttp3/Response$Builder;->h:Lokio/Socket;

    iget-object v0, p1, Lokhttp3/Response;->j:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    iget-object v0, p1, Lokhttp3/Response;->k:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    iget-object v0, p1, Lokhttp3/Response;->l:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    iget-wide v0, p1, Lokhttp3/Response;->m:J

    iput-wide v0, p0, Lokhttp3/Response$Builder;->l:J

    iget-wide v0, p1, Lokhttp3/Response;->n:J

    iput-wide v0, p0, Lokhttp3/Response$Builder;->m:J

    iget-object v0, p1, Lokhttp3/Response;->o:Lokhttp3/internal/connection/Exchange;

    iput-object v0, p0, Lokhttp3/Response$Builder;->n:Lokhttp3/internal/connection/Exchange;

    iget-object p1, p1, Lokhttp3/Response;->p:Lokhttp3/TrailersSource;

    iput-object p1, p0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    return-void
.end method

.method public static b(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lokhttp3/Response;->j:Lokhttp3/Response;

    if-nez v0, :cond_2

    iget-object v0, p1, Lokhttp3/Response;->k:Lokhttp3/Response;

    if-nez v0, :cond_1

    iget-object p1, p1, Lokhttp3/Response;->l:Lokhttp3/Response;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/Response;
    .locals 19

    move-object/from16 v0, p0

    iget v4, v0, Lokhttp3/Response$Builder;->c:I

    const/4 v1, 0x0

    if-ltz v4, :cond_3

    move-object v2, v1

    iget-object v1, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    if-eqz v1, :cond_2

    move-object v3, v2

    iget-object v2, v0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    move-object v5, v3

    if-eqz v2, :cond_1

    iget-object v3, v0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v5, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    iget-object v6, v0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v6

    iget-object v7, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    iget-object v8, v0, Lokhttp3/Response$Builder;->h:Lokio/Socket;

    iget-object v9, v0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    iget-object v10, v0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    iget-object v11, v0, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    iget-wide v12, v0, Lokhttp3/Response$Builder;->l:J

    iget-wide v14, v0, Lokhttp3/Response$Builder;->m:J

    move-object/from16 v16, v1

    iget-object v1, v0, Lokhttp3/Response$Builder;->n:Lokhttp3/internal/connection/Exchange;

    iget-object v0, v0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    move-object/from16 v17, v0

    new-instance v0, Lokhttp3/Response;

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;Lokhttp3/TrailersSource;)V

    return-object v0

    :cond_0
    const-string v0, "message == null"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    const-string v0, "protocol == null"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    move-object v5, v2

    const-string v0, "request == null"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_3
    move-object v5, v1

    const-string v1, "code < 0: "

    iget v0, v0, Lokhttp3/Response$Builder;->c:I

    invoke-static {v0, v1}, Lct0;->e(ILjava/lang/String;)V

    return-object v5
.end method
