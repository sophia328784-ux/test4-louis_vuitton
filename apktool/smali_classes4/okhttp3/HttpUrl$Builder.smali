.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder;",
        "",
        "<init>",
        "()V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    const/4 v3, 0x4

    invoke-static {p0, v2, v1, v3}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v5, 0x3d

    invoke-static {p0, v5, v1, v3}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-eq v3, v4, :cond_2

    if-le v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const-string v1, "/\\"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2, p1, v1}, Lokhttp3/internal/_UtilCommonKt;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_0

    const/4 v1, 0x1

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;IIZZ)V

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-le v3, p0, :cond_1

    return-void

    :cond_1
    move-object p0, v1

    move-object p1, v2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/16 v6, 0x5b

    const/4 v2, 0x0

    const-string v4, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/16 v5, 0x5b

    const/4 v1, 0x0

    const-string v3, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lokhttp3/HttpUrl;
    .locals 13

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_7

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v3, v3, v4, v2}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-static {v3, v3, v4, v5}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v4

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget v7, p0, Lokhttp3/HttpUrl$Builder;->e:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    :goto_0
    move v8, v6

    goto :goto_1

    :cond_0
    sget-object v7, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v3, v8, v11}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    const/4 v12, 0x3

    invoke-static {v3, v3, v12, v10}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_2
    move-object v10, v0

    :goto_4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v11, v0

    :cond_4
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-static {v3, v3, v8, v9}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v8, v0

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lokhttp3/HttpUrl;

    const/4 v10, 0x0

    move-object v3, v5

    move v5, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v10}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_6
    const-string p0, "host == null"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_7
    const-string p0, "scheme == null"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->a:[B

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v3, v2}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4, v2}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v8

    sub-int v4, v8, v3

    const/16 v9, 0x5b

    const/16 v10, 0x3a

    const/4 v11, -0x1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    move v4, v11

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x61

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v12

    const/16 v13, 0x41

    if-ltz v12, :cond_2

    const/16 v12, 0x7a

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v12

    if-lez v12, :cond_3

    :cond_2
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v12

    if-ltz v12, :cond_0

    const/16 v12, 0x5a

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v3, 0x1

    :goto_1
    if-ge v4, v8, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v6, v12, :cond_4

    const/16 v14, 0x7b

    if-ge v12, v14, :cond_4

    goto :goto_2

    :cond_4
    if-gt v13, v12, :cond_5

    if-ge v12, v9, :cond_5

    goto :goto_2

    :cond_5
    const/16 v14, 0x30

    if-gt v14, v12, :cond_6

    if-ge v12, v10, :cond_6

    goto :goto_2

    :cond_6
    const/16 v14, 0x2b

    if-eq v12, v14, :cond_8

    const/16 v14, 0x2d

    if-eq v12, v14, :cond_8

    const/16 v14, 0x2e

    if-ne v12, v14, :cond_7

    goto :goto_2

    :cond_7
    if-ne v12, v10, :cond_0

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    const/4 v12, 0x1

    if-eq v4, v11, :cond_b

    const-string v6, "https:"

    invoke-static {v2, v3, v6, v12}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "https"

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x6

    goto :goto_4

    :cond_9
    const-string v6, "http:"

    invoke-static {v2, v3, v6, v12}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v4, "http"

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz v1, :cond_28

    iget-object v4, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    :goto_4
    move v4, v3

    move v6, v7

    :goto_5
    const/16 v13, 0x5c

    const/16 v14, 0x2f

    if-ge v4, v8, :cond_d

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_c

    if-eq v15, v13, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    const/16 v15, 0x3f

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    const/16 v7, 0x23

    if-ge v6, v5, :cond_12

    if-eqz v1, :cond_12

    iget-object v5, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    move/from16 v16, v12

    iget-object v12, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    iget-object v5, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    iget v5, v1, Lokhttp3/HttpUrl;->e:I

    iput v5, v0, Lokhttp3/HttpUrl$Builder;->e:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v3, v8, :cond_f

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_11

    :cond_f
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_10

    const/16 v19, 0x1

    const/16 v22, 0x53

    const/16 v18, 0x0

    const-string v20, " \"\'<>#"

    const/16 v21, 0x0

    invoke-static/range {v17 .. v22}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    :cond_11
    move-object v1, v2

    move-object/from16 v19, v4

    goto/16 :goto_12

    :cond_12
    move/from16 v16, v12

    :goto_8
    add-int/2addr v3, v6

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_9
    const-string v1, "@/\\?#"

    invoke-static {v3, v8, v2, v1}, Lokhttp3/internal/_UtilCommonKt;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_13

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_a

    :cond_13
    move v5, v11

    :goto_a
    if-eq v5, v11, :cond_18

    if-eq v5, v7, :cond_18

    if-eq v5, v14, :cond_18

    if-eq v5, v13, :cond_18

    if-eq v5, v15, :cond_18

    const/16 v6, 0x40

    if-eq v5, v6, :cond_14

    goto :goto_9

    :cond_14
    const-string v5, "%40"

    if-nez v12, :cond_17

    move-object v6, v5

    invoke-static {v2, v3, v1, v10}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v5

    move v2, v3

    const/4 v3, 0x1

    move-object/from16 v18, v6

    const/16 v6, 0x70

    move-object/from16 v19, v4

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move v7, v1

    move-object/from16 v15, v18

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v17, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-static {v1, v3, v15, v2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    if-eq v5, v7, :cond_16

    add-int/lit8 v2, v5, 0x1

    const/4 v3, 0x1

    const/16 v6, 0x70

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v5, v7

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    move/from16 v12, v16

    goto :goto_b

    :cond_16
    move v5, v7

    :goto_b
    move-object/from16 v1, p2

    move/from16 v17, v16

    goto :goto_c

    :cond_17
    move v2, v3

    move-object/from16 v19, v4

    move-object v15, v5

    move v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/16 v6, 0x70

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    :goto_c
    add-int/lit8 v3, v5, 0x1

    move-object v2, v1

    move-object/from16 v4, v19

    const/16 v7, 0x23

    const/16 v15, 0x3f

    goto/16 :goto_9

    :cond_18
    move v5, v1

    move-object v1, v2

    move v7, v3

    move-object/from16 v19, v4

    move v3, v7

    :goto_d
    if-ge v3, v5, :cond_1c

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_1b

    if-eq v2, v9, :cond_19

    goto :goto_e

    :cond_19
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_1a

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_19

    :cond_1a
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    move v9, v3

    goto :goto_f

    :cond_1c
    move v9, v5

    :goto_f
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x4

    const/16 v10, 0x22

    if-ge v2, v5, :cond_1f

    invoke-static {v7, v9, v3, v1}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    :try_start_0
    const-string v4, ""

    const/4 v3, 0x0

    const/16 v6, 0x78

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v4, v16

    if-gt v4, v3, :cond_1d

    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_1d

    goto :goto_10

    :catch_0
    :cond_1d
    move v3, v11

    :goto_10
    iput v3, v0, Lokhttp3/HttpUrl$Builder;->e:I

    if-eq v3, v11, :cond_1e

    goto :goto_11

    :cond_1e
    const-string v0, "Invalid URL port: \""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10, v1}, Laz;->q(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1f
    invoke-static {v7, v9, v3, v1}, Lokhttp3/internal/url/_UrlKt;->d(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    sget-object v2, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->e:I

    :goto_11
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-eqz v2, :cond_27

    move v3, v5

    :goto_12
    const-string v2, "?#"

    invoke-static {v3, v8, v1, v2}, Lokhttp3/internal/_UtilCommonKt;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v3, v6, :cond_21

    :cond_20
    move-object v7, v0

    goto :goto_17

    :cond_21
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v4, ""

    if-eq v2, v14, :cond_22

    if-eq v2, v13, :cond_22

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v5, v19

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_22
    move-object/from16 v5, v19

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :goto_13
    move v2, v3

    :goto_14
    if-ge v2, v6, :cond_20

    const-string v3, "/\\"

    invoke-static {v2, v6, v1, v3}, Lokhttp3/internal/_UtilCommonKt;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ge v3, v6, :cond_23

    const/4 v4, 0x1

    goto :goto_15

    :cond_23
    const/4 v4, 0x0

    :goto_15
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;IIZZ)V

    move-object v7, v0

    if-eqz v4, :cond_24

    add-int/lit8 v2, v3, 0x1

    :goto_16
    move-object v0, v7

    goto :goto_14

    :cond_24
    move v2, v3

    goto :goto_16

    :goto_17
    if-ge v6, v8, :cond_25

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_25

    const/16 v0, 0x23

    invoke-static {v1, v6, v8, v0}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v4

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    const/16 v5, 0x50

    const-string v3, " \"\'<>#"

    move-object v0, v1

    move v1, v6

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    move v6, v4

    goto :goto_18

    :cond_25
    move-object v0, v1

    :goto_18
    if-ge v6, v8, :cond_26

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_26

    const/16 v16, 0x1

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x1

    const/16 v5, 0x30

    const-string v3, ""

    move v4, v8

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    :cond_26
    return-void

    :cond_27
    const-string v0, "Invalid URL host: \""

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10, v1}, Laz;->q(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_28
    move-object v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_29

    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->V(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_29
    move-object v0, v1

    :goto_19
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;IIZZ)V
    .locals 6

    const-string v3, " \"<>^`{}|/\\?#"

    const/16 v5, 0x70

    move-object v0, p1

    move v1, p2

    move v4, p3

    move v2, p5

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "%2e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, ""

    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    const/4 p5, 0x1

    if-nez p2, :cond_3

    const-string p2, "%2e."

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ".%2e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "%2e%2e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p5, p0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p5

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p4, :cond_5

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p5

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p5

    invoke-virtual {p0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/16 v6, 0x5b

    const/4 v2, 0x0

    const-string v4, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lkotlin/internal/ProgressionUtilKt;->a(III)I

    move-result v1

    if-gt v1, v0, :cond_2

    :goto_0
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->l(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    if-eqz v4, :cond_9

    :cond_6
    if-eq v1, v3, :cond_7

    goto :goto_3

    :cond_7
    sget-object v1, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    move-result v1

    :goto_3
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    if-eqz v3, :cond_8

    sget-object v4, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_9

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_a

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Lokhttp3/HttpUrl$Companion;->a(Lokhttp3/HttpUrl$Companion;Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_b
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
