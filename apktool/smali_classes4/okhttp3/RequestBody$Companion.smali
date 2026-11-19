.class public final Lokhttp3/RequestBody$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/RequestBody$Companion;",
        "",
        "Lokhttp3/RequestBody;",
        "EMPTY",
        "Lokhttp3/RequestBody;",
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

.method public static a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p2

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    int-to-long v5, p0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/_UtilCommonKt;->a(JJJ)V

    new-instance v0, Lokhttp3/RequestBody$Companion$toRequestBody$3;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RequestBody$Companion$toRequestBody$3;-><init>(ILokhttp3/MediaType;[B)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokhttp3/internal/Internal;->a(Lokhttp3/MediaType;)Lkotlin/Pair;

    move-result-object p1

    iget-object v0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/charset/Charset;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Lokhttp3/MediaType;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    invoke-static {v0, p1, p0}, Lokhttp3/RequestBody$Companion;->a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p0

    return-object p0
.end method
