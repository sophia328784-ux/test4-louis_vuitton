.class public Lcom/batch/android/x0/h$c;
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
    name = "c"
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/nio/charset/CodingErrorAction;

.field private e:Ljava/nio/charset/CodingErrorAction;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/batch/android/x0/h$c;->b:Z

    .line 52
    iput-boolean v0, p0, Lcom/batch/android/x0/h$c;->c:Z

    .line 53
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    .line 54
    iput-object v0, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    const v0, 0x7fffffff

    .line 55
    iput v0, p0, Lcom/batch/android/x0/h$c;->f:I

    const/16 v0, 0x2000

    .line 56
    iput v0, p0, Lcom/batch/android/x0/h$c;->g:I

    .line 57
    iput v0, p0, Lcom/batch/android/x0/h$c;->h:I

    return-void
.end method

.method private constructor <init>(Lcom/batch/android/x0/h$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/x0/h$c;->b:Z

    iput-boolean v0, p0, Lcom/batch/android/x0/h$c;->c:Z

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/batch/android/x0/h$c;->f:I

    const/16 v0, 0x2000

    iput v0, p0, Lcom/batch/android/x0/h$c;->g:I

    iput v0, p0, Lcom/batch/android/x0/h$c;->h:I

    iget-boolean v0, p1, Lcom/batch/android/x0/h$c;->b:Z

    iput-boolean v0, p0, Lcom/batch/android/x0/h$c;->b:Z

    iget-boolean v0, p1, Lcom/batch/android/x0/h$c;->c:Z

    iput-boolean v0, p0, Lcom/batch/android/x0/h$c;->c:Z

    iget-object v0, p1, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    iget-object v0, p1, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    iget v0, p1, Lcom/batch/android/x0/h$c;->f:I

    iput v0, p0, Lcom/batch/android/x0/h$c;->f:I

    iget p1, p1, Lcom/batch/android/x0/h$c;->g:I

    iput p1, p0, Lcom/batch/android/x0/h$c;->g:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/batch/android/x0/h$c;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    .line 23
    iput p1, p0, Lcom/batch/android/x0/h$c;->g:I

    return-object p0
.end method

.method public a(Ljava/nio/charset/CodingErrorAction;)Lcom/batch/android/x0/h$c;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    .line 20
    iput-object p1, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    return-object p0
.end method

.method public a(Z)Lcom/batch/android/x0/h$c;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    .line 18
    iput-boolean p1, p0, Lcom/batch/android/x0/h$c;->c:Z

    return-object p0
.end method

.method public a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;
    .locals 1

    .line 12
    new-instance v0, Lcom/batch/android/x0/o;

    invoke-direct {v0, p1, p0}, Lcom/batch/android/x0/o;-><init>(Lcom/batch/android/y0/g;Lcom/batch/android/x0/h$c;)V

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/batch/android/x0/o;
    .locals 2

    new-instance v0, Lcom/batch/android/y0/f;

    iget v1, p0, Lcom/batch/android/x0/h$c;->g:I

    invoke-direct {v0, p1, v1}, Lcom/batch/android/y0/f;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$c;->a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/batch/android/x0/o;
    .locals 1

    .line 16
    new-instance v0, Lcom/batch/android/y0/c;

    invoke-direct {v0, p1}, Lcom/batch/android/y0/c;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$c;->a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/nio/channels/ReadableByteChannel;)Lcom/batch/android/x0/o;
    .locals 2

    .line 13
    new-instance v0, Lcom/batch/android/y0/d;

    iget v1, p0, Lcom/batch/android/x0/h$c;->g:I

    invoke-direct {v0, p1, v1}, Lcom/batch/android/y0/d;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$c;->a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public a([B)Lcom/batch/android/x0/o;
    .locals 1

    .line 14
    new-instance v0, Lcom/batch/android/y0/a;

    invoke-direct {v0, p1}, Lcom/batch/android/y0/a;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$c;->a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public a([BII)Lcom/batch/android/x0/o;
    .locals 1

    .line 15
    new-instance v0, Lcom/batch/android/y0/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/batch/android/y0/a;-><init>([BII)V

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/h$c;->a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/nio/charset/CodingErrorAction;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    return-object p0
.end method

.method public b(I)Lcom/batch/android/x0/h$c;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    .line 11
    iput p1, p0, Lcom/batch/android/x0/h$c;->h:I

    return-object p0
.end method

.method public b(Ljava/nio/charset/CodingErrorAction;)Lcom/batch/android/x0/h$c;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    .line 8
    iput-object p1, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    return-object p0
.end method

.method public b(Z)Lcom/batch/android/x0/h$c;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    iput-boolean p1, p0, Lcom/batch/android/x0/h$c;->b:Z

    return-object p0
.end method

.method public b()Ljava/nio/charset/CodingErrorAction;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    return-object p0
.end method

.method public c(I)Lcom/batch/android/x0/h$c;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    iput p1, p0, Lcom/batch/android/x0/h$c;->f:I

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/batch/android/x0/h$c;->c:Z

    return p0
.end method

.method public clone()Lcom/batch/android/x0/h$c;
    .locals 1

    new-instance v0, Lcom/batch/android/x0/h$c;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/h$c;-><init>(Lcom/batch/android/x0/h$c;)V

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
    invoke-virtual {p0}, Lcom/batch/android/x0/h$c;->clone()Lcom/batch/android/x0/h$c;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/x0/h$c;->b:Z

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/batch/android/x0/h$c;->g:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/batch/android/x0/h$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/batch/android/x0/h$c;

    iget-boolean v0, p0, Lcom/batch/android/x0/h$c;->b:Z

    iget-boolean v2, p1, Lcom/batch/android/x0/h$c;->b:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/batch/android/x0/h$c;->c:Z

    iget-boolean v2, p1, Lcom/batch/android/x0/h$c;->c:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    iget-object v2, p1, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    iget-object v2, p1, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/batch/android/x0/h$c;->f:I

    iget v2, p1, Lcom/batch/android/x0/h$c;->f:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/batch/android/x0/h$c;->h:I

    iget v2, p1, Lcom/batch/android/x0/h$c;->h:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/batch/android/x0/h$c;->g:I

    iget p1, p1, Lcom/batch/android/x0/h$c;->g:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/batch/android/x0/h$c;->h:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/batch/android/x0/h$c;->f:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/x0/h$c;->b:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/batch/android/x0/h$c;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/x0/h$c;->d:Ljava/nio/charset/CodingErrorAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/x0/h$c;->e:Ljava/nio/charset/CodingErrorAction;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/batch/android/x0/h$c;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/batch/android/x0/h$c;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/batch/android/x0/h$c;->h:I

    add-int/2addr v0, p0

    return v0
.end method
