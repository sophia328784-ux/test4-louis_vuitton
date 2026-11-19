.class public abstract Lcom/batch/android/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/batch/android/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/batch/android/i/a;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/a;)I
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/i/a;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/batch/android/i/a;->a()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public a()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/batch/android/i/a;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/batch/android/i/a;->b:J

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/batch/android/i/a;

    invoke-virtual {p0, p1}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/a;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/batch/android/i/a;

    iget-wide v2, p0, Lcom/batch/android/i/a;->b:J

    iget-wide p0, p1, Lcom/batch/android/i/a;->b:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/batch/android/i/a;->b:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
