.class public abstract Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;)Lkotlin/Pair;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/Pair;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/Pair;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->b:Ljava/lang/String;

    if-nez p0, :cond_2

    move-object p0, v1

    :cond_2
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lokhttp3/Request;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "slas_access_token"

    invoke-virtual {p1, p0, p2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, "sfid_access_token"

    invoke-virtual {p1, p0, p3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0
.end method
