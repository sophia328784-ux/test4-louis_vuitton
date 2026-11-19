.class final Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Reader;


# annotations
.annotation runtime Landroidx/datastore/preferences/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/CodedInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b:Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static T(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static U(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->l(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p2, v1}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final B()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->n()I

    move-result p0

    return p0
.end method

.method public final C(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final E(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->n(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p2, v1}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final F()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->p()I

    move-result p0

    return p0
.end method

.method public final G(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->T(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->p()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-lt p0, v0, :cond_4

    :goto_0
    return-void

    :cond_5
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final H()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->U(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final J()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->r()I

    move-result p0

    return p0
.end method

.method public final K(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final L()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final M(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->s()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final N(Ljava/util/List;Z)V
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LazyStringList;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/LazyStringList;

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b()Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/LazyStringList;->a1()V

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result p1

    iget p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return-void

    :cond_4
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final O(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final P()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Q(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->x()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final R(I)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->e()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final S(I)V
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final a()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->h()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->k()I

    move-result p0

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eqz v0, :cond_2

    iget p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->y(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTag()I
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    return p0
.end method

.method public final h()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->f(I)I

    move-result v2

    iget-object v3, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->b:Ljava/lang/Object;

    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    move-object v5, v4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->f()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_5

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    const-string v8, "Unable to parse map entry."

    if-eq v6, v7, :cond_3

    if-eq v6, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->g()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v8}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v6, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->c:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->v(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v6, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v7}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->v(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->g()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v8}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->e(I)V

    return-void

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->e(I)V

    throw p0
.end method

.method public final k(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->l(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/Schema;->f(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    iget p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c:I

    throw p1
.end method

.method public final m(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->n(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final n(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->f(I)I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a:I

    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/Schema;->f(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a(I)V

    iget p0, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a:I

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->e(I)V

    return-void

    :cond_0
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->g()Z

    move-result p0

    return p0
.end method

.method public final p(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final r()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public final s(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/DoubleArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->U(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->i()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->i()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final t()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->j()I

    move-result p0

    return p0
.end method

.method public final u(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final v(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, "unsupported field type."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->P()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->L()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->J()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->H()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->F()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    sget-object p1, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/Protobuf;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->n(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, p2}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)V

    return-object p2

    :pswitch_8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->h()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->B()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->y()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->t()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->r()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->o()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->T(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-lt p0, v0, :cond_4

    :goto_0
    return-void

    :cond_5
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->U(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final y()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->S(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->m()F

    move-result p0

    return p0
.end method

.method public final z(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->m()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->T(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->m()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b()I

    move-result p0

    if-lt p0, v0, :cond_4

    :goto_0
    return-void

    :cond_5
    invoke-static {}, Lr81;->h()V

    return-void
.end method
