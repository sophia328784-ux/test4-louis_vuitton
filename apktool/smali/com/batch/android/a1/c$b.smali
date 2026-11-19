.class Lcom/batch/android/a1/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/a1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/batch/android/z0/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:[Lcom/batch/android/z0/x;

.field private c:I


# direct methods
.method public constructor <init>([Lcom/batch/android/z0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/c$b;->b:[Lcom/batch/android/z0/x;

    const/4 p1, 0x0

    iput p1, p0, Lcom/batch/android/a1/c$b;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/z0/x;
    .locals 3

    iget v0, p0, Lcom/batch/android/a1/c$b;->c:I

    iget-object v1, p0, Lcom/batch/android/a1/c$b;->b:[Lcom/batch/android/z0/x;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/batch/android/a1/c$b;->c:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/batch/android/a1/c$b;->c:I

    iget-object p0, p0, Lcom/batch/android/a1/c$b;->b:[Lcom/batch/android/z0/x;

    array-length p0, p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/c$b;->a()Lcom/batch/android/z0/x;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
