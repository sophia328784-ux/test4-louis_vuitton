.class abstract Landroidx/datastore/preferences/protobuf/ByteString$AbstractByteIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractByteIterator"
.end annotation


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    check-cast p0, Landroidx/datastore/preferences/protobuf/ByteString$1;

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->b:I

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->d:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->l(I)B

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
