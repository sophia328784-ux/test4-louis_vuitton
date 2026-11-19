.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "Lokhttp3/internal/publicsuffix/PublicSuffixList;",
        "publicSuffixList",
        "<init>",
        "(Lokhttp3/internal/publicsuffix/PublicSuffixList;)V",
        "Companion",
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


# static fields
.field public static final b:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

.field public static final c:Lokio/ByteString;

.field public static final d:Ljava/util/List;

.field public static final e:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final a:Lokhttp3/internal/publicsuffix/PublicSuffixList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    sget-object v0, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/16 v4, 0x2a

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokio/ByteString;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Lokio/ByteString;

    const-string v0, "*"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    new-instance v3, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;

    invoke-direct {v3, v1, v2, v1}, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>(Lokhttp3/internal/publicsuffix/PublicSuffixList;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/publicsuffix/PublicSuffixList;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/PublicSuffixList;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2e

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->x(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/PublicSuffixList;

    invoke-interface {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixList;->b()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lokio/ByteString;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    sget-object v5, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lokio/ByteString$Companion;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    const/4 v6, 0x0

    if-ge v4, v1, :cond_2

    invoke-interface {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixList;->a()Lokio/ByteString;

    move-result-object v7

    invoke-static {v5, v7, v2, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_2
    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lokio/ByteString;

    array-length v9, v8

    sub-int/2addr v9, v4

    move v10, v3

    :goto_3
    if-ge v10, v9, :cond_4

    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Lokio/ByteString;

    aput-object v11, v8, v10

    invoke-interface {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixList;->a()Lokio/ByteString;

    move-result-object v11

    invoke-static {v5, v11, v8, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    move-object v11, v6

    :goto_4
    if-eqz v11, :cond_6

    sub-int/2addr v1, v4

    move v8, v3

    :goto_5
    if-ge v8, v1, :cond_6

    invoke-interface {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixList;->c()Lokio/ByteString;

    move-result-object v9

    invoke-static {v5, v9, v2, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    move-object v9, v6

    :goto_6
    const/16 p0, 0x2e

    if-eqz v9, :cond_7

    const-string v1, "!"

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [C

    aput-char p0, v2, v3

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    goto :goto_9

    :cond_7
    if-nez v7, :cond_8

    if-nez v11, :cond_8

    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Ljava/util/List;

    goto :goto_9

    :cond_8
    if-eqz v7, :cond_9

    new-array v1, v4, [C

    aput-char p0, v1, v3

    invoke-static {v7, v1}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_9
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_7
    if-eqz v11, :cond_a

    new-array v2, v4, [C

    aput-char p0, v2, v3

    invoke-static {v11, v2}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    goto :goto_8

    :cond_a
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v2, v5, :cond_b

    move-object p0, v1

    :cond_b
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x21

    if-ne v1, v2, :cond_c

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_c

    return-object v6

    :cond_c
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_a
    sub-int/2addr v0, p0

    goto :goto_b

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v4

    goto :goto_a

    :goto_b
    invoke-static {p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;)Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->d(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object p0

    const-string p1, "."

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->p(Lkotlin/sequences/Sequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
