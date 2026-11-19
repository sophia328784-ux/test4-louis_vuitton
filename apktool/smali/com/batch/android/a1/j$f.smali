.class Lcom/batch/android/a1/j$f;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/a1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lcom/batch/android/z0/x;",
        ">;"
    }
.end annotation


# instance fields
.field private b:[Lcom/batch/android/z0/x;


# direct methods
.method public constructor <init>([Lcom/batch/android/z0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/j$f;->b:[Lcom/batch/android/z0/x;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/a1/j$a;

    iget-object p0, p0, Lcom/batch/android/a1/j$f;->b:[Lcom/batch/android/z0/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/batch/android/a1/j$a;-><init>([Lcom/batch/android/z0/x;I)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/j$f;->b:[Lcom/batch/android/z0/x;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method
