.class public final Lcom/vuitton/android/data/datasource/pass/MultipartParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/pass/MultipartParser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/pass/MultipartParser;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/pass/MultipartParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/pass/MultipartParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->a:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method

.method public static a(I[B[B)I
    .locals 2

    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_1

    :goto_0
    array-length v1, p2

    add-int/2addr v1, p0

    invoke-static {p1, p0, v1}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    if-eq p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static b([B[B)Lkotlin/collections/builders/ListBuilder;
    .locals 4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p0, p1}, Lcom/vuitton/android/data/datasource/pass/MultipartParser;->a(I[B[B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static {p0, v1, v2}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    array-length v1, p1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    array-length p1, p0

    invoke-static {p0, v1, p1}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method
