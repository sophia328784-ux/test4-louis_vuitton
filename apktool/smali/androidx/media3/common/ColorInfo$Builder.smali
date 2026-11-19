.class public final Landroidx/media3/common/ColorInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[B

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/ColorInfo;
    .locals 7

    new-instance v0, Landroidx/media3/common/ColorInfo;

    iget v2, p0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iget v3, p0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iget v4, p0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    iget-object v1, p0, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    iget v5, p0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iget v6, p0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/ColorInfo;-><init>([BIIIII)V

    return-object v0
.end method
