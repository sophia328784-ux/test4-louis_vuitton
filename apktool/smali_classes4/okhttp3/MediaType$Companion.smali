.class public final Lokhttp3/MediaType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lokhttp3/MediaType$Companion;",
        "",
        "",
        "TOKEN",
        "Ljava/lang/String;",
        "QUOTED",
        "Lkotlin/text/Regex;",
        "TYPE_SUBTYPE",
        "Lkotlin/text/Regex;",
        "PARAMETER",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/MediaType;->f:Lkotlin/text/Regex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lkotlin/text/Regex;->d(ILjava/lang/String;)Lkotlin/text/MatchResult;

    move-result-object v0

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v0

    iget v0, v0, Lkotlin/ranges/IntProgression;->c:I

    :goto_0
    add-int/2addr v0, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_6

    sget-object v9, Lokhttp3/MediaType;->g:Lkotlin/text/Regex;

    invoke-virtual {v9, v0, p0}, Lkotlin/text/Regex;->d(ILjava/lang/String;)Lkotlin/text/MatchResult;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_1

    invoke-interface {v9}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v0

    iget v0, v0, Lkotlin/ranges/IntProgression;->c:I

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v10

    invoke-virtual {v10, v8}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, v10, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v10, v3

    :goto_2
    if-nez v10, :cond_3

    invoke-interface {v9}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/16 v11, 0x27

    invoke-static {v10, v11, v1}, Lkotlin/text/StringsKt;->N(Ljava/lang/CharSequence;CZ)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v10, v11}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;C)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_4

    invoke-static {v5, v5, v10}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v0

    iget v0, v0, Lkotlin/ranges/IntProgression;->c:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\" for: \""

    const-string v4, "Parameter is not formatted correctly: \""

    invoke-static {v4, v0, v1, p0, v2}, Llc0;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v3

    :cond_6
    new-instance v0, Lokhttp3/MediaType;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v4, v6, v1}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_7
    const-string v0, "No subtype found for: \""

    invoke-static {v2, v0, p0}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3
.end method
