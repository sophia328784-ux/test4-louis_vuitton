.class Lcom/batch/android/a1/j$d;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/a1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lcom/batch/android/z0/x;",
        "Lcom/batch/android/z0/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:[Lcom/batch/android/z0/x;


# direct methods
.method public constructor <init>([Lcom/batch/android/z0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/j$d;->b:[Lcom/batch/android/z0/x;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/a1/j$b;

    iget-object p0, p0, Lcom/batch/android/a1/j$d;->b:[Lcom/batch/android/z0/x;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/j$b;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method
