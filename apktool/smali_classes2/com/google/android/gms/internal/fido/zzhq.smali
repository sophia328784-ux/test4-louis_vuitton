.class abstract Lcom/google/android/gms/internal/fido/zzhq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;
    .locals 10

    const-string v0, "Error in decoding CborValue from bytes"

    const-string v1, "Unidentifiable major type: "

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->m()Lcom/google/android/gms/internal/fido/zzhr;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_10

    :try_start_1
    iget-byte v3, v2, Lcom/google/android/gms/internal/fido/zzhr;->b:B

    iget-byte v2, v2, Lcom/google/android/gms/internal/fido/zzhr;->a:B

    const/16 v4, -0x80

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    if-eq v2, v4, :cond_d

    const/16 v4, -0x60

    if-eq v2, v4, :cond_6

    const/16 v4, -0x40

    if-eq v2, v4, :cond_5

    const/16 v4, -0x20

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    const/16 v4, 0x40

    if-eq v2, v4, :cond_1

    const/16 v4, 0x60

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/fido/zzhs;->q(B)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->s()[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/fido/zzhq;->b(BJ)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhn;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/fido/zzhs;->q(B)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->s()[B

    move-result-object p0

    array-length v1, p0

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/fido/zzhq;->b(BJ)V

    new-instance v2, Lcom/google/android/gms/internal/fido/zzhi;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/fido/zzgx;->p(I[B)Lcom/google/android/gms/internal/fido/zzgx;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/fido/zzhi;-><init>(Lcom/google/android/gms/internal/fido/zzgx;)V

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->j()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-lez p0, :cond_3

    move-wide v4, v1

    goto :goto_0

    :cond_3
    not-long v4, v1

    :goto_0
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/fido/zzhq;->b(BJ)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhk;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->n()Z

    move-result p0

    new-instance v1, Lcom/google/android/gms/internal/fido/zzhh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fido/zzhh;-><init>(Z)V

    return-object v1

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string v1, "Tags are currently unsupported"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->k()J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-gtz v4, :cond_c

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/fido/zzhq;->b(BJ)V

    long-to-int v3, v1

    new-array v4, v3, [Lcom/google/android/gms/internal/fido/zzhl;

    const/4 v5, 0x0

    move v6, v7

    :goto_1
    int-to-long v8, v6

    cmp-long v8, v8, v1

    if-gez v8, :cond_9

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzhq;->a(Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v8

    if-eqz v5, :cond_8

    invoke-interface {v8, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nCurrent key: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/fido/zzhl;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzhq;->a(Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/google/android/gms/internal/fido/zzhl;-><init>(Lcom/google/android/gms/internal/fido/zzhp;Lcom/google/android/gms/internal/fido/zzhp;)V

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    move-object v5, v8

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    :goto_3
    if-ge v7, v3, :cond_b

    aget-object v1, v4, v7

    iget-object v2, v1, Lcom/google/android/gms/internal/fido/zzhl;->a:Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/google/android/gms/internal/fido/zzhl;->a:Lcom/google/android/gms/internal/fido/zzhp;

    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzhl;->b:Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {p0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v1, "Attempted to add duplicate key to canonical CBOR Map."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/fido/zzhm;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzcj;->d(Ljava/util/TreeMap;)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fido/zzhm;-><init>(Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object v1

    :cond_c
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string v1, "Parser being asked to read a large CBOR map"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->h()J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-gtz v4, :cond_f

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/fido/zzhq;->b(BJ)V

    long-to-int v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/fido/zzhp;

    :goto_4
    int-to-long v4, v7

    cmp-long v4, v4, v1

    if-gez v4, :cond_e

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzhq;->a(Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v4

    aput-object v4, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhg;

    invoke-static {v3}, Lcom/google/android/gms/internal/fido/zzcc;->q([Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhg;-><init>(Lcom/google/android/gms/internal/fido/zzcc;)V

    return-object p0

    :cond_f
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string v1, "Parser being asked to read a large CBOR array"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/fido/zzhj;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string v0, "Parser being asked to parse an empty input stream"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance v1, Lcom/google/android/gms/internal/fido/zzhj;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final b(BJ)V
    .locals 3

    const-string v0, "Integer value "

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v1, 0x100000000L

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v1, " after add info could have been represented in 0-4 additional bytes, but used 8"

    invoke-static {p1, p2, v0, v1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-wide/32 v1, 0x10000

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v1, " after add info could have been represented in 0-2 additional bytes, but used 4"

    invoke-static {p1, p2, v0, v1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const-wide/16 v1, 0x100

    cmp-long p0, p1, v1

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v1, " after add info could have been represented in 0-1 additional bytes, but used 2"

    invoke-static {p1, p2, v0, v1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const-wide/16 v1, 0x18

    cmp-long p0, p1, v1

    if-ltz p0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v1, " after add info could have been represented in 0 additional bytes, but used 1"

    invoke-static {p1, p2, v0, v1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
