.class public abstract Lcom/google/android/gms/internal/gtm/zzdj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/gtm/zzkk;)D
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    return-wide v2

    :cond_0
    cmpl-double p0, v0, v2

    if-eqz p0, :cond_2

    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static b(Lcom/google/android/gms/internal/gtm/zzkk;)D
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-ne p0, v2, :cond_1

    return-wide v3

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    const-wide/16 v5, 0x0

    if-ne p0, v2, :cond_2

    return-wide v5

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkl;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_3
    return-wide v5

    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_5
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    if-eqz v2, :cond_8

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v7, v2, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    return-wide v5

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v1, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzkr;->h(I)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    return-wide v0

    :cond_8
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-wide v5

    :cond_9
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v3

    :cond_a
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v0

    if-nez v0, :cond_b

    return-wide v3

    :cond_b
    const-string v0, "Illegal type given to numberEquivalent: "

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-wide v5
.end method

.method public static c(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)D
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v5

    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v2, :cond_3

    cmpl-double v2, p0, v7

    if-eqz v2, :cond_4

    :cond_3
    cmpl-double v2, v0, v7

    if-nez v2, :cond_5

    cmpl-double v2, p0, v5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    return-wide v3

    :cond_5
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    return-wide v0

    :cond_7
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_8

    return-wide p0

    :cond_8
    add-double/2addr v0, p0

    return-wide v0

    :cond_9
    :goto_3
    return-wide v3
.end method

.method public static d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, v2, :cond_1

    const-string p0, "undefined"

    return-object p0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, v3, :cond_2

    const-string p0, "null"

    return-object p0

    :cond_2
    instance-of v4, p0, Lcom/google/android/gms/internal/gtm/zzkl;

    if-eqz v4, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq v1, p0, :cond_3

    const-string p0, "false"

    return-object p0

    :cond_3
    const-string p0, "true"

    return-object p0

    :cond_4
    instance-of v4, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    const-string v5, ""

    if-eqz v4, :cond_d

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string v2, "E"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "0"

    if-lez v3, :cond_b

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "."

    if-gez v6, :cond_7

    const/4 v8, -0x7

    if-le v6, v8, :cond_6

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    add-int/2addr v6, v1

    if-gez v6, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "e"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v8, 0x15

    if-ge v6, v8, :cond_a

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v6, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v6, v1

    if-gez v6, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-lez v6, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "e+"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v1, ".0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v4

    :cond_c
    return-object p0

    :cond_d
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzdh;

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzdh;

    iget-object p0, v0, Lcom/google/android/gms/internal/gtm/zzdh;->b:Ljava/lang/String;

    return-object p0

    :cond_f
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzkk;

    if-eq v1, v3, :cond_11

    if-ne v1, v2, :cond_10

    goto :goto_5

    :cond_10
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    :goto_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzks;

    if-eqz v0, :cond_14

    const-string p0, "[object Object]"

    return-object p0

    :cond_14
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v0, :cond_15

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    return-object p0

    :cond_15
    :goto_6
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Illegal type given to stringEquivalent: "

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_16
    const-string p0, "Unknown type in stringEquivalent."

    :goto_7
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    const-string v3, "Illegal type given to abstractEqualityCompare: "

    if-nez v2, :cond_15

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->i(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->i(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Object"

    const-string v6, "Boolean"

    const-string v7, "Number"

    const-string v8, "String"

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_1
    const-string p0, "Undefined"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :sswitch_2
    const-string p0, "Null"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_2
    return v0

    :sswitch_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1

    :sswitch_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p1, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    cmpl-double p0, v2, p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :goto_3
    return v1

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v4, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, v9, :cond_7

    :cond_6
    if-eq p1, v4, :cond_13

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p1, v4, :cond_13

    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdj;->e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    return p0

    :cond_9
    :goto_4
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzdj;->e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    return p0

    :cond_b
    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzdj;->e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    return p0

    :cond_c
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdj;->e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    return p0

    :cond_d
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzdj;->e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    return p0

    :cond_11
    return v1

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdj;->e(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    return p0

    :cond_13
    return v0

    :cond_14
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1

    :cond_15
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_5
        -0x739a70a1 -> :sswitch_4
        -0x6bc5b3cf -> :sswitch_3
        0x2539a7 -> :sswitch_2
        0x39918130 -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    const-string v3, "Illegal type given to abstractRelationalCompare: "

    if-nez v2, :cond_13

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    if-nez v2, :cond_12

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzks;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    move-object p0, v2

    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzks;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzkr;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v2, :cond_8

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzkv;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_a

    cmpl-double v7, p0, v4

    if-eqz v7, :cond_b

    :cond_a
    if-nez v6, :cond_c

    cmpl-double v4, p0, v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    return v1

    :cond_c
    :goto_3
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v6, v2, v4

    if-nez v6, :cond_d

    return v1

    :cond_d
    cmpl-double v4, p0, v4

    if-nez v4, :cond_e

    return v0

    :cond_e
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_f

    return v1

    :cond_f
    cmpl-double v4, v2, v4

    if-nez v4, :cond_10

    return v0

    :cond_10
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_11

    return v0

    :cond_11
    :goto_4
    return v1

    :cond_12
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1

    :cond_13
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1
.end method

.method public static g(Lcom/google/android/gms/internal/gtm/zzkk;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v2, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkl;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    return v1

    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    return v0

    :cond_7
    const-string v0, "Illegal type given to isTruthy: "

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return v1
.end method

.method public static h(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    const-string v3, "Illegal type given to strictEqualityCompare: "

    if-nez v2, :cond_9

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->j(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->i(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->i(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_1
    const-string v3, "Undefined"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :sswitch_2
    const-string v3, "Null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    return v0

    :sswitch_3
    const-string v3, "String"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1

    :sswitch_4
    const-string v3, "Number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p1, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    cmpl-double p0, v2, p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    :goto_3
    return v1

    :cond_6
    :goto_4
    if-ne p0, p1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1

    :cond_9
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/gtm/zzdj;->k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_4
        -0x6bc5b3cf -> :sswitch_3
        0x2539a7 -> :sswitch_2
        0x39918130 -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch
.end method

.method public static i(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, v0, :cond_0

    const-string p0, "Undefined"

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, v0, :cond_1

    const-string p0, "Null"

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkl;

    if-eqz v0, :cond_2

    const-string p0, "Boolean"

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    if-eqz v0, :cond_3

    const-string p0, "Number"

    return-object p0

    :cond_3
    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz p0, :cond_4

    const-string p0, "String"

    return-object p0

    :cond_4
    const-string p0, "Object"

    return-object p0
.end method

.method public static j(Lcom/google/android/gms/internal/gtm/zzkk;)Z
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzkt;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzko;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public static synthetic k(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzkk;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-static {p1, p0, v0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
