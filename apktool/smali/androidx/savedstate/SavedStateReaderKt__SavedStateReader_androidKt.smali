.class abstract synthetic Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "savedstate"
    }
    k = 0x5
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
    xs = "androidx/savedstate/SavedStateReaderKt"
.end annotation


# direct methods
.method public static final a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eq v2, v1, :cond_2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_e

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_4

    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_4
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_5

    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_5

    check-cast v2, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->h([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_5
    instance-of v3, v2, [B

    if-eqz v3, :cond_6

    instance-of v3, v1, [B

    if-eqz v3, :cond_6

    check-cast v2, [B

    check-cast v1, [B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_6
    instance-of v3, v2, [S

    if-eqz v3, :cond_7

    instance-of v3, v1, [S

    if-eqz v3, :cond_7

    check-cast v2, [S

    check-cast v1, [S

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_7
    instance-of v3, v2, [I

    if-eqz v3, :cond_8

    instance-of v3, v1, [I

    if-eqz v3, :cond_8

    check-cast v2, [I

    check-cast v1, [I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_8
    instance-of v3, v2, [J

    if-eqz v3, :cond_9

    instance-of v3, v1, [J

    if-eqz v3, :cond_9

    check-cast v2, [J

    check-cast v1, [J

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_9
    instance-of v3, v2, [F

    if-eqz v3, :cond_a

    instance-of v3, v1, [F

    if-eqz v3, :cond_a

    check-cast v2, [F

    check-cast v1, [F

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_a
    instance-of v3, v2, [D

    if-eqz v3, :cond_b

    instance-of v3, v1, [D

    if-eqz v3, :cond_b

    check-cast v2, [D

    check-cast v1, [D

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_b
    instance-of v3, v2, [C

    if-eqz v3, :cond_c

    instance-of v3, v1, [C

    if-eqz v3, :cond_c

    check-cast v2, [C

    check-cast v1, [C

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_c
    instance-of v3, v2, [Z

    if-eqz v3, :cond_d

    instance-of v3, v1, [Z

    if-eqz v3, :cond_d

    check-cast v2, [Z

    check-cast v1, [Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_e
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Landroid/os/Bundle;)I
    .locals 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->b(Landroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_1

    :cond_0
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    instance-of v3, v2, [B

    if-eqz v3, :cond_2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1

    :cond_2
    instance-of v3, v2, [S

    if-eqz v3, :cond_3

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    goto :goto_1

    :cond_3
    instance-of v3, v2, [I

    if-eqz v3, :cond_4

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_1

    :cond_4
    instance-of v3, v2, [J

    if-eqz v3, :cond_5

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    goto :goto_1

    :cond_5
    instance-of v3, v2, [F

    if-eqz v3, :cond_6

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1

    :cond_6
    instance-of v3, v2, [D

    if-eqz v3, :cond_7

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    goto :goto_1

    :cond_7
    instance-of v3, v2, [C

    if-eqz v3, :cond_8

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    goto :goto_1

    :cond_8
    instance-of v3, v2, [Z

    if-eqz v3, :cond_9

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_b
    return v1
.end method
