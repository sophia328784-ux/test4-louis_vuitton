.class public final Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SniffFailure;


# instance fields
.field public final a:I

.field public final b:Lcom/google/common/primitives/ImmutableIntArray;


# direct methods
.method public constructor <init>(I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->a:I

    if-eqz p2, :cond_1

    array-length p1, p2

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/primitives/ImmutableIntArray;->d:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/primitives/ImmutableIntArray;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/common/primitives/ImmutableIntArray;->d:Lcom/google/common/primitives/ImmutableIntArray;

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->b:Lcom/google/common/primitives/ImmutableIntArray;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->b:Lcom/google/common/primitives/ImmutableIntArray;

    iget v2, v1, Lcom/google/common/primitives/ImmutableIntArray;->c:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lcom/google/common/primitives/ImmutableIntArray;->c:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/common/primitives/ImmutableIntArray;->b(I)I

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->d0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnsupportedBrands{major="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->a:I

    invoke-static {p0}, Landroidx/media3/common/util/Util;->d0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", compatible="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
