.class Lcom/batch/android/j0/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/j0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/batch/android/j0/d$i;",
        ">;"
    }
.end annotation


# instance fields
.field b:I

.field c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/j0/d$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/batch/android/j0/d$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j0/d$i;)I
    .locals 2

    iget v0, p0, Lcom/batch/android/j0/d$i;->c:I

    iget v1, p1, Lcom/batch/android/j0/d$i;->c:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget p0, p0, Lcom/batch/android/j0/d$i;->b:I

    iget p1, p1, Lcom/batch/android/j0/d$i;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/batch/android/j0/d$i;

    invoke-virtual {p0, p1}, Lcom/batch/android/j0/d$i;->a(Lcom/batch/android/j0/d$i;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Order{order="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/batch/android/j0/d$i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/batch/android/j0/d$i;->b:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
