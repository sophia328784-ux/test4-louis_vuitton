.class Lcom/batch/android/a1/j$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/a1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Lcom/batch/android/z0/x;",
        "Lcom/batch/android/z0/x;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:[Lcom/batch/android/z0/x;


# direct methods
.method public constructor <init>([Lcom/batch/android/z0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/j$b;->b:[Lcom/batch/android/z0/x;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/a1/j$c;

    iget-object p0, p0, Lcom/batch/android/a1/j$b;->b:[Lcom/batch/android/z0/x;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/j$c;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/j$b;->b:[Lcom/batch/android/z0/x;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method
