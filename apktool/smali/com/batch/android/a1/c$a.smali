.class Lcom/batch/android/a1/c$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/a1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/batch/android/z0/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:[Lcom/batch/android/z0/x;


# direct methods
.method public constructor <init>([Lcom/batch/android/z0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/c$a;->b:[Lcom/batch/android/z0/x;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/batch/android/z0/x;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/batch/android/a1/c$a;->b:[Lcom/batch/android/z0/x;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/a1/c$a;->get(I)Lcom/batch/android/z0/x;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/c$a;->b:[Lcom/batch/android/z0/x;

    array-length p0, p0

    return p0
.end method
