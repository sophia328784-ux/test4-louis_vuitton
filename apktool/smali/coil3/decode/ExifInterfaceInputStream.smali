.class final Lcoil3/decode/ExifInterfaceInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcoil3/decode/ExifInterfaceInputStream;",
        "Ljava/io/InputStream;",
        "delegate",
        "<init>",
        "(Ljava/io/InputStream;)V",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/io/InputStream;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcoil3/decode/ExifInterfaceInputStream;->b:Ljava/io/InputStream;

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcoil3/decode/ExifInterfaceInputStream;->c:I

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    iget p0, p0, Lcoil3/decode/ExifInterfaceInputStream;->c:I

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lcoil3/decode/ExifInterfaceInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 2

    iget-object v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcoil3/decode/ExifInterfaceInputStream;->c:I

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->c:I

    :cond_0
    return p1
.end method

.method public final read([BII)I
    .locals 1

    .line 15
    iget-object v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcoil3/decode/ExifInterfaceInputStream;->c:I

    :cond_0
    return p1
.end method

.method public final skip(J)J
    .locals 0

    iget-object p0, p0, Lcoil3/decode/ExifInterfaceInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
