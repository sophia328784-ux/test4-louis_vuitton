.class public final Landroidx/media3/datasource/cache/CacheDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cache/CacheDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public a:Landroidx/media3/datasource/cache/SimpleCache;

.field public final b:Landroidx/media3/datasource/FileDataSource$Factory;

.field public final c:Lmd;

.field public d:Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/FileDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/FileDataSource$Factory;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->b:Landroidx/media3/datasource/FileDataSource$Factory;

    sget-object v0, Landroidx/media3/datasource/cache/CacheKeyFactory;->c0:Lmd;

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->c:Lmd;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Landroidx/media3/datasource/DataSource;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->c()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object p0

    return-object p0
.end method

.method public final c()Landroidx/media3/datasource/cache/CacheDataSource;
    .locals 11

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->d:Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c()Landroidx/media3/datasource/DefaultHttpDataSource;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget v8, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->e:I

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->a:Landroidx/media3/datasource/cache/SimpleCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_1

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_1
    new-instance v0, Landroidx/media3/datasource/cache/CacheDataSink$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/CacheDataSink$Factory;-><init>()V

    new-instance v1, Landroidx/media3/datasource/cache/CacheDataSink;

    const-wide/32 v5, 0x500000

    const/16 v0, 0x5000

    invoke-direct {v1, v3, v5, v6, v0}, Landroidx/media3/datasource/cache/CacheDataSink;-><init>(Landroidx/media3/datasource/cache/Cache;JI)V

    goto :goto_1

    :goto_2
    new-instance v2, Landroidx/media3/datasource/cache/CacheDataSource;

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->b:Landroidx/media3/datasource/FileDataSource$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v5}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    iget-object v7, p0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->c:Lmd;

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;IILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-object v2
.end method
