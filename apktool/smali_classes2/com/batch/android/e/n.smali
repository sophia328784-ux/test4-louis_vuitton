.class public Lcom/batch/android/e/n;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private b:[I

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/n;->d:I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/batch/android/e/n;->b:[I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/batch/android/e/n;->e:I

    iput-object p1, p0, Lcom/batch/android/e/n;->c:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Lcom/batch/android/e/n;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/batch/android/e/n;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/batch/android/e/n;->b:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Stream terminated abruptly"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()[I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e/n;->b:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/batch/android/e/n;->d:I

    iget v1, p0, Lcom/batch/android/e/n;->e:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/e/n;->b:[I

    aget v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/e/n;->d:I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/n;->c:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method
