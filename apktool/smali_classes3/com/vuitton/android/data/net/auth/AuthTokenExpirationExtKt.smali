.class public abstract Lcom/vuitton/android/data/net/auth/AuthTokenExpirationExtKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;J)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->f:Lkotlinx/datetime/Instant;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v3

    cmp-long p0, v3, p1

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->d:Lkotlinx/datetime/Instant;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v3

    cmp-long p0, v3, p1

    if-gtz p0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-nez p1, :cond_5

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lv40;->g()V

    :cond_5
    :goto_0
    return v2
.end method
