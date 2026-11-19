.class public Lcom/otaliastudios/cameraview/size/Size;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/otaliastudios/cameraview/size/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iput p2, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/otaliastudios/cameraview/size/Size;
    .locals 2

    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    iget v1, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    iget p0, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    invoke-direct {v0, v1, p0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/otaliastudios/cameraview/size/Size;

    iget v0, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget p0, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    mul-int/2addr v0, p0

    iget p0, p1, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget p1, p1, Lcom/otaliastudios/cameraview/size/Size;->c:I

    mul-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/otaliastudios/cameraview/size/Size;

    iget v2, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v3, p1, Lcom/otaliastudios/cameraview/size/Size;->b:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    iget p1, p1, Lcom/otaliastudios/cameraview/size/Size;->c:I

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    iget p0, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
