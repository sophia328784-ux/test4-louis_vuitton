.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$Entry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lokhttp3/Cache$Entry;",
        "",
        "Lokio/Source;",
        "rawSource",
        "<init>",
        "(Lokio/Source;)V",
        "Lokhttp3/Response;",
        "response",
        "(Lokhttp3/Response;)V",
        "Companion",
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


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Lokhttp3/HttpUrl;

.field public final b:Lokhttp3/Headers;

.field public final c:Ljava/lang/String;

.field public final d:Lokhttp3/Protocol;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lokhttp3/Headers;

.field public final h:Lokhttp3/Handshake;

.field public final i:J

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cache$Entry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$Entry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, Lokhttp3/Cache$Entry;->k:Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Lokhttp3/Cache$Entry;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iget-object v0, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    .line 335
    iget-object v1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 336
    iput-object v1, p0, Lokhttp3/Cache$Entry;->a:Lokhttp3/HttpUrl;

    .line 337
    sget-object v1, Lokhttp3/Cache;->c:Lokhttp3/Cache$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    iget-object v1, p1, Lokhttp3/Response;->j:Lokhttp3/Response;

    .line 339
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    iget-object v1, v1, Lokhttp3/Response;->b:Lokhttp3/Request;

    .line 341
    iget-object v1, v1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 342
    iget-object v2, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    .line 343
    invoke-static {v2}, Lokhttp3/Cache$Companion;->c(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v3

    .line 344
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lokhttp3/Headers;->d:Lokhttp3/Headers;

    goto :goto_1

    .line 345
    :cond_0
    new-instance v4, Lokhttp3/Headers$Builder;

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    .line 346
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 347
    invoke-virtual {v1, v6}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v7

    .line 348
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 349
    invoke-virtual {v1, v6}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v1

    .line 351
    :goto_1
    iput-object v1, p0, Lokhttp3/Cache$Entry;->b:Lokhttp3/Headers;

    .line 352
    iget-object v0, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    .line 354
    iget-object v0, p1, Lokhttp3/Response;->c:Lokhttp3/Protocol;

    .line 355
    iput-object v0, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Protocol;

    .line 356
    iget v0, p1, Lokhttp3/Response;->e:I

    .line 357
    iput v0, p0, Lokhttp3/Cache$Entry;->e:I

    .line 358
    iget-object v0, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lokhttp3/Cache$Entry;->f:Ljava/lang/String;

    .line 360
    iput-object v2, p0, Lokhttp3/Cache$Entry;->g:Lokhttp3/Headers;

    .line 361
    iget-object v0, p1, Lokhttp3/Response;->f:Lokhttp3/Handshake;

    .line 362
    iput-object v0, p0, Lokhttp3/Cache$Entry;->h:Lokhttp3/Handshake;

    .line 363
    iget-wide v0, p1, Lokhttp3/Response;->m:J

    .line 364
    iput-wide v0, p0, Lokhttp3/Cache$Entry;->i:J

    .line 365
    iget-wide v0, p1, Lokhttp3/Response;->n:J

    .line 366
    iput-wide v0, p0, Lokhttp3/Cache$Entry;->j:J

    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cache corruption for "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Lokio/RealBufferedSource;

    invoke-direct {v1, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_7

    :try_start_2
    iput-object v6, p0, Lokhttp3/Cache$Entry;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    sget-object v4, Lokhttp3/Cache;->c:Lokhttp3/Cache$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lokhttp3/Cache$Companion;->b(Lokio/RealBufferedSource;)I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_0

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->b:Lokhttp3/Headers;

    sget-object v0, Lokhttp3/internal/http/StatusLine;->d:Lokhttp3/internal/http/StatusLine$Companion;

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lokhttp3/internal/http/StatusLine$Companion;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    iget-object v4, v0, Lokhttp3/internal/http/StatusLine;->a:Lokhttp3/Protocol;

    iput-object v4, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Protocol;

    iget v4, v0, Lokhttp3/internal/http/StatusLine;->b:I

    iput v4, p0, Lokhttp3/Cache$Entry;->e:I

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cache$Entry;->f:Ljava/lang/String;

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    sget-object v4, Lokhttp3/Cache;->c:Lokhttp3/Cache$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lokhttp3/Cache$Companion;->b(Lokio/RealBufferedSource;)I

    move-result v4

    :goto_2
    if-ge v6, v4, :cond_1

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    sget-object v4, Lokhttp3/Cache$Entry;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lokhttp3/Headers$Builder;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lokhttp3/Cache$Entry;->l:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lokhttp3/Headers$Builder;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_3

    :cond_2
    move-wide v6, v9

    :goto_3
    iput-wide v6, p0, Lokhttp3/Cache$Entry;->i:J

    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_3
    iput-wide v9, p0, Lokhttp3/Cache$Entry;->j:J

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->g:Lokhttp3/Headers;

    iget-object v0, p0, Lokhttp3/Cache$Entry;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lokhttp3/CipherSuite;->b:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v4, v0}, Lokhttp3/CipherSuite$Companion;->b(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/Cache$Entry;->a(Lokio/RealBufferedSource;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lokhttp3/Cache$Entry;->a(Lokio/RealBufferedSource;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lokio/RealBufferedSource;->Z0()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lokhttp3/TlsVersion$Companion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget-object v1, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    :goto_4
    sget-object v2, Lokhttp3/Handshake;->e:Lokhttp3/Handshake$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lokhttp3/Handshake;

    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ldb;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v6}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-direct {v3, v1, v0, v4, v5}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    iput-object v3, p0, Lokhttp3/Cache$Entry;->h:Lokhttp3/Handshake;

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \"\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iput-object v5, p0, Lokhttp3/Cache$Entry;->h:Lokhttp3/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-void

    :cond_7
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    const-string v1, "cache corruption"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1, p0}, Lokhttp3/internal/platform/Android10Platform;->e(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lokio/RealBufferedSource;)Ljava/util/List;
    .locals 7

    sget-object v0, Lokhttp3/Cache;->c:Lokhttp3/Cache$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lokhttp3/Cache$Companion;->b(Lokio/RealBufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    sget-object v6, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lokio/ByteString$Companion;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Lokio/Buffer;->l0(Lokio/ByteString;)V

    new-instance v4, Lokio/Buffer$inputStream$1;

    invoke-direct {v4, v5}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupt certificate in cache entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lokio/RealBufferedSink;Ljava/util/List;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    sget-object v2, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lokio/ByteString$Companion;->d(Lokio/ByteString$Companion;[B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p0, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 9

    iget-object v0, p0, Lokhttp3/Cache$Entry;->a:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lokhttp3/Cache$Entry;->g:Lokhttp3/Headers;

    iget-object v2, p0, Lokhttp3/Cache$Entry;->b:Lokhttp3/Headers;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->d(I)Lokio/Sink;

    move-result-object p1

    new-instance v4, Lokio/RealBufferedSink;

    invoke-direct {v4, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    :try_start_0
    iget-object p1, v0, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    const/16 p1, 0xa

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v5, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v3

    :goto_0
    const-string v7, ": "

    if-ge v6, v5, :cond_0

    :try_start_1
    invoke-virtual {v2, v6}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, v7}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lokio/BufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Lokhttp3/internal/http/StatusLine;

    iget-object v5, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Protocol;

    iget v6, p0, Lokhttp3/Cache$Entry;->e:I

    iget-object v8, p0, Lokhttp3/Cache$Entry;->f:Ljava/lang/String;

    invoke-direct {v2, v5, v6, v8}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, v7}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lokhttp3/Cache$Entry;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, v7}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    iget-wide v1, p0, Lokhttp3/Cache$Entry;->i:J

    invoke-interface {v4, v1, v2}, Lokio/BufferedSink;->F0(J)Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    sget-object v1, Lokhttp3/Cache$Entry;->l:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, v7}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    iget-wide v1, p0, Lokhttp3/Cache$Entry;->j:J

    invoke-interface {v4, v1, v2}, Lokio/BufferedSink;->F0(J)Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lokhttp3/Cache$Entry;->h:Lokhttp3/Handshake;

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    iget-object v0, v0, Lokhttp3/CipherSuite;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p0}, Lokhttp3/Handshake;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lokhttp3/Cache$Entry;->b(Lokio/RealBufferedSink;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/Handshake;->c:Ljava/util/List;

    invoke-static {v4, v0}, Lokhttp3/Cache$Entry;->b(Lokio/RealBufferedSink;Ljava/util/List;)V

    iget-object p0, p0, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    invoke-virtual {p0}, Lokhttp3/TlsVersion;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v4, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {v4}, Lokio/RealBufferedSink;->close()V

    return-void

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
