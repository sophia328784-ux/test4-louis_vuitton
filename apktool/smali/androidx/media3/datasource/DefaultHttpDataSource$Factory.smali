.class public final Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->a:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    const/16 v0, 0x1f40

    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c:I

    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->d:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Landroidx/media3/datasource/DataSource;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c()Landroidx/media3/datasource/DefaultHttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b()Landroidx/media3/datasource/DefaultHttpDataSource;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c()Landroidx/media3/datasource/DefaultHttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public final c()Landroidx/media3/datasource/DefaultHttpDataSource;
    .locals 6

    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->b:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c:I

    iget v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->d:I

    iget-boolean v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->e:Z

    iget-object v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->a:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLandroidx/media3/datasource/HttpDataSource$RequestProperties;)V

    return-object v0
.end method
