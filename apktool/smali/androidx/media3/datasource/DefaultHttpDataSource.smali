.class public Landroidx/media3/datasource/DefaultHttpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;,
        Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    }
.end annotation


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public final j:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public k:Landroidx/media3/datasource/DataSpec;

.field public l:Ljava/net/HttpURLConnection;

.field public m:Ljava/io/InputStream;

.field public n:Z

.field public o:I

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLandroidx/media3/datasource/HttpDataSource$RequestProperties;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->h:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->f:I

    iput p3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->g:I

    iput-boolean p4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->e:Z

    iput-object p5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->i:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->j:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/DataSpec;)J
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    iput-object v5, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->k:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->q:J

    iput-wide v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->p:J

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->q(Landroidx/media3/datasource/DataSpec;)V

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x24

    if-ge v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->threadId()J

    move-result-wide v6

    :goto_0
    long-to-int v0, v6

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->u(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-wide v6, v5, Landroidx/media3/datasource/DataSpec;->g:J

    iget-wide v8, v5, Landroidx/media3/datasource/DataSpec;->f:J

    iput-object v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->l:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v10

    iput v10, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->o:I

    move-wide v10, v2

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->l(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    iget v3, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->o:I

    const-string v12, "Content-Range"

    const/16 v13, 0xc8

    const-wide/16 v14, -0x1

    move-wide/from16 v16, v10

    if-lt v3, v13, :cond_1

    const/16 v10, 0x12b

    if-le v3, v10, :cond_2

    :cond_1
    move-wide/from16 v18, v14

    goto/16 :goto_8

    :cond_2
    sget-object v2, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->o:I

    if-ne v2, v13, :cond_4

    cmp-long v2, v8, v16

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-wide/from16 v8, v16

    :goto_1
    const-string v2, "Content-Encoding"

    invoke-static {v2, v0}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    cmp-long v3, v6, v14

    if-eqz v3, :cond_5

    iput-wide v6, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->p:J

    goto/16 :goto_5

    :cond_5
    const-string v3, "Content-Length"

    invoke-static {v3, v0}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v0}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/media3/datasource/HttpUtil;->a:Ljava/util/regex/Pattern;

    const-string v7, "Inconsistent headers ["

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "]"

    if-nez v10, :cond_6

    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Unexpected Content-Length ["

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    :cond_6
    move-wide v12, v14

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Landroidx/media3/datasource/HttpUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_8

    move-wide/from16 v18, v14

    const/4 v14, 0x2

    :try_start_2
    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sub-long v14, v14, v20

    const-wide/16 v20, 0x1

    add-long v14, v14, v20

    cmp-long v10, v12, v16

    if-gez v10, :cond_7

    move-wide v12, v14

    goto :goto_3

    :cond_7
    cmp-long v10, v12, v14

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected Content-Range ["

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-wide/from16 v18, v14

    :cond_9
    :goto_3
    cmp-long v3, v12, v18

    if-eqz v3, :cond_a

    sub-long v14, v12, v8

    goto :goto_4

    :cond_a
    move-wide/from16 v14, v18

    :goto_4
    iput-wide v14, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->p:J

    goto :goto_5

    :cond_b
    iput-wide v6, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->p:J

    :goto_5
    const/16 v3, 0x7d0

    :try_start_3
    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_c

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_c
    :goto_6
    iput-boolean v4, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->n:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->r(Landroidx/media3/datasource/DataSpec;)V

    :try_start_4
    invoke-virtual {v1, v8, v9, v5}, Landroidx/media3/datasource/DefaultHttpDataSource;->w(JLandroidx/media3/datasource/DataSpec;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    iget-wide v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->p:J

    return-wide v0

    :catch_3
    move-exception v0

    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->s()V

    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_d

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_d
    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, v5, v3, v4}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v1

    :goto_7
    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->s()V

    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, v5, v3, v4}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v1

    :goto_8
    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->f(Ljava/net/URLConnection;)Ljava/util/Map;

    move-result-object v3

    iget v10, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->o:I

    const/16 v11, 0x1a0

    if-ne v10, v11, :cond_11

    invoke-static {v12, v0}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Landroidx/media3/datasource/HttpUtil;->a:Ljava/util/regex/Pattern;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_e
    move-wide/from16 v12, v18

    goto :goto_9

    :cond_f
    sget-object v12, Landroidx/media3/datasource/HttpUtil;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_9
    cmp-long v8, v8, v12

    if-nez v8, :cond_11

    iput-boolean v4, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->n:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->r(Landroidx/media3/datasource/DataSpec;)V

    cmp-long v0, v6, v18

    if-eqz v0, :cond_10

    return-wide v6

    :cond_10
    return-wide v16

    :cond_11
    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_5
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_a

    :cond_12
    sget-object v0, Landroidx/media3/common/util/Util;->b:[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_a
    move-object v6, v0

    goto :goto_b

    :catch_4
    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    goto :goto_a

    :goto_b
    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->s()V

    iget v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->o:I

    if-ne v0, v11, :cond_13

    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v4, 0x7d8

    invoke-direct {v0, v4}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    new-instance v4, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v1, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->o:I

    move-object/from16 v22, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v4, v22

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    throw v0

    :catch_5
    move-exception v0

    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->s()V

    invoke-static {v0, v5, v4}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->a(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->k:Landroidx/media3/datasource/DataSpec;

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->s()V

    iget-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->n:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->n:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->p()V

    :cond_1
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->l:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->k:Landroidx/media3/datasource/DataSpec;

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void

    :goto_1
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->s()V

    iget-boolean v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->n:Z

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->n:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->p()V

    :cond_2
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->l:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->k:Landroidx/media3/datasource/DataSpec;

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v2
.end method

.method public final f()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->l:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->f(Ljava/net/URLConnection;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->k:Landroidx/media3/datasource/DataSpec;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->p:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->q:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    return v3

    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->q:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->q:J

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->o(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->k:Landroidx/media3/datasource/DataSpec;

    sget-object p2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p1, p0, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->a(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p0

    throw p0
.end method

.method public final s()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->l:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Unexpected error while disconnecting"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string p1, "Unsupported protocol redirect: "

    invoke-static {p1, p2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw p0

    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->e:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disallowed cross-protocol redirect ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw p0

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p1, p0, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw p1

    :cond_4
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw p0
.end method

.method public final u(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    new-instance v1, Ljava/net/URL;

    iget-object v2, v11, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v2, v11, Landroidx/media3/datasource/DataSpec;->c:I

    iget-object v3, v11, Landroidx/media3/datasource/DataSpec;->d:[B

    iget-wide v4, v11, Landroidx/media3/datasource/DataSpec;->f:J

    iget-wide v6, v11, Landroidx/media3/datasource/DataSpec;->g:J

    iget v8, v11, Landroidx/media3/datasource/DataSpec;->i:I

    const/4 v12, 0x1

    and-int/2addr v8, v12

    const/4 v9, 0x0

    if-ne v8, v12, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    iget-boolean v10, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->e:Z

    if-nez v10, :cond_1

    const/4 v9, 0x1

    iget-object v10, v11, Landroidx/media3/datasource/DataSpec;->e:Ljava/util/Map;

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->v(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_1
    add-int/lit8 v13, v9, 0x1

    const/16 v0, 0x14

    if-gt v9, v0, :cond_7

    const/4 v9, 0x0

    iget-object v10, v11, Landroidx/media3/datasource/DataSpec;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->v(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v9

    invoke-static {v9}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v10

    const-string v14, "Location"

    invoke-static {v14, v9}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x12e

    if-eq v2, v12, :cond_2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_3

    :cond_2
    const/16 v12, 0x12c

    if-eq v10, v12, :cond_6

    const/16 v12, 0x12d

    if-eq v10, v12, :cond_6

    if-eq v10, v15, :cond_6

    const/16 v12, 0x12f

    if-eq v10, v12, :cond_6

    const/16 v12, 0x133

    if-eq v10, v12, :cond_6

    const/16 v12, 0x134

    if-ne v10, v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/16 v12, 0x12c

    if-eq v10, v12, :cond_4

    const/16 v12, 0x12d

    if-eq v10, v12, :cond_4

    if-eq v10, v15, :cond_4

    const/16 v12, 0x12f

    if-ne v10, v12, :cond_5

    :cond_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v0, v1, v14, v11}, Landroidx/media3/datasource/DefaultHttpDataSource;->t(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    return-object v9

    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v0, v1, v14, v11}, Landroidx/media3/datasource/DefaultHttpDataSource;->t(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v1

    :goto_3
    move v9, v13

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/net/NoRouteToHostException;

    const-string v2, "Too many redirects: "

    invoke-static {v13, v2}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v11, v2, v3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v0
.end method

.method public final v(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->f:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->g:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->i:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->j:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p10, Landroidx/media3/datasource/HttpUtil;->a:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    cmp-long p10, p4, v0

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    if-nez p10, :cond_2

    cmp-long p10, p6, v1

    if-nez p10, :cond_2

    move-object p4, v0

    goto :goto_1

    :cond_2
    const-string p10, "bytes="

    const-string v3, "-"

    invoke-static {p4, p5, p10, v3}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p10

    cmp-long v1, p6, v1

    if-eqz v1, :cond_3

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_4

    const-string p5, "Range"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->h:Ljava/lang/String;

    if-eqz p0, :cond_5

    const-string p4, "User-Agent"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p8, :cond_6

    const-string p0, "gzip"

    goto :goto_2

    :cond_6
    const-string p0, "identity"

    :goto_2
    const-string p4, "Accept-Encoding"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x1

    if-eqz p3, :cond_7

    move p4, p0

    goto :goto_3

    :cond_7
    const/4 p4, 0x0

    :goto_3
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    sget p4, Landroidx/media3/datasource/DataSpec;->j:I

    if-eq p2, p0, :cond_a

    const/4 p0, 0x2

    if-eq p2, p0, :cond_9

    const/4 p0, 0x3

    if-ne p2, p0, :cond_8

    const-string p0, "HEAD"

    goto :goto_4

    :cond_8
    invoke-static {}, Lr81;->b()V

    return-object v0

    :cond_9
    const-string p0, "POST"

    goto :goto_4

    :cond_a
    const-string p0, "GET"

    :goto_4
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_b

    array-length p0, p3

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-object p1

    :cond_b
    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public final w(JLandroidx/media3/datasource/DataSpec;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_3

    const-wide/16 v3, 0x1000

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->m:Ljava/io/InputStream;

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    int-to-long v4, v3

    sub-long/2addr p1, v4

    invoke-virtual {p0, v3}, Landroidx/media3/datasource/BaseDataSource;->o(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 p1, 0x7d8

    invoke-direct {p0, p3, p1, v5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    throw p0

    :cond_2
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 p2, 0x7d0

    invoke-direct {p0, p1, p3, p2, v5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
