.class public final Lcom/batch/android/s/d;
.super Lcom/batch/android/s/c;
.source "SourceFile"


# instance fields
.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/s/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/s/d;->g:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    iget v0, p0, Lcom/batch/android/s/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/s/d;->g:I

    invoke-super {p0, p1, p2}, Lcom/batch/android/s/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;

    move-result-object p0

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/batch/android/s/d;->g:I

    return p0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/s/d;->g:I

    return-void
.end method
