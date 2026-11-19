.class public final Landroidx/media3/datasource/DataSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:J

.field public c:I

.field public d:[B

.field public e:Ljava/util/Map;

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->c:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/datasource/DataSpec;
    .locals 15

    iget-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    const-string v1, "The uri must be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/media3/datasource/DataSpec;

    iget-object v3, p0, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    iget-wide v4, p0, Landroidx/media3/datasource/DataSpec$Builder;->b:J

    iget v6, p0, Landroidx/media3/datasource/DataSpec$Builder;->c:I

    iget-object v7, p0, Landroidx/media3/datasource/DataSpec$Builder;->d:[B

    iget-object v8, p0, Landroidx/media3/datasource/DataSpec$Builder;->e:Ljava/util/Map;

    iget-wide v9, p0, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iget-wide v11, p0, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    iget-object v13, p0, Landroidx/media3/datasource/DataSpec$Builder;->h:Ljava/lang/String;

    iget v14, p0, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-direct/range {v2 .. v14}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;I)V

    return-object v2
.end method
