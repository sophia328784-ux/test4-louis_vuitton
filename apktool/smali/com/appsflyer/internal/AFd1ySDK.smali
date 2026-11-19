.class public final Lcom/appsflyer/internal/AFd1ySDK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerClient(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1kSDK;->AFKeystoreWrapper(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcom/appsflyer/internal/AFj1kSDK;->AFKeystoreWrapper(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "(\\d+).(\\d+).(\\d+)-(\\d+).(\\d+).(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0xf4240

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v7

    invoke-virtual {v7, v5}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v7, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    invoke-interface {v1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v7, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v9, v7

    goto :goto_1

    :cond_1
    move-object v9, v6

    :goto_1
    invoke-interface {v1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v7

    invoke-virtual {v7, v3}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, v7, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v10, v7

    goto :goto_2

    :cond_2
    move-object v10, v6

    :goto_2
    invoke-interface {v1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v7

    invoke-virtual {v7, v2}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v7, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v11, v7

    goto :goto_3

    :cond_3
    move-object v11, v6

    :goto_3
    invoke-interface {v1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v7

    const/4 v12, 0x5

    invoke-virtual {v7, v12}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v7, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v12, v7

    goto :goto_4

    :cond_4
    move-object v12, v6

    :goto_4
    invoke-interface {v1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v1

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    goto :goto_5

    :cond_5
    move-object v13, v6

    :goto_5
    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    move-object v7, v13

    invoke-static {v6, v1}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/2addr v1, v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v8, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v8

    mul-int/2addr v8, v4

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v9, v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    move-object v8, v6

    :goto_6
    new-instance v1, Lkotlin/text/Regex;

    const-string v7, "^(\\d+).(\\+)$|^(\\d+).(\\d+).(\\+)$"

    invoke-direct {v1, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v1

    invoke-virtual {v1, v5}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_7
    move-object v1, v6

    :goto_7
    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v7

    invoke-virtual {v7, v3}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v3, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object v3, v6

    :goto_8
    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object p1

    invoke-virtual {p1, v2}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_9

    :cond_9
    move-object p1, v6

    :goto_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    mul-int/2addr v1, v4

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_a
    if-eqz v3, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/2addr v1, v4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    mul-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v5

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p1, v2

    sub-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_a
    const/4 p1, -0x1

    if-eq v0, p1, :cond_c

    if-nez v8, :cond_c

    if-ne v0, p0, :cond_e

    goto :goto_b

    :cond_c
    if-eqz v6, :cond_d

    iget-object p1, v6, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p1, p0, :cond_e

    iget-object p1, v6, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_e

    goto :goto_b

    :cond_d
    if-eqz v8, :cond_e

    iget-object p1, v8, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p1, p0, :cond_e

    iget-object p1, v8, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_e

    :goto_b
    return v5

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
