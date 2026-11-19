.class public Lcom/batch/android/x0/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/x0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 34
    iput v0, p0, Lcom/batch/android/x0/h$b;->b:I

    const/16 v0, 0x2000

    .line 35
    iput v0, p0, Lcom/batch/android/x0/h$b;->c:I

    .line 36
    iput v0, p0, Lcom/batch/android/x0/h$b;->d:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/batch/android/x0/h$b;->e:Z

    return-void
.end method

.method private constructor <init>(Lcom/batch/android/x0/h$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lcom/batch/android/x0/h$b;->b:I

    const/16 v0, 0x2000

    iput v0, p0, Lcom/batch/android/x0/h$b;->c:I

    iput v0, p0, Lcom/batch/android/x0/h$b;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/x0/h$b;->e:Z

    iget v0, p1, Lcom/batch/android/x0/h$b;->b:I

    iput v0, p0, Lcom/batch/android/x0/h$b;->b:I

    iget v0, p1, Lcom/batch/android/x0/h$b;->c:I

    iput v0, p0, Lcom/batch/android/x0/h$b;->c:I

    iget v0, p1, Lcom/batch/android/x0/h$b;->d:I

    iput v0, p0, Lcom/batch/android/x0/h$b;->d:I

    iget-boolean p1, p1, Lcom/batch/android/x0/h$b;->e:Z

    iput-boolean p1, p0, Lcom/batch/android/x0/h$b;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/batch/android/x0/h$b;->c:I

    return p0
.end method

.method public a(I)Lcom/batch/android/x0/h$b;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/batch/android/x0/h$b;->clone()Lcom/batch/android/x0/h$b;

    move-result-object p0

    .line 15
    iput p1, p0, Lcom/batch/android/x0/h$b;->c:I

    return-object p0
.end method

.method public a(Z)Lcom/batch/android/x0/h$b;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/batch/android/x0/h$b;->clone()Lcom/batch/android/x0/h$b;

    move-result-object p0

    .line 18
    iput-boolean p1, p0, Lcom/batch/android/x0/h$b;->e:Z

    return-object p0
.end method

.method public a(Lcom/batch/android/y0/h;)Lcom/batch/android/x0/j;
    .locals 1

    .line 12
    new-instance v0, Lcom/batch/android/x0/j;

    invoke-direct {v0, p1, p0}, Lcom/batch/android/x0/j;-><init>(Lcom/batch/android/y0/h;Lcom/batch/android/x0/h$b;)V

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Lcom/batch/android/x0/j;
    .locals 2

    new-instance v0, Lcom/batch/android/y0/i;

    iget v1, p0, Lcom/batch/android/x0/h$b;->d:I

    invoke-direct {v0, p1, v1}, Lcom/batch/android/y0/i;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$b;->a(Lcom/batch/android/y0/h;)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)Lcom/batch/android/x0/j;
    .locals 2

    .line 13
    new-instance v0, Lcom/batch/android/y0/e;

    iget v1, p0, Lcom/batch/android/x0/h$b;->d:I

    invoke-direct {v0, p1, v1}, Lcom/batch/android/y0/e;-><init>(Ljava/nio/channels/WritableByteChannel;I)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$b;->a(Lcom/batch/android/y0/h;)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/batch/android/x0/h$b;->d:I

    return p0
.end method

.method public b(I)Lcom/batch/android/x0/h$b;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/x0/h$b;->clone()Lcom/batch/android/x0/h$b;

    move-result-object p0

    iput p1, p0, Lcom/batch/android/x0/h$b;->d:I

    return-object p0
.end method

.method public c()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/batch/android/x0/h$b;->b:I

    return p0
.end method

.method public c(I)Lcom/batch/android/x0/h$b;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/x0/h$b;->clone()Lcom/batch/android/x0/h$b;

    move-result-object p0

    iput p1, p0, Lcom/batch/android/x0/h$b;->b:I

    return-object p0
.end method

.method public clone()Lcom/batch/android/x0/h$b;
    .locals 1

    new-instance v0, Lcom/batch/android/x0/h$b;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/h$b;-><init>(Lcom/batch/android/x0/h$b;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/batch/android/x0/h$b;->clone()Lcom/batch/android/x0/h$b;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/x0/h$b;->e:Z

    return p0
.end method

.method public e()Lcom/batch/android/x0/b;
    .locals 1

    new-instance v0, Lcom/batch/android/x0/b;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/b;-><init>(Lcom/batch/android/x0/h$b;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/batch/android/x0/h$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/batch/android/x0/h$b;

    iget v0, p0, Lcom/batch/android/x0/h$b;->b:I

    iget v2, p1, Lcom/batch/android/x0/h$b;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/batch/android/x0/h$b;->c:I

    iget v2, p1, Lcom/batch/android/x0/h$b;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/batch/android/x0/h$b;->d:I

    iget v2, p1, Lcom/batch/android/x0/h$b;->d:I

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/batch/android/x0/h$b;->e:Z

    iget-boolean p1, p1, Lcom/batch/android/x0/h$b;->e:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/batch/android/x0/h$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/batch/android/x0/h$b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/batch/android/x0/h$b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/batch/android/x0/h$b;->e:Z

    add-int/2addr v0, p0

    return v0
.end method
